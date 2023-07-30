import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/routes.dart';

class TeamMemberController extends GetxController {
  TextEditingController nameCtrl = TextEditingController();
  TextEditingController mobileCtrl = TextEditingController();
  TextEditingController genderCtrl = TextEditingController();

  RxString dropdownValue = 'Male'.obs;
  var gender = ["Male", "Female"];
  RxBool autoValidate= false.obs;

  bool validateForm() {
    String errorText = "";
    if (nameCtrl.text.isEmpty) {
      errorText += "Please enter name!\n";
    } else if (mobileCtrl.text.isEmpty) {
      errorText += "Please enter valid mobile no!\n";
    } else if (mobileCtrl.text.length != 10) {
      errorText += "Please enter valid mobile no!\n";
    } else if (dropdownValue.value.isEmpty) {
      errorText += "Please select Gender\n";
    }
    if (errorText.isNotEmpty) {
      Get.defaultDialog(
          title: "",
          middleText: errorText,
          middleTextStyle: TextStyle(fontSize: 20, color: Colors.black),
          textConfirm: "OK",
          cancelTextColor: Colors.black,
          onConfirm: () async {
           Get.back();
          });
    }
    if (errorText.isEmpty) {
      return true;
    } else {
      return false;
    }
  }
}
