import 'package:awesome_flutter_extensions/awesome_flutter_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify/core/config/assets/app_images.dart';
import 'package:spotify/core/config/assets/app_vectors.dart';
import 'package:spotify/core/config/theme/app_colors.dart';
import 'package:spotify/core/config/theme/currentTheme.dart';
import 'package:spotify/presentation/auth/pages/signup_or_sign_in_page/sign_in_page.dart';

import 'signup_page.dart';

class SignupOrSignInPage extends StatefulWidget {
  const SignupOrSignInPage({super.key});

  @override
  State<SignupOrSignInPage> createState() => _SignupOrSignInPageState();
}

class _SignupOrSignInPageState extends State<SignupOrSignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(
              AppVectors.topPattern,
              colorFilter: isDarkMode(context)
                  ? null
                  : const ColorFilter.mode(Colors.black, BlendMode.srcIn),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset(
              AppVectors.bottomPattern,
              colorFilter: isDarkMode(context)
                  ? null
                  : const ColorFilter.mode(Colors.black, BlendMode.srcIn),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(AppImages.authBg),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(AppVectors.logo),
                    const Text('Enjoy Listening Music ',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 26)),
                    Text(
                      'Spotify is a proprietary Swedish audio\n streaming and media services provider',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                          color: isDarkMode(context) ? AppColors.grey : null),
                      textAlign: TextAlign.center,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: ElevatedButton(
                                onPressed: () {
                                  context.isLightMode;
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const SignupPage()));
                                },
                                child: const Text('Register'))),
                        SizedBox(
                          height: 30,
                        ),
                        Expanded(
                            child: TextButton(
                                onPressed: () {
                                  context.navigator.pushMaterial(SignInPage());
                                },
                                child: Text(
                                  'Sign in',
                                  style: context.textStyles.headlineSmall
                                      .copyWith(fontWeight: FontWeight.bold),
                                )))
                      ],
                    )
                  ].separatedBy(SizedBox(
                    height: 30,
                  ))),
            ),
          ),
        ],
      ),
    );
  }
}
