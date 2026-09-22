import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_pragmatic_architecture/core/global/app_setting_provider.dart';
import 'package:flutter_pragmatic_architecture/core/global/auth_info_provider.dart';
import 'package:flutter_pragmatic_architecture/core/router/app_router.dart';
import 'package:flutter_pragmatic_architecture/core/theme/app_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(authInfoProvider);
    ref.watch(appSettingProvider);

    return MaterialApp.router(
      title: 'Pragmatic Flutter Architecture',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      routerConfig: appRouter,
    );
  }
}