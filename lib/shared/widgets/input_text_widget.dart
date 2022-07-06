import 'package:flutter/material.dart';
import '../themes/app_colors.dart';
import '../themes/app_text_styles.dart';

Widget inputText(String title, TextEditingController _controller,{bool password = false, bool numericInput = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 26.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title + ":",
            style: AppTextStyles.loginTitleField,
          ),
          TextField(
            style: AppTextStyles.loginInputField,
            keyboardType: numericInput ? TextInputType.number : TextInputType.text,
            controller: _controller,
            obscureText: password,
            decoration: InputDecoration(
              focusColor: AppColors.primary,
              enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColors.primary),
                   ),  
              ),
            
          )
        ],
      ),
    );
  }