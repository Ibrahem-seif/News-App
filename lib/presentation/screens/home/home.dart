import 'package:flutter/material.dart';
import 'package:news_app/config/theme/app_styles.dart';
import 'package:news_app/core/utils/assets_manager.dart';
import 'package:news_app/core/utils/colors_manager.dart';
import 'package:news_app/presentation/screens/home/home_drawer/home_drawer.dart';
import 'package:news_app/presentation/screens/home/tabs/categories/categories.dart';
import 'package:news_app/presentation/screens/home/tabs/settings/settings.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget selectedWidget = Categories();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            AssetsManager.splashBG,
          ),
        ),
        color: ColorsManager.white,
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'News App',
            style: AppStyles.appBar,
          ),
        ),
        drawer: HomeDrawer(
          onItemClicked: onDrawerItemClick,
        ),
        body: selectedWidget,
      ),
    );
  }

  void onDrawerItemClick(DrawerItem item) {
    switch (item) {
      case DrawerItem.category:
        selectedWidget = Categories();
      case DrawerItem.settings:
        selectedWidget = Settings();
    }
    setState(() {});
  }
}
