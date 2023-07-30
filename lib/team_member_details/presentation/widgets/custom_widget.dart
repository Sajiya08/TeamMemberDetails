import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../Constant/size_config.dart';
import '../../../Constant/styles.dart';
import '../../../constant/appcolor.dart';
import '../../../constant/dimensions.dart';

class CustomWidget extends StatelessWidget {
  String? labelText, subTitle;
  String? arrow;
  GestureTapCallback? onCardTap;

  CustomWidget(
      {Key? key, this.labelText, this.subTitle, this.onCardTap, this.arrow})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCardTap,
      child: SizedBox(
        height: getScreenHeight(50),
        child: Card(
          color: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(getScreenWidth(16))),
          ),
          child: Row(
            children: [
              Column(
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    labelText ?? "",
                    style: titleStyle.copyWith(
                        fontSize: Dimension.subtitle,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: getScreenHeight(10),
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    subTitle ?? "",
                    style: titleStyle.copyWith(
                        fontSize: Dimension.subtitle,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                width: getScreenWidth(5),
              ),
              SvgPicture.asset(arrow ?? ""),
            ],
          ),
        ),
      ),
    );
  }
}
