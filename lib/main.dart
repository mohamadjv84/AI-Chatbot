import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_3/screen/splash.screen.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  

  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}