import 'package:flutter/material.dart';
import 'package:travel_insurance_form/constants/enum.dart';

class IField extends StatelessWidget {
  const IField({
    required this.controller,
    required this.fieldType,
    this.labelText, // Add label property

    this.filled = false,
    this.obsucreText = false,
    this.readOnly = false,
    super.key,
    this.validator,
    this.fillColour,
    this.suffixIcon,
    this.hintStyle,
    this.keyboardType,
    this.hintText,
    this.overrideValidator = false,
  });

  final String? Function(String?)? validator;
  final TextEditingController controller;
  final bool filled;
  final Color? fillColour;
  final FieldType fieldType;

  final bool obsucreText;
  final bool readOnly;
  final Widget? suffixIcon;
  final String? hintText;
  final TextInputType? keyboardType;
  final bool overrideValidator;
  final TextStyle? hintStyle;
  final String? labelText; // Change from 'label' to 'labelText'

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (labelText != null) // Show label if labelText is provided
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: Text(
              labelText!,
              style: TextStyle(
                // fontWeight: FontWeight.bold,
                color: Theme.of(context).textTheme.bodyText1!.color,
                fontSize: 11
              ),
            ),
          ),
        SizedBox(
          height: 5,
        ),
        Container(
          // height: 50,
          child: TextFormField(
            controller: controller,
            validator: overrideValidator
                ? validator
                : (value) {
                    if (value == null || value.isEmpty) {
                      return '*';
                   
                    }
              
                    return validator?.call(value);
                  },
            onTapOutside: (_) {
              FocusScope.of(context).unfocus();
            },
            keyboardType: keyboardType,
            obscureText: obsucreText,
            readOnly: readOnly,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(3),
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(3),
                  borderSide: const BorderSide(color: Colors.black)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(3),
                  borderSide: BorderSide(
                    color: Theme.of(context).primaryColor,
                  )),
              // contentPadding: const EdgeInsets.symmetric(horizontal: 10),
              filled: filled,
              fillColor: fillColour,
              suffixIcon: suffixIcon,
              hintText: hintText,
              // errorText:  validator != null ? validator!(controller.text) : null,
              hintStyle: hintStyle ??
                  const TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                  ),
                        // errorText: controller.text.isEmpty ? '*' : null,

            ),
            style: const TextStyle(fontSize: 11),
            
          ),
        ),
      ],
    );
  }
}

bool _containsSpecialCharacter(String value) {
  // Define special characters
  const specialCharacters = r'!@#$%^&*()-_=+';

  // Check if value contains any special characters
  for (var char in value.split('')) {
    if (specialCharacters.contains(char)) {
      return true;
    }
  }
  return false;
}
