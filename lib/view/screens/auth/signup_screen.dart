import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/custom_button_mixin.dart';
import '../../../core/utils/custom_textfield_mixin.dart';

class SignupScreen extends StatelessWidget with CustomTextFieldMixin, CustomButtonMixin{
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
              const Center(
                child: Text(
                  "Insta",
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
                  // controller: passwordController,
                  keyboardType: TextInputType.emailAddress),
              const SizedBox(
                height: 20,
              ),
              buildTextField(
                  hintText: 'Username',
                  // controller: passwordController,
                  keyboardType: TextInputType.emailAddress),
              const SizedBox(
                height: 20,
              ),
              buildTextField(
                  hintText: 'Password',
                  suffixIcon: Icons.remove_red_eye,
                  // controller: passwordController,
                  keyboardType: TextInputType.emailAddress),
              const SizedBox(
                height: 20,
              ),
              buildTextField(
                  hintText: 'Confirm Password',
                  // controller: passwordController,
                  keyboardType: TextInputType.emailAddress),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: buildElevatedButton(
                  text: "Sign up",
                  onPressed: () {
                    // Add your onPressed logic here
                  },
                ),
              ),
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
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: IconButton(
                      onPressed: (){},
                      icon: const Image(
                        height: 24,
                        width: 24,
                        image: AssetImage(
                            "assets/icons/facebook-icon.png"
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 26,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: IconButton(
                      onPressed: (){
                      },
                      icon: const Image(
                        height: 24,
                        width: 24,
                        image: AssetImage(
                            "assets/icons/google.png"
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("Don't have an account?",style: TextStyle(
                  color: Colors.grey
              ),),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                },
                child: const Text("Sign Up",style: TextStyle(color: Colors.blue,fontSize: 24),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
