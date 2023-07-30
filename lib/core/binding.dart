import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import '../team_member_details/presentation/controller/team_member_controller.dart';

class TeamMembersBinding implements Bindings {
  @override
  void dependencies() {
//controller

    Get.lazyPut<TeamMemberController>(() => TeamMemberController(),
        fenix: true);
  }
}
