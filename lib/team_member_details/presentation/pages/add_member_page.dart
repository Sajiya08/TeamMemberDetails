import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:team_members_detail/Constant/dimensions.dart';
import 'package:team_members_detail/constant/appcolor.dart';
import 'package:team_members_detail/team_member_details/presentation/controller/team_member_controller.dart';

import '../../../Constant/size_config.dart';
import '../../../Constant/styles.dart';
import '../../../constant/String.dart';
import '../widgets/custom_text_form_field.dart';

class AddMemberPage extends GetView<TeamMemberController> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            height: getScreenHeight(400),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: kToolbarHeight - getScreenWidth(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(getScreenWidth(7)),
              ),
              child: Padding(
                padding: EdgeInsets.only(top: getScreenHeight(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomTextFormField(
                      controller: controller.nameCtrl,
                      autoFocus: true,
                      keyboardType: TextInputType.text,
                      isTapped: true,
                      textHintColor: Colors.black,
                      label: 'Name',
                    ),
                    SizedBox(
                      height: getScreenHeight(10),
                    ),
                    CustomTextFormField(
                      controller: controller.mobileCtrl,
                      autoFocus: true,
                      keyboardType: TextInputType.number,
                      isTapped: true,
                      textHintColor: Colors.black,
                      label: 'Mobile No.',
                    ),
                    SizedBox(
                      height: getScreenHeight(10),
                    ),
                    Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(10)),
                        child: Obx(
                          () => DropdownButton(
                              underline: Container(color: Colors.transparent),
                              isExpanded: true,
                              icon: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Colors.black,
                                ),
                              ),
                              onChanged: (newValue) {
                                controller.dropdownValue.value = newValue!;
                              },
                              value: controller.dropdownValue.value,
                              items: controller.gender.map((selectedType) {
                                return DropdownMenuItem(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: getScreenWidth(45)),
                                    child: Text(selectedType,
                                        style: titleStyle.copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 17)),
                                  ),
                                  value: selectedType,
                                );
                              }).toList()),
                        )),
                    SizedBox(
                      height: getScreenHeight(30),
                    ),
                    SizedBox(
                      height: getScreenHeight(50),
                      width: getScreenWidth(100),
                      child: Center(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red),
                            onPressed: () {
                              if (controller.validateForm()) {
                              } else {
                                controller.autoValidate.value = false;
                              }
                            },
                            child: Text(
                              "Save",
                              style: titleStyle.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: getScreenHeight(20),
          ),
        ],
      ),
    );
  }
}
