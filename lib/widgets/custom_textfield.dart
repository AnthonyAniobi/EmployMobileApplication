import 'package:employ/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class CField {
  static Widget text(
      {required String hint,
      required IconData icon,
      required TextEditingController controller,
      Function(String)? onSubmit}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 2, color: CColor.grey),
      ),
      child: TextField(
        controller: controller,
        onSubmitted: (String entry) {
          if (onSubmit != null) {
            onSubmit(entry);
          }
        },
        style: const TextStyle(
          color: CColor.black,
          fontSize: 18,
          fontFamily: 'Lato',
        ),
        decoration: InputDecoration(
            hintText: hint, suffixIcon: Icon(icon), border: InputBorder.none),
      ),
    );
  }

  static Widget email(
      {required TextEditingController controller, Function(String)? onSubmit}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 2, color: CColor.grey),
      ),
      child: Row(
        children: [
          const SizedBox(width: 30),
          const Icon(Icons.mail_outline),
          const SizedBox(width: 10),
          Expanded(
            child: TextField(
              controller: controller,
              onSubmitted: (String entry) {
                if (onSubmit != null) {
                  onSubmit(entry);
                }
              },
              style: const TextStyle(
                color: CColor.black,
                fontSize: 18,
                fontFamily: 'Lato',
              ),
              decoration: const InputDecoration(
                  hintText: 'Enter email adress', border: InputBorder.none),
            ),
          ),
        ],
      ),
    );
  }

  static Widget password(
      {required TextEditingController controller, Function(String)? onSubmit}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 2, color: CColor.grey),
      ),
      child: TextField(
        controller: controller,
        obscureText: true,
        onSubmitted: (String entry) {
          if (onSubmit != null) {
            onSubmit(entry);
          }
        },
        style: const TextStyle(
          color: CColor.black,
          fontSize: 18,
          fontFamily: 'Lato',
        ),
        decoration: const InputDecoration(
            hintText: 'password',
            border: InputBorder.none,
            suffixIcon: Icon(Icons.visibility_off)),
      ),
    );
  }
}
