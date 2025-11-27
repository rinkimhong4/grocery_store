import 'package:flutter/material.dart';
import 'package:grocery_store/configs/theme/theme_style.dart';

class SavePassword extends StatefulWidget {
  const SavePassword({super.key});

  @override
  State<SavePassword> createState() => _SavePasswordState();
}

class _SavePasswordState extends State<SavePassword> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isChecked = !_isChecked;
        });
      },
      child: Row(
        children: [
          Checkbox(
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            checkColor: Colors.white,
            activeColor: AppColors.primaryDark,
            value: _isChecked,
            onChanged: (value) {
              setState(() {
                _isChecked = value ?? false;
              });
            },
          ),
          Text(
            'Save Password',
            style: AppTextStyle.regular12(color: Colors.black45),
          ),
          //
          Spacer(),
          TextButton(
            onPressed: () {},
            child: Text(
              'Forgot Password?',
              style: AppTextStyle.regular12(color: AppColors.primaryDark),
            ),
          ),
        ],
      ),
    );
  }
}
