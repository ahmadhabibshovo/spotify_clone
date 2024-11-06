import 'package:awesome_flutter_extensions/awesome_flutter_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/core/config/theme/app_colors.dart';
import 'package:spotify/presentation/auth/pages/signup_or_sign_in_page/sign_in_page.dart';

import '../../../../core/config/assets/app_vectors.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: SvgPicture.asset(
          AppVectors.logo,
          height: 40,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _registerText(),
            SizedBox(
              height: 30,
            ),
            _fullNameTextField(),
            _emailTextField(),
            _passwordTextField(),
            ElevatedButton(onPressed: () {}, child: Text('Create Account')),
            _signInText()
          ].separatedBy(SizedBox(
            height: 15,
          )),
        ),
      ),
    );
  }

  TextFormField _emailTextField() {
    return TextFormField(
      decoration: InputDecoration(hintText: 'Enter Email'),
    );
  }

  Widget _fullNameTextField() {
    return TextFormField(
      decoration: InputDecoration(hintText: 'Full Name'),
    );
  }

  Widget _passwordTextField() {
    return TextFormField(
      decoration: InputDecoration(hintText: 'Password'),
    );
  }

  Widget _registerText() {
    return const Text(
      'Register',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
      textAlign: TextAlign.center,
    );
  }

  Widget _signInText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Do you have an account? ',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
        TextButton(
            onPressed: () {
              context.navigator.pushMaterial(SignInPage());
            },
            child: Text(
              'Sign In',
              style: TextStyle(
                  color: AppColors.primary, fontWeight: FontWeight.w600),
            ))
      ],
    );
  }
}
