import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/config/theme/app_styles.dart';
import 'package:news_app/core/utils/colors_manager.dart';
import 'package:news_app/presentation/screens/home/home_drawer/drawer_item_widget/drawer_item_widget.dart';

class HomeDrawer extends StatelessWidget {
  Function(DrawerItem) onItemClicked;
  HomeDrawer({super.key, required this.onItemClicked});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 110.h,
            width: double.infinity,
            color: ColorsManager.green,
            child: Text(
              'News App!',
              style: AppStyles.drawerTitle,
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Row(
          //     children: [
          //       Icon(
          //         Icons.list,
          //         size: 40.sp,
          //       ),
          //       SizedBox(width: 15.w),
          //       Text(
          //         'Categories',
          //         style: AppStyles.drawerItem,
          //       ),
          //     ],
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Row(
          //     children: [
          //       Icon(
          //         Icons.settings,
          //         size: 40.sp,
          //       ),
          //       SizedBox(width: 15.w),
          //       Text(
          //         'Settings',
          //         style: AppStyles.drawerItem,
          //       ),
          //     ],
          //   ),
          // ),
          InkWell(
            onTap: () => onItemClicked(DrawerItem.category),
            child: DrawerItemWidget(
              // itemOnTap: onItemClicked(1),
              drawerItem: 'Categories',
              itemIcon: Icons.list,
            ),
          ),
          InkWell(
            onTap: () => onItemClicked(DrawerItem.settings),
            child: DrawerItemWidget(
              // itemOnTap: onItemClicked(2),
              drawerItem: 'Settings',
              itemIcon: Icons.settings,
            ),
          ),
        ],
      ),
    );
  }
}

enum DrawerItem {
  category,
  settings,
}
