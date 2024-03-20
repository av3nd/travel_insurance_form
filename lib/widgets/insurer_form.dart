import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:travel_insurance_form/constants/enum.dart';
import 'package:travel_insurance_form/widgets/i_dropdown.dart';
import 'package:travel_insurance_form/widgets/i_field.dart';
import 'package:travel_insurance_form/widgets/rounded_button.dart';

class InsurerForm extends StatefulWidget {
  const InsurerForm({
    required this.formKey,
    super.key,
    required this.firstNameController,
    required this.middleNameController,
    required this.lastNameController,
    required this.dateOfBirthController,
    required this.emailController,
    required this.mobileNumberController,
    required this.fatherNameController,
    required this.occupationController,
    required this.passportController,
    required this.passportExpiryController,
    required this.municipalityController,
    required this.wardController,
    required this.streetController,
  });
  final TextEditingController firstNameController;
  final TextEditingController middleNameController;
  final TextEditingController lastNameController;
  final TextEditingController dateOfBirthController;
  final TextEditingController emailController;
  final TextEditingController mobileNumberController;
  final TextEditingController fatherNameController;

  final TextEditingController occupationController;

  final TextEditingController passportController;
  final TextEditingController passportExpiryController;
  final TextEditingController municipalityController;
  final TextEditingController wardController;
  final TextEditingController streetController;

  final GlobalKey<FormState> formKey;

  @override
  State<InsurerForm> createState() => _InsurerFormState();
}

class _InsurerFormState extends State<InsurerForm> {
  String selectedGender = 'Select Gender';
  String selectedValue = 'Select Title';
  String selectedIndividual = 'Nepalese';
  String selectedMaritalStatus = 'Select';
  String selectedProvince = 'Select Province';
  String selectedDistrict = 'Select District';
  File? _selectedImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      width: MediaQuery.sizeOf(context).width * 0.8,
      // height: 700 ,
      decoration: BoxDecoration(border: Border.all(color: Colors.black45)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: widget.formKey,
          child: Column(
            children: [
              const Row(
                children: [
                  Icon(Icons.supervised_user_circle),
                  SizedBox(width: 5),
                  Text(
                    'Insurer 1 (Adult)',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              IDropdownField<String>(
                fillColor: Colors.white,
                value: selectedValue,
                itemTextStyle:
                    const TextStyle(fontSize: 11, color: Colors.black),
                onChanged: (newValue) {
                  // Handle value change
                  setState(() {
                    selectedValue = newValue!;
                  });
                },
                items: const [
                  DropdownMenuItem(
                    value: 'Select Title',
                    child: Text('Select Title'),
                  ),
                  DropdownMenuItem(
                    value: 'Mr',
                    child: Text('Mrs'),
                  ),

                  DropdownMenuItem(
                    value: 'Ms',
                    child: Text('Ms'),
                  ),
                  // Add more items as needed
                ],
                labelText: 'Title',
                hintText: 'Select Title',
                // hintStyle: TextStyle(fontSize: 11),
                // dropdownIcon: Icon(Icons.arrow_drop_down_circle_rounded),
              ),
              const SizedBox(
                height: 12,
              ),
              IField(
                controller: widget.firstNameController,
                fieldType: FieldType.String,
                labelText: "First Name",
              ),
              const SizedBox(
                height: 12,
              ),
              IField(
                controller: widget.middleNameController,
                fieldType: FieldType.String,
                labelText: "Middle Name",
              ),
              const SizedBox(
                height: 12,
              ),
              IField(
                controller: widget.lastNameController,
                fieldType: FieldType.String,
                labelText: "Last Name",
              ),
              const SizedBox(
                height: 12,
              ),
              IField(
                controller: widget.dateOfBirthController,
                fieldType: FieldType.String,
                labelText: "Date Of Birth",
              ),
              const SizedBox(
                height: 12,
              ),
              IDropdownField<String>(
                fillColor: Colors.white,
                value: selectedGender,
                itemTextStyle:
                    const TextStyle(fontSize: 11, color: Colors.black),
                onChanged: (newValue) {
                  // Handle value change
                  setState(() {
                    selectedGender = newValue!;
                  });
                },
                items: const [
                  DropdownMenuItem(
                    value: 'Select Gender',
                    child: Text('Select Gender'),
                  ),
                  DropdownMenuItem(
                    value: 'Male',
                    child: Text('Male'),
                  ),

                  DropdownMenuItem(
                    value: 'Female',
                    child: Text('Female'),
                  ),
                  // Add more items as needed
                ],
                labelText: 'Gender',
                hintText: 'Select Gender',
                // dropdownIcon: Icon(Icons.arrow_drop_down_circle_rounded),
              ),
              const SizedBox(
                height: 12,
              ),
              IField(
                controller: widget.emailController,
                fieldType: FieldType.Email,
                labelText: "Email",
              ),
              const SizedBox(
                height: 12,
              ),
              IField(
                controller: widget.mobileNumberController,
                fieldType: FieldType.String,
                labelText: "Mobile Number",
              ),
              const SizedBox(
                height: 12,
              ),
              IDropdownField<String>(
                fillColor: Colors.white,
                value: selectedIndividual,
                itemTextStyle:
                    const TextStyle(fontSize: 11, color: Colors.black),
                onChanged: (newValue) {
                  // Handle value change
                  setState(() {
                    selectedIndividual = newValue!;
                  });
                },
                items: const [
                  DropdownMenuItem(
                    value: 'Nepalese',
                    child: Text('Nepalese'),
                  ),
                  DropdownMenuItem(
                    value: 'NRN',
                    child: Text('NRN'),
                  ),

                  DropdownMenuItem(
                    value: 'Expat',
                    child: Text('Expat'),
                  ),
                  // Add more items as needed
                ],
                labelText: 'Individual Type',
                hintText: 'Nepalese',
                // dropdownIcon: Icon(Icons.arrow_drop_down_circle_rounded),
              ),
              const SizedBox(
                height: 12,
              ),
              IDropdownField<String>(
                fillColor: Colors.white,
                value: selectedMaritalStatus,
                itemTextStyle:
                    const TextStyle(fontSize: 11, color: Colors.black),
                onChanged: (newValue) {
                  // Handle value change
                  setState(() {
                    selectedMaritalStatus = newValue!;
                  });
                },
                items: const [
                  DropdownMenuItem(
                    value: 'Select',
                    child: Text('Select'),
                  ),
                  DropdownMenuItem(
                    value: 'Married',
                    child: Text('Married'),
                  ),

                  DropdownMenuItem(
                    value: 'Un Married',
                    child: Text('Un Married'),
                  ),
                  // Add more items as needed
                ],
                labelText: 'Marital Status',
                hintText: 'Select',
                // dropdownIcon: Icon(Icons.arrow_drop_down_circle_rounded),
              ),
              const SizedBox(
                height: 12,
              ),
              IField(
                controller: widget.fatherNameController,
                fieldType: FieldType.String,
                labelText: "Father/Husband's Name",
              ),
              const SizedBox(
                height: 12,
              ),
              IField(
                controller: widget.occupationController,
                fieldType: FieldType.String,
                labelText: "Occupation",
                // Pass the showErrors flag
              ),
              const SizedBox(
                height: 12,
              ),
              IField(
                controller: widget.passportController,
                fieldType: FieldType.String,
                labelText: "Passport Number",
              ),
              const SizedBox(
                height: 12,
              ),
              IField(
                controller: widget.passportExpiryController,
                fieldType: FieldType.String,
                labelText: "Passport Expiry",
              ),
              const SizedBox(
                height: 12,
              ),
              RoundedButton(
                label: 'Upload Passport Image',
               onPressed: (){
                  _pickImageFormGallery(); 
               },
              ),
              const SizedBox(
                height: 12,
              ),
              IDropdownField<String>(
                fillColor: Colors.white,
                value: selectedProvince,
                itemTextStyle:
                    const TextStyle(fontSize: 11, color: Colors.black),
                onChanged: (newValue) {
                  // Handle value change
                  setState(() {
                    selectedProvince = newValue!;
                  });
                },
                items: const [
                  DropdownMenuItem(
                    value: 'Select Province',
                    child: Text('Select Province'),
                  ),
                  DropdownMenuItem(
                    value: 'Province No. 1',
                    child: Text('Province No. 1'),
                  ),

                  DropdownMenuItem(
                    value: 'Province No. 2',
                    child: Text('Province No. 2'),
                  ),

                  DropdownMenuItem(
                    value: 'Bagmati Province',
                    child: Text('Bagmati Province'),
                  ),

                  DropdownMenuItem(
                    value: 'Gandaki Province',
                    child: Text('Gandaki Province'),
                  ),
                  DropdownMenuItem(
                    value: 'Province No. 5',
                    child: Text('Province No. 5'),
                  ),
                  DropdownMenuItem(
                    value: 'Karnali Province',
                    child: Text('Karnali Province'),
                  ),
                  DropdownMenuItem(
                    value: 'Sundar Sudurpaschim Province',
                    child: Text('Sundar Sudurpaschim Province'),
                  ),
                  // Add more items as needed
                ],
                labelText: 'Province',
                hintText: 'Select Province',
                // dropdownIcon: Icon(Icons.arrow_drop_down_circle_rounded),
              ),
              const SizedBox(
                height: 12,
              ),
              IDropdownField<String>(
                fillColor: Colors.white,
                value: selectedDistrict,
                itemTextStyle: TextStyle(fontSize: 11, color: Colors.black),
                onChanged: (newValue) {
                  // Handle value change
                  setState(() {
                    selectedDistrict = newValue!;
                  });
                },
                items: const [
                  DropdownMenuItem(
                    value: 'Select District',
                    child: Text('Select District'),
                  ),
                  DropdownMenuItem(
                    value: 'Married',
                    child: Text('Married'),
                  ),

                  DropdownMenuItem(
                    value: 'Un Married',
                    child: Text('Un Married'),
                  ),
                  // Add more items as needed
                ],
                labelText: 'District',
                hintText: 'Select District',
                // dropdownIcon: Icon(Icons.arrow_drop_down_circle_rounded),
              ),
              const SizedBox(
                height: 12,
              ),
              IField(
                controller: widget.municipalityController,
                fieldType: FieldType.String,
                labelText: "Municipality", // Pass the showErrors flag
              ),
              const SizedBox(
                height: 12,
              ),
              IField(
                controller: widget.wardController,
                fieldType: FieldType.String,
                labelText: "Ward", // Pass the showErrors flag
              ),
              const SizedBox(
                height: 12,
              ),
              IField(
                controller: widget.streetController,
                fieldType: FieldType.String,
                labelText: "Street",
              ),
              const SizedBox(
                height: 12,
              ),
            ],
          ),
        ),
      ),
    );
  }
  Future _pickImageFormGallery() async{
  final returnedImage = await ImagePicker().pickImage(source: ImageSource.gallery);
  setState(() {
    _selectedImage = File(returnedImage!.path);
  });
}
}

