import 'package:awesome_flutter_extensions/awesome_flutter_extensions.dart';
import 'package:flutter/material.dart';
import 'package:spotify/core/config/theme/app_colors.dart';
import 'package:spotify/presentation/auth/pages/signup_or_sign_in_page/signup_page.dart';

import '../../widgets/basic_app_bar.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _signInText(),
            const SizedBox(
              height: 30,
            ),
            _emailTextField(),
            _passwordTextField(),
            _signInButton(),
            _signupText()
          ].separatedBy(const SizedBox(
            height: 15,
          )),
        ),
      ),
    );
  }

  Widget _signInButton() =>
      ElevatedButton(onPressed: () {}, child: const Text('Sign In'));

  TextFormField _emailTextField() {
    return TextFormField(
      decoration: const InputDecoration(hintText: 'Enter Username or Email'),
    );
  }

  Widget _passwordTextField() {
    return TextFormField(
      decoration: const InputDecoration(hintText: 'Password'),
    );
  }

  Widget _signInText() {
    return const Text(
      'Sign In',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
      textAlign: TextAlign.center,
    );
  }

  Widget _signupText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Not A Member?',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
        TextButton(
            onPressed: () {
              context.navigator.pushMaterial(const SignupPage());
            },
            child: const Text(
              'Sign Up',
              style: TextStyle(
                  color: AppColors.primary, fontWeight: FontWeight.w600),
            ))
      ],
    );
  }
}
