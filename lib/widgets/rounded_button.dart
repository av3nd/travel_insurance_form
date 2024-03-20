import 'package:flutter/material.dart';

class RoundedButton extends StatefulWidget {
  const RoundedButton({
    required this.label,
    required this.onPressed,
    this.buttonColor,
    this.labelColor,
    this.borderColor,
    this.borderWidth = 2.0, // Default border width
  });

  final String label;
  final VoidCallback onPressed;
  final Color? buttonColor;
  final Color? labelColor;
  final Color? borderColor;
  final double borderWidth;

  @override
  _RoundedButtonState createState() => _RoundedButtonState();
}

class _RoundedButtonState extends State<RoundedButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(1.0),
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              'Passport Image',
              style: TextStyle(
                // fontWeight: FontWeight.bold,
                color: Theme.of(context).textTheme.bodyText1!.color,
                fontSize: 11,
              ),
            ),
          ),
        ),
        Container(
          // height: 44,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              minimumSize: const Size(double.maxFinite, 58),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3.0), // Adjust the value as needed
                side: BorderSide(
                  color: _isPressed ? Colors.black : Colors.red, // Change border color based on press state
                  // width: widget.borderWidth,
                ),
              ),
            ),
            onPressed: () {
              setState(() {
                _isPressed = true;
              });
              widget.onPressed();
            },
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.upload_file_outlined),
                  Text(
                    widget.label,
                    style: TextStyle(fontSize: 11),
                  ),
                ],
              ),
            ),
          ),
        ),
        if (!_isPressed)
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              'Image is Mandatory',
              style: TextStyle(color: Colors.red,fontSize: 11), // Change color as needed
            ),
          ),
      ],
    );
  }
}
