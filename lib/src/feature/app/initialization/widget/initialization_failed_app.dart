import 'package:flutter/material.dart';

class InitializationFailedApp extends StatelessWidget {
  const InitializationFailedApp({required this.retryInitialization, super.key});
  final Future<void> Function() retryInitialization;
  @override
  Widget build(BuildContext context) => MaterialApp(
    home: Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Не удалось запустить Breeze'),
            FilledButton(
              onPressed: () async {
                await retryInitialization();
              },
              child: const Text('Повторить'),
            ),
          ],
        ),
      ),
    ),
  );
}
