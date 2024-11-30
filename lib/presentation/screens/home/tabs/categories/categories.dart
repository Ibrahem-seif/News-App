import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/config/theme/app_styles.dart';
import 'package:news_app/core/utils/assets_manager.dart';
import 'package:news_app/core/utils/colors_manager.dart';
import 'package:news_app/core/utils/data_model/category_DM.dart';
import 'package:news_app/presentation/screens/home/tabs/categories/widget/category_widget.dart';

class Categories extends StatelessWidget {
  Categories({super.key});
  List<CategoryDM> categories = CategoryDM.categories();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.all(15.0),
      child: Column(
        children: [
          Text(
            'Pick your category \n of interest',
            style: AppStyles.categoryTitle,
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 25.w,
                  mainAxisSpacing: 20.h),
              itemBuilder: (context, index) =>
                  CategoryWidget(categoryDM: categories[index], index: index),
              itemCount: categories.length,
            ),
          )
        ],
      ),
    );
  }
}
