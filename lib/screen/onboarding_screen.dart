import 'package:flutter/material.dart';
import 'package:flutter_application_3/model/onboard.dart';
import 'package:flutter_application_3/screen/home_screen.dart';
import 'package:lottie/lottie.dart';

class onboarding_screen extends StatelessWidget {
  const onboarding_screen({super.key});

  @override
  Widget build(BuildContext context) {
    final c = PageController();

    final list = [
      //onboard1
      onboard(
        title: 'Ask me Anything',
        subtitle:
            'I can be your Best Friend & You can ask me anything & I will help you!',
        lottie: 'ai_ask_me',
      ),
      //onboard2
      onboard(
          title: 'Imagination to Reality',
          subtitle:
              'Just Imagine anything & let me know, I will create something wonderful for you!',
          lottie: 'ai_play')
    ];
    return Scaffold(
        body: PageView.builder(
      controller: c,
      itemCount: list.length,
      itemBuilder: (ctx, ind) {
        final isLast = ind == list.length - 1;
        return Column(
          children: [
            Lottie.asset('assets/lottie/${list[ind].lottie}.json',
                height: 400, width: 400),

            //title
            Text(
              list[ind].title,
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.w900, letterSpacing: .5),
            ),

            SizedBox(
              width: 20,
              height: 7,
            ),

            //subtitle
            Text(
              list[ind].subtitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 17, letterSpacing: .5, color: Colors.black54),
            ),

            Spacer(
              flex: 4,
            ),
            ElevatedButton(
              onPressed: () {
                if (isLast) {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) => HomeScreen()));
                } else {
                  c.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.ease);
                }
              },
              child: Text(isLast ? 'Finish' : 'Next'),
              style: ElevatedButton.styleFrom(
                shape: StadiumBorder(),
                elevation: 0,
                primary: Colors.blue,
                minimumSize: Size(150, 50),
                side: BorderSide(color: Colors.blue),
                textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontStyle: FontStyle.normal),
              ),
            ),
            Spacer()
          ],
        );
      },
    ));
  }
}
