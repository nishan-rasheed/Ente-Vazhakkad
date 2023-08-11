import 'package:easy_localization/easy_localization.dart';
import 'package:ente_vazhakkad/view/constants/text_style_constant.dart';
import 'package:ente_vazhakkad/view/themes/app_theme_constants.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:sizer/sizer.dart';

import '../../constants/app_asset_constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: AppTheme.appBarColor,
        titleTextStyle: StyleConfig.titleText(),
        title: Text('ente_vazhakkad'.tr()),
        actions: [
          IconButton(
              onPressed: () {
                if (context.locale == const Locale('ml', 'IN')) {
                  context.setLocale(const Locale('en', 'US'));
                } else {
                  context.setLocale(const Locale('ml', 'IN'));
                }
              },
              icon: const Icon(Icons.language))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 3.w,vertical: 2.h),
              height: 15.h,
              width: maxWidth,
              color: Colors.amber,
            ),
            Container(
              height: 3.h,
              decoration:const BoxDecoration(
                  //color: AppTheme.appBarColor
                  ),
              child: Marquee(
                text: 'xcvxc sdfsdf  sddfsdfsd sdfsdfsdf sdgsdgsd',
                style:StyleConfig.subTitleText(),
                scrollAxis: Axis.horizontal,
                crossAxisAlignment: CrossAxisAlignment.start,
                blankSpace: 20.0,
                pauseAfterRound: Duration(seconds: 1),
                startPadding: 10.0,
                accelerationDuration: Duration(seconds: 1),
                accelerationCurve: Curves.linear,
                decelerationDuration: Duration(milliseconds: 500),
                decelerationCurve: Curves.easeOut,
              ),
            ),
      
            GridView.builder(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemCount: 14,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Image.asset(ImagePathConstants.busIcon,
                      height: 12.h,fit: BoxFit.cover,),
                    Text('sggs',style: StyleConfig.subTitleText(),)
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}




//context.setLocale(Locale('en', 'US'));
//  Scaffold(
//       floatingActionButton: Column(mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//            FloatingActionButton(
//             onPressed: (){
//             context.setLocale(Locale('en', 'US'));
//           },
//           child: Icon(Icons.add),
//           ),

//           FloatingActionButton(onPressed: (){
//             context.setLocale(Locale('ml', 'IN'));
//             print(context.locale.toString());
//           }),
//         ],
//       ),
//       body: Center(child: Text("welcome".tr()))
//     );