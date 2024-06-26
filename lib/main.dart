import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:goluu_app/route/app_routes.dart';
import 'package:goluu_app/route/route_name.dart';
import 'package:goluu_app/utils/app_constant.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstant.appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      initialRoute: RoutesName.splashScreen,
      onGenerateRoute: AppRoutes.generateRoute,
    );
  }
}
