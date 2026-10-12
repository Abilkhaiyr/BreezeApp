import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences_platform_interface/in_memory_shared_preferences_async.dart';
import 'package:shared_preferences_platform_interface/shared_preferences_async_platform_interface.dart';
import 'package:breeze_app/src/core/constant/config.dart';
import 'package:breeze_app/src/feature/app/initialization/logic/composition_root.dart';
import 'package:breeze_app/src/feature/app/presentation/app.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  setUp(() {
    SharedPreferencesAsyncPlatform.instance =
        InMemorySharedPreferencesAsync.empty();
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(
          const MethodChannel('dev.fluttercommunity.plus/package_info'),
          (_) async => <String, String>{
            'appName': 'Breeze',
            'packageName': 'breeze_app',
            'version': '1.0.0',
            'buildNumber': '1',
          },
        );
  });
  testWidgets('Composed app opens the starter screen', (tester) async {
    final result = await const CompositionRoot(Config()).compose();
    await tester.pumpWidget(App(result: result));
    await tester.pumpAndSettle();
    expect(find.text('Breeze готов к разработке'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
