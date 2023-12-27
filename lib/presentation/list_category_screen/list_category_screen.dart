import 'controller/list_category_controller.dart';
import 'package:flutter/material.dart';
import 'package:praveen_s_application1/core/app_export.dart';
import 'package:praveen_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:praveen_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:praveen_s_application1/widgets/app_bar/custom_app_bar.dart';

class ListCategoryScreen extends GetWidget<ListCategoryController> {
  const ListCategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 10.v),
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(children: [
                          _buildCategoryOptionBikini(
                              bikiniIcon: ImageConstant.imgArrowLeftPrimary,
                              bikiniText: "lbl_shirt".tr,
                              onTapBikiniIcon: () {
                                onTapArrowLeft1();
                              }),
                          _buildCategoryOptionBikini(
                              bikiniIcon: ImageConstant.imgBikiniIcon,
                              bikiniText: "lbl_bikini".tr),
                          _buildCategoryOptionBikini(
                              bikiniIcon: ImageConstant.imgClock,
                              bikiniText: "lbl_dress".tr),
                          _buildCategoryOptionBikini(
                              bikiniIcon: ImageConstant.imgManWorkEquipment,
                              bikiniText: "lbl_work_equipment".tr),
                          _buildCategoryOptionBikini(
                              bikiniIcon: ImageConstant.imgTrash,
                              bikiniText: "lbl_man_pants".tr),
                          _buildCategoryOptionBikini(
                              bikiniIcon: ImageConstant.imgTicket,
                              bikiniText: "lbl_man_shoes".tr),
                          _buildCategoryOptionBikini(
                              bikiniIcon: ImageConstant.imgForward,
                              bikiniText: "lbl_man_underwear".tr),
                          _buildCategoryOptionBikini(
                              bikiniIcon: ImageConstant.imgAirplane,
                              bikiniText: "lbl_man_t_shirt".tr),
                          _buildCategoryOptionBikini(
                              bikiniIcon: ImageConstant.imgTrashPrimary,
                              bikiniText: "lbl_woman_bag".tr),
                          _buildCategoryOptionBikini(
                              bikiniIcon: ImageConstant.imgWomanPantsIcon,
                              bikiniText: "lbl_woman_pants".tr),
                          _buildCategoryOptionBikini(
                              bikiniIcon: ImageConstant.imgWomanShoesIcon,
                              bikiniText: "lbl_high_heels".tr)
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftBlueGray300,
            margin: EdgeInsets.only(left: 16.h, top: 14.v, bottom: 17.v),
            onTap: () {
              onTapArrowLeft();
            }),
        title: AppbarSubtitle(
            text: "lbl_category".tr, margin: EdgeInsets.only(left: 12.h)));
  }

  /// Common widget
  Widget _buildCategoryOptionBikini({
    required String bikiniIcon,
    required String bikiniText,
    Function? onTapBikiniIcon,
  }) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.all(16.h),
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomImageView(
              imagePath: bikiniIcon,
              height: 24.adaptSize,
              width: 24.adaptSize,
              onTap: () {
                onTapBikiniIcon!.call();
              }),
          Padding(
              padding: EdgeInsets.only(left: 16.h, top: 2.v, bottom: 3.v),
              child: Text(bikiniText,
                  style: theme.textTheme.labelLarge!.copyWith(
                      color: theme.colorScheme.onPrimary.withOpacity(1))))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the previous screen.
  onTapArrowLeft1() {
    Get.back();
  }
}
