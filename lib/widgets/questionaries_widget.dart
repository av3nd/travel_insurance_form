import 'package:flutter/material.dart';

class QuestionariesWidget extends StatefulWidget {
  const QuestionariesWidget({super.key});

  @override
  State<QuestionariesWidget> createState() => _QuestionariesWidgetState();
}

List<String> options = ['Option 1', 'Option 2'];

class _QuestionariesWidgetState extends State<QuestionariesWidget> {
  String currentOption = options[0];
  String currentOption2 = options[0];

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      width: MediaQuery.sizeOf(context).width * 0.8,
      height: MediaQuery.sizeOf(context).width * 0.84,
                decoration: BoxDecoration(border: Border.all(color: Colors.black45)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const Row(
              children: [
                Icon(Icons.question_mark_rounded),
                SizedBox(width: 5),
                Text(
                  'Questionaries',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const Text(
                    "1. Do you have any pre-existing medical issues or is currently taking medications?                                       ",
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Radio(
                        value: options[0],
                        groupValue: currentOption,
                        onChanged: (value) {
                          setState(() {
                            currentOption = value.toString();
                          });
                        },
                      ),
                      const Text(
                        'Yes',
                        style: TextStyle(fontSize: 11),
                      ),
                      Radio(
                        value: options[1],
                        groupValue: currentOption,
                        onChanged: (value) {
                          setState(() {
                            currentOption = value.toString();
                          });
                        },
                      ),
                      const Text(
                        'No',
                        style: TextStyle(fontSize: 11),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Divider(
              color: Colors.black,
              thickness: 0.5,
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const Text(
                    "2. This policy does not provide coverage for pre-existing illness or any conditions that result from pre-existing diseases. It covers only personal accident and emergency medical expenses. Please click \"YES\" to confirm your understanding of this exclusion.",
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Radio(
                        value: options[0],
                        groupValue: currentOption2,
                        onChanged: (value) {
                          setState(() {
                            currentOption2 = value.toString();
                          });
                        },
                      ),
                      const Text(
                        'Yes',
                        style: TextStyle(fontSize: 11),
                      ),
                      Radio(
                        value: options[1],
                        groupValue: currentOption2,
                        onChanged: (value) {
                          setState(() {
                            currentOption2 = value.toString();
                          });
                        },
                      ),
                      const Text(
                        'No',
                        style: TextStyle(fontSize: 11),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
