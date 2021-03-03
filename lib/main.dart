import 'package:flutter/material.dart';
import 'package:instagram_clone/app/locator.dart';
import 'package:instagram_clone/app/router.gr.dart' as router;
import 'package:stacked_services/stacked_services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      theme: ThemeData(),
      navigatorKey: StackedService.navigatorKey,
      initialRoute: router.Routes.startUpView,
      onGenerateRoute: router.Router().onGenerateRoute,
    );
  }
}
