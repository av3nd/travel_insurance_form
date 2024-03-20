import 'package:flutter/material.dart';

class IDropdownField<T> extends StatelessWidget {
  const IDropdownField({
    required this.value,
    required this.onChanged,
    required this.items,
    this.labelText,
    this.borderRadius = 2.0,
    this.fillColor,
    this.hintText,
    this.hintStyle,
    this.labelStyle,
    this.disabledHint,
    this.itemTextStyle,
    this.dropdownIcon,
  });

  final T value;
  final ValueChanged<T?> onChanged;
  final List<DropdownMenuItem<T>> items;
  final String? labelText;
  final double borderRadius;
  final Color? fillColor;
  final String? hintText;
  final TextStyle? hintStyle;
  final TextStyle? labelStyle;
  final String? disabledHint;
  final TextStyle? itemTextStyle;
  final Icon? dropdownIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (labelText != null)
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: Text(
              labelText!,
              style: labelStyle ?? TextStyle(color: Colors.black, fontSize: 11),
            ),
          ),
        SizedBox(height: 5),
        Container(
          // height: 50,
          child: DropdownButtonFormField<T>(
            value: value,
            onChanged: onChanged,
            items: items,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius),
                borderSide: BorderSide(color: Colors.black),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius),
                borderSide: BorderSide(
                  color: Theme.of(context).primaryColor,
                ),
              ),
              filled: true,
              fillColor: fillColor,
              hintText: hintText,
              hintStyle: hintStyle ?? TextStyle(fontSize: 11),
              suffixIcon: dropdownIcon,
            ),
            style: itemTextStyle,
            validator: (value) {
              if (value == null || value == hintText) {
                return 'Please select an item'; // Return error message
              }
              return null; // Return null if value is valid
            },
            selectedItemBuilder: (BuildContext context) {
              return items.map<Widget>((DropdownMenuItem<T> item) {
                return MouseRegion(
                  onHover: (event) {
                    item = DropdownMenuItem<T>(
                      value: item.value,
                      child: Container(
                        color: Colors.blue,
                        child: item.child,
                      ),
                    );
                  },
                  child: item,
                );
              }).toList();
            },
          ),
        ),
      ],
    );
  }
}
