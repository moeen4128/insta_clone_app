import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../core/utils/app_assets.dart';
import '../../../core/utils/custom_button_mixin.dart';
import '../../../core/utils/custom_textfield_mixin.dart';
import '../../../viewmodels/providers/auth_provider.dart';
import '../../widgets/social_button.dart';

class LoginScreen extends StatelessWidget
    with CustomTextFieldMixin, CustomButtonMixin {
  const LoginScreen({super.key});
  @override

  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(
      builder: (BuildContext context, AuthProvider authProvider, Widget? child) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 60,
                  ),
                  Center(
                    child: Text(authProvider.isLogin ?
                    "Instagram" : "Insta",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 50,
                        fontFamily: 'Pacifico',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  buildTextField(
                      hintText: 'Email',
                      controller: authProvider.emailController,
                      keyboardType: TextInputType.emailAddress),
                  const SizedBox(
                    height: 20,
                  ),
                  authProvider.isLogin ?
                  const SizedBox(
                  ) : buildTextField(
                      hintText: 'Username',
                      controller: authProvider.userNameController,
                      keyboardType: TextInputType.text),
                  const SizedBox(
                    height: 20,
                  ),
                  buildTextField(
                    hintText: 'Password',
                    keyboardType: TextInputType.text,
                    controller: authProvider.isLogin?authProvider.loginPasswordController:authProvider.signupPasswordController,
                    obscureText: authProvider.isLogin? !authProvider.isPasswordVisible:!authProvider.isSignupPasswordVisible,
                    suffixIcon: authProvider.isLogin? authProvider.isPasswordVisible?Icons.visibility_off :Icons.visibility:authProvider.isSignupPasswordVisible?Icons.visibility_off :Icons.visibility,
                    onSuffixTap: () {
                     authProvider.isLogin? authProvider.toggleLoginPasswordVisibility():authProvider.toggleSignupPasswordVisibility();
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  authProvider.isLogin ? const SizedBox() : buildTextField(
                      hintText: 'Confirm Password',
                      obscureText: !authProvider.isConfirmPasswordVisible,
                      suffixIcon: authProvider.isConfirmPasswordVisible?Icons.visibility_off :Icons.visibility,
                      onSuffixTap: () {
                        authProvider.toggleConfirmPasswordVisibility();
                      },
                      controller: authProvider.confirmPasswordController,
                      keyboardType: TextInputType.text),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: buildElevatedButton(
                      text:   authProvider.isLogin ? "Login" : "Sign up",
                      onPressed: () {
                        // Add your onPressed logic here
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  authProvider.isLogin ? InkWell(
                    onTap: () {},
                    child: Text(
                      'Forget Password?',
                      style: TextStyle(color: Colors.black38, fontSize: 18),
                    ),
                  ) : const SizedBox(),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    children: [
                      Expanded(
                        child: Divider(
                          height: 2,
                          color: Colors.grey,
                          thickness: 1,
                          indent: 0,
                          endIndent: 10,
                        ),
                      ),
                      Text(
                        'OR',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          height: 2,
                          color: Colors.grey,
                          thickness: 1,
                          indent: 10,
                          endIndent: 0,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialButton(
                        imagePath: AppAssets.facebookIcon,
                        onPressed: () {
                          // Facebook button logic
                        },
                      ),
                      const SizedBox(width: 26),
                      SocialButton(
                        imagePath: AppAssets.gooleIcon,
                        onPressed: () {
                          // Google button logic
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    authProvider.isLogin
                        ? "Don't have an account?"
                        : "Already have an account?",
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      authProvider.toggleAuthMode();
                    },
                    child: Text(
                      authProvider.isLogin ? "Sign up" : "Login",
                      style: TextStyle(color: Colors.blue, fontSize: 24),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }
    );
  }
}
