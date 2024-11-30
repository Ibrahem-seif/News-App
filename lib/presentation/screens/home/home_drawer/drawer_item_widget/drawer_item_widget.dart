import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/config/theme/app_styles.dart';

class DrawerItemWidget extends StatelessWidget {
  final String drawerItem;
  final IconData itemIcon;
  // final VoidCallback itemOnTap;
  DrawerItemWidget({
    super.key,
    required this.drawerItem,
    required this.itemIcon,
    // required this.itemOnTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(
            itemIcon,
            size: 30.sp,
          ),
          SizedBox(width: 15.w),
          Text(
            drawerItem,
            style: AppStyles.drawerItem,
          ),
        ],
      ),
    );
  }
}
