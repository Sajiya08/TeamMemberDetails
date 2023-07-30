import 'package:flutter/material.dart';
import '../../../Constant/size_config.dart';
import '../../../constant/dimensions.dart';

class CustomBottomSheet {
  static showBottomSheet(BuildContext? context, Widget headerView, Widget child,
      {String? bottomSheetTitle, double? height, bool isDismissible = false, double? topLeftCornerRadius, double? topRightCornerRadius}) {
    showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      enableDrag: true,
      isDismissible: isDismissible,
      //useRootNavigator: false,
      //barrierColor: Colors.blue.withOpacity(0.5),
      context: context!,
      builder: (context) => ConstrainedBox(
        constraints: BoxConstraints(maxHeight: height ?? MediaQuery.of(context).size.height * 0.90),
        child: Container(
          padding: EdgeInsets.only(left: Dimension.defaultMargin, right: Dimension.defaultMargin, bottom: MediaQuery.of(context).viewInsets.bottom),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(topLeftCornerRadius ?? getScreenWidth(25)),
                  topRight: Radius.circular(topRightCornerRadius ?? getScreenWidth(25)))),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              headerView,

              Flexible(
                child: height == null
                    ? ListView(
                  shrinkWrap: true,
                  children: [child],
                )
                    : SizedBox(
                  height: height,
                  child: child,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
