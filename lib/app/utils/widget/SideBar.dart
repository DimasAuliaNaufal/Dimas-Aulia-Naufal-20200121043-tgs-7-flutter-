import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:line_icons/line_icon.dart';
import 'package:task_management_app/app/routes/app_pages.dart';
import 'package:task_management_app/app/utils/style/AppColors.dart';

class SideBar extends StatelessWidget {
  const SideBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        height: Get.height,
      color: AppColors.primaryBg,
      child: SingleChildScrollView
      (child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // logo
          Container(
            height: 100,
            padding: const EdgeInsets.only(top: 30),
            width: double.infinity,
      alignment: Alignment.topCenter,
      child: const Image(
        image: AssetImage('assets/icons/logo.png'),
      ),
      ),
    
            const SizedBox(height: 50,),
      SizedBox(
        height: 100,
        child: Center(
          child: InkWell(
          child: Column(children: [
            Container(
              height: 40,
              width: 100,
              decoration: Get.currentRoute == '/home' 
              ? BoxDecoration(borderRadius
              : BorderRadius.circular(40),
              color: Colors.white,
              )
              : const BoxDecoration(),
            child: Icon(
               Get.currentRoute == '/home' 
               ? Icons.desktop_windows
               : Icons.desktop_windows_outlined, 
            color: AppColors.primaryText, 
            size: 30,),
          ),
          const SizedBox(height: 5,),
          Text('home', 
          style: TextStyle(
            color: AppColors.primaryText, 
          fontSize: 16
          ),
          ),
          ],
          ),
          onTap: ()=>Get.toNamed(Routes.HOME),
        ),
        ),
      ),
    
        SizedBox(
        height: 100,
        child: Center(
          child: InkWell(
          child: Column(children: [
            Container(
              height: 40,
              width: 100,
              decoration: Get.currentRoute == '/task' 
              ? BoxDecoration(borderRadius
              : BorderRadius.circular(40),
              color: Colors.white,
              )
              : const BoxDecoration(),
            child: Icon(
               Get.currentRoute == '/task' 
               ? Icons.task 
               : Icons.task_alt_outlined, 
            color: AppColors.primaryText, 
            size: 30,),
          ),
          SizedBox(height: 5,),
          Text('task', 
          style: TextStyle(
          color: AppColors.primaryText, 
          fontSize: 16
          ),
          ),
          ],
          ),
          onTap: ()=>Get.toNamed(Routes.TASK),
        ),
        ),
      ),
    
        SizedBox(
        height: 100,
        child: Center(
          child: InkWell(
          child: Column(children: [
            Container(
              height: 40,
              width: 100,
              decoration: Get.currentRoute == '/friends' 
              ? BoxDecoration(borderRadius
              : BorderRadius.circular(40),
              color: Colors.white,
              )
              : const BoxDecoration(),
            child: Icon(
               Get.currentRoute == '/friends' 
               ? Icons.heart_broken_sharp
               : Icons.heart_broken_outlined , 
            color: AppColors.primaryText, 
            size: 30,),
          ),
          SizedBox(height: 5,),
          Text('friends', 
          style: TextStyle(
          color: AppColors.primaryText, 
          fontSize: 16
          ),
          ),
          ],
          ),
          onTap: ()=>Get.toNamed(Routes.FRIENDS),
        ),
        ),
      ),
    
        SizedBox(
        height: 100,
        child: Center(
          child: InkWell(
          child: Column(children: [
            Container(
              height: 40,
              width: 100,
              decoration: Get.currentRoute == '/profile' 
              ? BoxDecoration(borderRadius
              : BorderRadius.circular(40),
              color: Colors.white,
              )
              : const BoxDecoration(),
            child: Icon(
               Get.currentRoute == '/profile' 
               ? Icons.person
               : Icons.person_outline, 
            color: AppColors.primaryText, 
            size: 30,),
          ),
          SizedBox(height: 5,),
          Text('profile', 
          style: TextStyle(color: AppColors.primaryText, 
          fontSize: 16
          ),
          ),
          ],
          ),
          onTap: ()=>Get.toNamed(Routes.PROFILE),
        ),
        ),
      ),
    
    
      ],
      )
      ),
      ),
    );
  }
}