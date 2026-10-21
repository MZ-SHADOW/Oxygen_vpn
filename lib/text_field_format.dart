import 'package:flutter/material.dart';

class TextFieldFormat extends StatelessWidget {
  const TextFieldFormat({
    super.key,
    required FocusNode usernameFocusNode,
    required this.context,
    required FocusNode passwordFocusNode,
    required this.controller,
    required this.hintText,
    required this.iconPath,
    required this.focusNode,
    required this.textInputAction,
  })  : _usernameFocusNode = usernameFocusNode,
        _passwordFocusNode = passwordFocusNode;
  final FocusNode _usernameFocusNode;
  final BuildContext context;
  final FocusNode _passwordFocusNode;
  final TextEditingController controller;
  final String hintText;
  final String iconPath;
  final FocusNode focusNode;
  final TextInputAction textInputAction;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: controller,
            focusNode: focusNode,
            textAlign: TextAlign.right,
            textDirection: TextDirection.rtl,
            style: const TextStyle(
                color: Colors.white,
                fontFamily: 'Estedad',
                fontWeight: FontWeight.w500),
            cursorColor: Colors.white,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white.withOpacity(0.3),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(color: Colors.white, width: 1),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(color: Colors.white, width: 1),
              ),
              hintText: hintText,
              hintStyle: const TextStyle(color: Colors.white70),
            ),
            textInputAction: textInputAction,
            onSubmitted: (_) {
              if (focusNode == _usernameFocusNode) {
                FocusScope.of(context).requestFocus(_passwordFocusNode);
              }
            },
          ),
        ),
        const SizedBox(width: 10),
        Image.asset(iconPath, height: 30, width: 30),
      ],
    );
  }
}
