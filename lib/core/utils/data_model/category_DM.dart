import 'package:flutter/material.dart';
import 'package:news_app/core/utils/assets_manager.dart';
import 'package:news_app/core/utils/colors_manager.dart';
import 'package:news_app/core/utils/const_manager.dart';

class CategoryDM {
  String id;
  String imagePath;
  String title;
  Color color;
  CategoryDM({
    required this.id,
    required this.color,
    required this.imagePath,
    required this.title,
  });
  static List<CategoryDM> categories() => [
        CategoryDM(
          color: ColorsManager.red,
          id: ConstManager.sportsId,
          imagePath: AssetsManager.ball,
          title: 'Sports',
        ),
        CategoryDM(
          color: ColorsManager.yellow,
          id: ConstManager.entertainmentId,
          imagePath: AssetsManager.entertainment,
          title: 'Entertainment',
        ),
        CategoryDM(
          color: ColorsManager.orange,
          id: ConstManager.businessId,
          imagePath: AssetsManager.bussines,
          title: 'Business',
        ),
        CategoryDM(
          color: ColorsManager.pink,
          id: ConstManager.healthId,
          imagePath: AssetsManager.health,
          title: 'Health',
        ),
        CategoryDM(
          color: ColorsManager.green,
          id: ConstManager.scienceId,
          imagePath: AssetsManager.science,
          title: 'Science',
        ),
        CategoryDM(
          color: ColorsManager.blue,
          id: ConstManager.technologyId,
          imagePath: AssetsManager.politics,
          title: 'Technology',
        ),
        CategoryDM(
          color: ColorsManager.cyan,
          id: ConstManager.generalId,
          imagePath: AssetsManager.environment,
          title: 'General',
        ),
      ];
}
