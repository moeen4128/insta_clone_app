import 'package:flutter/cupertino.dart';

class AuthProvider with ChangeNotifier{
  bool _isLogin = true;
  bool _isLoginPasswordVisible = false;
  bool _isSignupPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;
  bool get isLogin=> _isLogin;
  bool get isPasswordVisible => _isLoginPasswordVisible;
  bool get isSignupPasswordVisible => _isSignupPasswordVisible;
  bool get isConfirmPasswordVisible => _isConfirmPasswordVisible;
  TextEditingController emailController = TextEditingController();
  TextEditingController loginPasswordController = TextEditingController();
  TextEditingController signupPasswordController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController confirmPasswordController  = TextEditingController();

  void toggleAuthMode(){
    _isLogin =!_isLogin;
    _isLoginPasswordVisible = false;
    _isSignupPasswordVisible = false;
    _isConfirmPasswordVisible = false;

    // Reset input fields
    emailController.clear();
    loginPasswordController.clear();
    signupPasswordController.clear();
    userNameController.clear();
    confirmPasswordController.clear();
    notifyListeners();
  }
  void toggleLoginPasswordVisibility() {
    _isLoginPasswordVisible = !_isLoginPasswordVisible;
    notifyListeners();
  }

  void toggleSignupPasswordVisibility() {
    _isSignupPasswordVisible = !_isSignupPasswordVisible;
    notifyListeners();
  }

  void toggleConfirmPasswordVisibility() {
    _isConfirmPasswordVisible = !_isConfirmPasswordVisible;
    notifyListeners();
  }
  @override
  void dispose() {
    emailController.dispose();
    loginPasswordController.dispose();
    signupPasswordController.dispose();
    userNameController.dispose();
    confirmPasswordController.dispose();
    super.dispose(); // Always call super.dispose() to maintain proper lifecycle
  }
}
