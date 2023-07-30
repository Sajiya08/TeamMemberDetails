import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:team_members_detail/Constant/styles.dart';
import '../../../Constant/size_config.dart';
import '../../../constant/String.dart';

class CustomBottomSheetHeaderView extends StatelessWidget {
  String? title, cancelText, saveText;
  VoidCallback? onCancel, onSave;
  bool isBackEnable = false;

  CustomBottomSheetHeaderView(
      {Key? key,
      this.onCancel,
      this.cancelText,
      this.title,
      this.onSave,
      this.saveText,
      this.isBackEnable = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: getScreenHeight(20),
            ),
            Expanded(
              child: InkWell(
                onTap: onCancel,
                child: isBackEnable
                    ? Container(
                        margin: const EdgeInsets.all(8),
                        child: SvgPicture.asset(
                          icBack,
                          width: getScreenWidth(16),
                          height: getScreenHeight(16),
                        ),
                      )
                    : Padding(
                      padding:  EdgeInsets.only(top: getScreenHeight(10)),
                      child: Container(
                          alignment: Alignment.bottomRight,
                          child: InkWell(
                            onTap: () {
                              Get.back();
                            },
                            child: SvgPicture.asset(
                              icClose,
                            ),
                          ),
                        ),
                    ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
