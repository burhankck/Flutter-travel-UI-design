import 'package:flutter/material.dart';
import 'package:travel_app/assets_path.dart';
import 'package:travel_app/text_path.dart';

import 'bottom_nav_bar.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
          
          body: Stack(
            children: [
              _imageLogin(size),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: _splashTitle(size),
                  ),
                  const SizedBox(height: 100),
                  Expanded(
                    child: Container(
                      width: size.width,
                      height: size.height * 0.6,
                      decoration: _decerationLogin(),
                      child: Column(
                        children: [
                          const SizedBox(height: 20),
                          _card(size, context),
                          const SizedBox(height: 10),
                          _Buttons(context)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }

  BoxDecoration _decerationLogin() {
    return const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),
        ));
  }

  Widget _card(Size size, BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (_) => const ButtomNavBar()),
            (route) => false);
      },
      child: Card(
        shape: const StadiumBorder(),
        elevation: 5,
        color: Colors.black,
        child: SizedBox(
          height: 60,
          width: size.width * 0.8,
          child: Center(
            child: Wrap(
              spacing: 10,
              children: [
                Text(
                  TextConstants.LetsStartedText,
                  style: Theme.of(context).textTheme.headline6,
                ),
                const Spacer(),
                Icon(
                  Icons.arrow_forward,
                  color: Theme.of(context).colorScheme.onPrimary,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row _Buttons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(TextConstants.alreadyHaveText,
            style: Theme.of(context)
                .textTheme
                .subtitle1
                ?.copyWith(color: Colors.black)),
        TextButton(
            onPressed: () {},
            child: Text(
              TextConstants.LoginText,
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  ?.copyWith(color: Colors.blue),
            )),
      ],
    );
  }

  Column _splashTitle(Size size) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Skipwidget(),
        const SizedBox(height: 80),
        Text(
          TextConstants().SplashTitleText,
          style: const TextStyle(fontSize: 80),
        ),
        const SizedBox(height: 60),
        Container(
            constraints: BoxConstraints(maxWidth: size.width * 0.6),
            child: const Text(
              TextConstants.SplashSubtitleText,
            )),
      ],
    );
  }

  Image _imageLogin(Size size) {
    return Image.asset(
      AssetsPathCounstans.loginAssets,
      height: size.height,
      width: size.width,
      fit: BoxFit.cover,
    );
  }
}

class Skipwidget extends StatelessWidget {
  const Skipwidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(10)),
        child: Text(
          TextConstants().skipButtonText,
        ),
      ),
    );
  }
}
