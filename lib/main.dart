import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'core/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return GetMaterialApp(
      title: 'Team Member Details',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Helvetica",
      ),
      initialRoute: Routes.teamMemberDetails,
      getPages: RoutePages.pages,
      debugShowCheckedModeBanner: false,
    );
  }
}
