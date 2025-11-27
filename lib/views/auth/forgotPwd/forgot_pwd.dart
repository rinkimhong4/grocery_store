import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_store/views/widgets/build_signup_button_widget.dart';
import 'package:grocery_store/views/widgets/text_form_field_widget.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,

        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildAppBar(context),
              const SizedBox(height: 30),
              _buildHeader,
              const SizedBox(height: 30),
            ],
          ),
        ),

        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(16.0),
          child: BuildSignupButtonWidget(title: 'Next', onPressed: () {}),
        ),
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
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
            size: 20,
          ),
        ),
      ),
    );
  }

  get _buildHeader => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        'Forgot Password',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
      ),
      const SizedBox(height: 12),
      const Text(
        'Enter your email address to reset your password.',
        style: TextStyle(fontSize: 16, color: Colors.grey),
      ),
      const SizedBox(height: 30),
      TextFormFieldWidget(
        prefixIcon: CupertinoIcons.mail,
        hintText: "Email Address",
        controller: TextEditingController(),
        keyboardType: TextInputType.emailAddress,
      ),
    ],
  );
}
