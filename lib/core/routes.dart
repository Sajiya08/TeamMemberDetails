import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:team_members_detail/team_member_details/presentation/pages/team_members_detail_page.dart';
import 'binding.dart';

class Routes {
  static const String teamMemberDetails = "/teamMemberDetails";
}


class RoutePages {
  static final pages = [
    GetPage(
      name: Routes.teamMemberDetails,
      page: () => TeamMemberDetailPage(),
      binding: TeamMembersBinding(),
    ),
  ];
}
