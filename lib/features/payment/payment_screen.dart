import 'package:flutter_pragmatic_architecture/core/utils/payment_attempt_generator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../core/extensions/safe_call.dart';
import 'client/input/confirm_transaction_payload.dart';
import 'client/input/validate_pin_payload.dart';
import 'client/payment_client.dart';

class PaymentScreen extends HookWidget {
  const PaymentScreen({super.key, required this.orderId});

  final String orderId;

  @override
  Widget build(BuildContext context) {
    final pinController = useTextEditingController();
    final attemptId = useMemoized(PaymentAttemptGenerator.create);
    final paymentClient = PaymentClient.instance;
    final paymentMessage = useState<String?>(null);

    Future<void> onPay() async {
      if (pinController.text.isEmpty) return;

      final payment = await context.safeCall(
        action: () async {
          final pinResult = await paymentClient.validatePin(
            ValidatePinPayload(pin: pinController.text, orderId: orderId),
          );

          return paymentClient.confirmTransaction(
            ConfirmTransactionPayload(
              orderId: orderId,
              authorizationToken: pinResult.authorizationToken,
              idempotencyKey: attemptId,
            ),
          );
        },
      );

      if (payment != null) {
        pinController.clear();
        paymentMessage.value = 'Transaction: ${payment.transactionId}';
        if (context.mounted) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text('Payment ${payment.status}.')));
        }
      }
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Confirm payment')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Order: $orderId'),
            const SizedBox(height: 16),
            TextField(
              controller: pinController,
              keyboardType: TextInputType.number,
              obscureText: true,
              maxLength: 6,
              decoration: const InputDecoration(
                labelText: 'PIN',
                border: OutlineInputBorder(),
              ),
            ),
            if (paymentMessage.value != null) ...[
              const SizedBox(height: 12),
              Text(paymentMessage.value!),
            ],
            const Spacer(),
            FilledButton(onPressed: onPay, child: const Text('Pay')),
          ],
        ),
      ),
    );
  }
}
