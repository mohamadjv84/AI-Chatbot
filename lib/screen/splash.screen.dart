import 'package:flutter/material.dart';
import 'package:flutter_application_3/helper/global.dart';
import 'package:flutter_application_3/screen/home_screen.dart';
import 'package:flutter_application_3/screen/onboarding_screen.dart';
import 'package:flutter_application_3/widget/custom_loading.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (_) =>
               const onboarding_screen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            Spacer(),
            Card(
              color: Colors.blue,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(18),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(6),
                child: Image.asset(
                  'assets/images/ai.png',
                  width: 200,
                  height: 200,
                ),
              ),
            ),

            Spacer(),

            //
            CustomLoading(),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
