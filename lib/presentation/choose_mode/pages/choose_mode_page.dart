import 'package:awesome_flutter_extensions/awesome_flutter_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/presentation/auth/pages/signup_or_sign_in_page/signup_or_sign_in_page.dart';
import 'package:spotify/presentation/choose_mode/bloc/theme_cubit.dart';
import 'package:spotify/presentation/choose_mode/widgets/labeled_icon_button.dart';

import '../../../core/config/assets/app_images.dart';
import '../../../core/config/assets/app_vectors.dart';

class ChooseModePage extends StatefulWidget {
  const ChooseModePage({super.key});

  @override
  State<ChooseModePage> createState() => _ChooseModePageState();
}

class _ChooseModePageState extends State<ChooseModePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AppImages.chooseModeBg),
              ),
            ),
          ),
          Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: SvgPicture.asset(AppVectors.logo),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      children: [
                        const Text(
                          'Choose Mode',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            LabeledIconButton(
                              onTap: () {
                                context
                                    .read<ThemeCubit>()
                                    .changeThemeMode(ThemeMode.light);
                              },
                              label: 'Light Mode',
                              iconPath: AppVectors.sun,
                            ),
                            SizedBox(
                              width: 40,
                            ),
                            LabeledIconButton(
                              onTap: () {
                                context
                                    .read<ThemeCubit>()
                                    .changeThemeMode(ThemeMode.dark);
                              },
                              label: 'Dark Mode',
                              iconPath: AppVectors.moon,
                            ),
                          ],
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                fixedSize:
                                    const Size.fromWidth(double.maxFinite)),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          SignupOrSignInPage()));
                            },
                            child: const Padding(
                              padding: EdgeInsets.all(32.0),
                              child: Text(
                                'Continue',
                                style: TextStyle(color: Colors.white),
                              ),
                            )),
                      ].separatedBy(const SizedBox(
                        height: 80,
                      )),
                    ),
                  )
                ]),
          )
        ],
      ),
    );
  }
}
