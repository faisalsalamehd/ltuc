import 'package:flutter/material.dart';
import 'package:ltuc/core/router/routes_string.dart';
import 'package:ltuc/core/translations/translation_key.dart';
import 'package:ltuc/core/utils/constants/generals.dart';
import 'package:ltuc/core/utils/constants/images.dart';
import 'package:ltuc/presentation/widgets/primary_button/primary_button.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration:  BoxDecoration(
          image: DecorationImage(
            image: AssetImage(JpgImages.burger),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: Container(color: Colors.black.withValues(alpha: 0.5)),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 32),
                  // IconButton(
                  //   icon: Icon(Icons.language, color: Colors.white),
                  //   onPressed: () {
                  //     showModalBottomSheet(
                  //       context: context,
                  //       builder: (context) => const ChangeLanguage(),
                  //     );
                  //   },
                  // ),
                  Row(
                    children: [
                      Image.asset(PngImages.nomLogo, width: 55),
                      SizedBox(width: 8),
                      Text(
                        tr(TranslationKey.restaurant),
                        style: TextStyle(
                          fontSize: 32,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Delicious food delivered to your door',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  SizedBox(height: 16),
                  PrimaryButton(
                    onTap: () {
                      Navigator.pushNamed(context, RoutesString.login);
                    },
                    title: 'Sign In',
                    backgroundColor: Colors.white,
                    color: Colors.black,
                  ),
                  SizedBox(height: 16),
                  PrimaryButton(
                    backgroundColor: Colors.white,
                    color: Colors.black,
                    onTap: () {
                      Navigator.pushNamed(context, RoutesString.register);
                    },
                    title: 'Sign Up',
                  ),
                  SizedBox(height: 48),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
