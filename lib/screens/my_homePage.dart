

import 'package:flutter/material.dart';
import 'package:travel_insurance_form/widgets/cost_summary.dart';
import 'package:travel_insurance_form/widgets/insurer_form.dart';
import 'package:travel_insurance_form/widgets/policy_details.dart';
import 'package:travel_insurance_form/widgets/questionaries_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {

  final firstNameController = TextEditingController();
  final middleNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final dateOfBirthController = TextEditingController();
  final emailController = TextEditingController();
  final mobileNumberController = TextEditingController();
  final fatherNameController = TextEditingController();
  final occupationController = TextEditingController();
  final passportController = TextEditingController();
  final passportExpiryController = TextEditingController();
  final municipalityController = TextEditingController();
  final wardController = TextEditingController();
  final streetController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool isChecked = false;

  @override
  void dispose() {
    firstNameController.dispose();
    middleNameController.dispose();
    lastNameController.dispose();
    dateOfBirthController.dispose();
    emailController.dispose();
    mobileNumberController.dispose();
    fatherNameController.dispose();
    occupationController.dispose();
    passportController.dispose();
    passportExpiryController.dispose();
    municipalityController.dispose();
    wardController.dispose();
    streetController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.lightBlue.shade50,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  //  T R A V E L L E R S
                  Container(
                    width: MediaQuery.sizeOf(context).width * 0.9,
                    // height: 800,
                    // color: Colors.green,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        // BoxShadow(
                        //   color: Colors.black,
                        //   offset: Offset(
                        //     -5.0,
                        //     5.0,
                        //   ),
                        //   blurRadius: 5.0,
                        //   spreadRadius: 1.0,
                        // ), //BoxShadow
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(0.0, 0.0),
                          blurRadius: 0.0,
                          spreadRadius: 0.0,
                        ), //BoxShadow
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          width: double.infinity,
                          height: 40,
                          color: Colors.brown[50],
                          child: const Padding(
                            padding: EdgeInsets.only(left: 19.0),
                            child: Text('TRAVELLERS'),
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          width: MediaQuery.sizeOf(context).width * 0.85,
                          height: 46,
                          decoration: BoxDecoration(
                              // border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(7),
                              color: Colors.greenAccent),
                          child: const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  Icon(Icons.error_outline),
                                  SizedBox(width: 5),
                                  Expanded(
                                    child: Text(
                                      'Please note that the maximum image size'
                                      ' allowed is 2MB',
                                      style: TextStyle(fontSize: 9),
                                      overflow: TextOverflow.clip,
                                      maxLines: 1,
                                    ),
                                  ),
                                ],
                              )),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const QuestionariesWidget(),
                        const SizedBox(
                          height: 12,
                        ),
                        InsurerForm(
                          
                          formKey: formKey, 
                          firstNameController: firstNameController, 
                          middleNameController: middleNameController, 
                          lastNameController: lastNameController, 
                          dateOfBirthController: dateOfBirthController, 
                          emailController: emailController, 
                          mobileNumberController: mobileNumberController, 
                          fatherNameController: fatherNameController, 
                          occupationController: occupationController, 
                          passportController: passportController, 
                          passportExpiryController: passportExpiryController, 
                          municipalityController: municipalityController, 
                          wardController: wardController, 
                          streetController: streetController,
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              children: [
                                Checkbox(
                                  value: isChecked,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked = value!;
                                    });
                                  },
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 268,
                                  child: const Text(
                                    'By booking you confirm that the names on the booking match those on the passports of those travelling. Also you agree to our Terms and Conditions.',
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight
                                            .w500), // Adjust text style as needed
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            alignment: Alignment.centerRight,
                            child: ElevatedButton(
                              onPressed: () {
                                
                                if (formKey.currentState!.validate()) {
                                debugPrint("Done");
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  // side:
                                  //     BorderSide(color: Colors.green), // Add border
                                ),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'Proceed',
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const PolicyDetailsScreen(),
                  const SizedBox(
                    height: 15,
                  ),
                  const CostSummary(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
