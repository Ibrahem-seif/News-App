import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/config/theme/app_styles.dart';
import 'package:news_app/core/utils/assets_manager.dart';
import 'package:news_app/core/utils/colors_manager.dart';
import 'package:news_app/core/utils/data_model/category_DM.dart';

class CategoryWidget extends StatelessWidget {
  CategoryDM categoryDM;
  int index;
  CategoryWidget({super.key, required this.categoryDM, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 11.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25.r),
          topRight: Radius.circular(25.r),
          bottomLeft: Radius.circular(index.isEven ? 25.r : 0.r),
          bottomRight: Radius.circular(index.isEven ? 0.r : 25.r),
        ),
        color: categoryDM.color,
      ),
      child: Column(
        children: [
          Image.asset(
            categoryDM.imagePath,
            height: 116.sp,
            width: 132.sp,
          ),
          Text(
            categoryDM.title,
            style: AppStyles.categoryItem,
          )
        ],
      ),
    );
  }
}
