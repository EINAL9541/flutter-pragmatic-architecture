import 'package:flutter_pragmatic_architecture/core/storage/storage_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pragmatic_architecture/my_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final storageService = StorageService();
  await storageService.init();

  runApp(const ProviderScope(child: MyApp()));
}
