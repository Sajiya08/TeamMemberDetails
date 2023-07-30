import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:team_members_detail/Constant/dimensions.dart';
import 'package:team_members_detail/constant/String.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../Constant/size_config.dart';
import '../../../Constant/styles.dart';
import '../../../constant/appcolor.dart';
import '../controller/team_member_controller.dart';
import '../widgets/custom_bottom_sheet.dart';
import '../widgets/custom_bottom_sheet_header_view.dart';
import '../widgets/custom_widget.dart';
import 'add_member_page.dart';

class TeamMemberDetailPage extends GetView<TeamMemberController> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().initialize(context);
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(imgBg ?? ""),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(top: getScreenHeight(60)),
            child: Stack(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: getScreenWidth(20)),
                      child: Text("Start the project journey",
                          style: titleStyle.copyWith(
                              color: Colors.white, fontSize: 20)),
                    )
                  ],
                ),
                SizedBox(
                  height: getScreenHeight(30),
                ),
                SingleChildScrollView(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: getScreenHeight(40),
                          left: getScreenWidth(16),
                          right: getScreenWidth(16)),
                      child: Column(
                        children: [
                          SizedBox(
                            height: getScreenHeight(180),
                            child: Card(
                              color: Colors.white,
                              child: Column(
                                children: [
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text("Balram Naidu",
                                            style: titleStyle.copyWith(
                                                color: Colors.black,
                                                fontSize: 18)),
                                        SizedBox(
                                            height: getScreenHeight(50),
                                            child: InkWell(
                                                onTap: () {
                                                  call();
                                                },
                                                child:
                                                    SvgPicture.asset(icCall)))
                                      ]),
                                  SizedBox(
                                    height: getScreenWidth(20),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text("Mobile no.",
                                                style: titleStyle.copyWith(
                                                    color: Colors.grey,
                                                    fontSize:
                                                        Dimension.text)),
                                            Padding(
                                              padding:  EdgeInsets.only(left: getScreenWidth(30)),
                                              child: Text("ID",
                                                  style: titleStyle.copyWith(
                                                      color: Colors.grey,
                                                      fontSize:
                                                          Dimension.text)),
                                            ),
                                            SizedBox(
                                              width: getScreenWidth(10),
                                            ),
                                            InkWell(
                                              onTap: () {
                                                //  openwhatsapp(context);
                                              },
                                              child: SvgPicture.asset(
                                                icWhatsapp,
                                                color: Colors.grey,
                                              ),
                                            )
                                          ]),

                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text("+91 9876543210",
                                                style: titleStyle.copyWith(
                                                    color: Colors.black,
                                                    fontSize:
                                                        Dimension.text)),
                                            Padding(
                                              padding:  EdgeInsets.only(right: getScreenWidth(45)),
                                              child: Text("SDJG234534",
                                                  style: titleStyle.copyWith(
                                                      color: Colors.black,
                                                      fontSize: Dimension.text)),
                                            )
                                          ]),
                                      // SizedBox(width: getScreenWidth(20),),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ListView.builder(
                              shrinkWrap: true,
                              itemCount: 3,
                              physics: AlwaysScrollableScrollPhysics(),
                              itemBuilder: (context, position) {
                                return Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Container(
                                    height: 80,
                                    width: MediaQuery.of(context).size.width,
                                    child: Padding(
                                      padding:
                                          EdgeInsets.only(top: 20, left: 20),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment
                                                    .spaceBetween,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    membersNameList[position],
                                                    style:
                                                        titleStyle.copyWith(
                                                            color:
                                                                Colors.black,
                                                            fontSize: 18),
                                                  ),
                                                  SizedBox(
                                                    height:
                                                        getScreenHeight(10),
                                                  ),
                                                  Text(
                                                      membersPhoneNoList[
                                                          position],
                                                      style:
                                                          titleStyle.copyWith(
                                                              color:
                                                                  Colors.grey,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              fontSize: 15)),
                                                ],
                                              ),
                                              IconButton(
                                                  onPressed: () {},
                                                  icon: Icon(Icons
                                                      .arrow_forward_ios_rounded))
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              }),
                          SizedBox(
                            height: getScreenHeight(10),
                          ),
                          SizedBox(
                            height: getScreenHeight(300),
                            width: getScreenHeight(400),
                            child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(20),
                                  child: Card(
                                    color: AppColors.bgcolor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: DottedBorder(
                                      dashPattern: [10, 10],
                                      color: Colors.grey,
                                      strokeWidth: 2,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          IconButton(
                                              onPressed: () {
                                                CustomBottomSheet
                                                    .showBottomSheet(
                                                  context,
                                                  CustomBottomSheetHeaderView(
                                                    cancelText: "",
                                                    saveText: "",
                                                  ),
                                                  AddMemberPage(),
                                                );
                                              },
                                              icon: Icon(
                                                Icons.add,
                                                color: Colors.grey,
                                              )),
                                          Padding(
                                            padding: EdgeInsets.all(18),
                                            child: Text(
                                              "Add new Team member",
                                              style: titleStyle.copyWith(
                                                  color: Colors.blue,
                                                  fontSize: 18),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                )),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  call() async {
    const number = '+1 202-918-2132';
    bool? res = await FlutterPhoneDirectCaller.callNumber(number);
  }

  openwhatsapp(BuildContext context) async {
    var whatsappNo = "+917738271438";
    var whatsappmsgforandroid =
        "whatsapp://send?phone=" + whatsappNo + "&text=hello";
    var whatsappmsgforios =
        "https://wa.me/$whatsappNo?text=${Uri.parse("hello")}";
    if (Platform.isIOS) {
      if (await canLaunch(whatsappmsgforios)) {
        await launch(whatsappmsgforios, forceSafariVC: false);
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: new Text("whatsapp no installed")));
      }
    } else {
      if (await canLaunch(whatsappmsgforandroid)) {
        await launch(whatsappmsgforandroid);
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: new Text("whatsapp no installed")));
      }
    }
  }
}
