import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_store/configs/theme/theme_style.dart';
import 'package:grocery_store/views/widgets/build_button_social.dart';
import 'package:grocery_store/views/widgets/build_signup_button_widget.dart';
import 'package:grocery_store/views/widgets/text_form_field_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(left: 12, right: 12),
          child: _buildBody(context),
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [_buildAppBar(context), _buildBodyContents(context)],
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leadingWidth: 60,
      leading: InkWell(
        borderRadius: BorderRadius.circular(50),
        onTap: () => Navigator.of(context).pop(),
        child: Container(
          height: 44,
          width: 44,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            shape: BoxShape.circle,
          ),
          child: Icon(Icons.arrow_back_ios_new, color: Colors.black, size: 20),
        ),
      ),
    );
  }

  Widget _buildBodyContents(BuildContext context) => Column(
    children: [
      SizedBox(height: 30),
      _buildHeader,
      SizedBox(height: 30),
      TextFormFieldWidget(
        prefixIcon: CupertinoIcons.mail,
        hintText: "Email Address",
        controller: TextEditingController(),
        keyboardType: TextInputType.emailAddress,
        obscureText: false,
      ),
      SizedBox(height: 20),
      TextFormFieldWidget(
        prefixIcon: CupertinoIcons.lock,
        hintText: "Password",
        controller: TextEditingController(),
        keyboardType: TextInputType.emailAddress,
        obscureText: true,
      ),
      SizedBox(height: 20),
      TextFormFieldWidget(
        prefixIcon: CupertinoIcons.lock,
        hintText: "Confirm Password",
        controller: TextEditingController(),
        keyboardType: TextInputType.emailAddress,
        obscureText: true,
      ),
      BuildSignupButtonWidget(
        title: 'Sign Up',
        onPressed: () {
          // Sign up action
          // print('Sign Up button pressed');
        },
      ),
      _buildButtonSocial,

      //
      SizedBox(height: 30),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Already have an account?',
            style: AppTextStyle.regular14(color: Colors.black),
          ),
          TextButton(
            onPressed: () {
              // print('Login button pressed');
            },
            child: Text(
              'Login',
              style: AppTextStyle.bold14(color: AppColors.primaryDark),
            ),
          ),
        ],
      ),
    ],
  );

  get _buildHeader => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Create Account',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
      ),
      SizedBox(height: 12),
      Text(
        'Sign up with your email and password to continue',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Colors.grey,
        ),
      ),
    ],
  );

  get _buildButtonSocial {
    return Column(
      children: [
        SizedBox(height: 20),
        Text(
          'Or continue with',
          style: AppTextStyle.regular12(color: Colors.black),
        ),
        BuildButtonSocial(
          title: 'Continue with Google',
          icon: CupertinoIcons.mail,
          onPressed: () {
            // Google sign up action
            // print('Google sign up button pressed');
          },
        ),
        BuildButtonSocial(
          title: 'Continue with Facebook',
          icon: Icons.facebook_outlined,
          onPressed: () {
            // Facebook sign up action
            // print('Facebook sign up button pressed');
          },
        ),
      ],
    );
  }
}
