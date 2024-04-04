import 'package:dollarpos/utils/StringNavigation.dart';
import 'package:dollarpos/view/ActionPage.dart';
import 'package:dollarpos/view/EmpolyPage.dart';
import 'package:dollarpos/view/ItemPage.dart';
import 'package:dollarpos/view/MoneyPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ManuPage extends HookWidget {
  static const String route = 'ManuPage';
  const ManuPage({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _key = GlobalKey();
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    useEffect(() {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeRight,
        DeviceOrientation.landscapeLeft,
      ]);
      return;
    }, []);
    return Scaffold(
        key: _key,
        drawer: Drawer(
          width: width * 0.35,
          backgroundColor: Colors.black,
          //Theme.of(context).colorScheme.onSecondary,
          elevation: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  // Important: Remove any padding from the ListView.
                  padding: EdgeInsets.zero,
                  children: [
                    SafeArea(
                      child: SizedBox(
                        height: height * 0.2,
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 15.h),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'asset/MoneyPageIcons/Logo_transparent.png',
                                    width: 30.w,
                                    height: 75.h,
                                    fit: BoxFit.cover,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    ListTile(
                      minVerticalPadding: 20.h,
                      leading: FaIcon(FontAwesomeIcons.addressBook,
                          size: 12.w, color: Colors.white),
                      title: Text(
                        'Employ Management',
                        style: TextStyle(
                            fontSize: 7.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        ActionPage.route.pushOnThis(context);
                      },
                    ),
                    ListTile(
                      minVerticalPadding: 20.h,
                      leading: FaIcon(FontAwesomeIcons.sitemap,
                          size: 12.w, color: Colors.white),
                      title: Text(
                        'Item Management',
                        style: TextStyle(
                            fontSize: 7.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        ItemPage.route.pushOnThis(context);
                      },
                    ),
                  ],
                ),
              ),
              ListTile(
                minVerticalPadding: 20.h,
                titleAlignment: ListTileTitleAlignment.center,
                leading: FaIcon(
                  FontAwesomeIcons.close,
                  color: Colors.red,
                  size: 12.w,
                ),
                title: Text(
                  'EXIT',
                  style: TextStyle(
                      fontSize: 7.sp,
                      color: Colors.red,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          onPressed: () {
                            _key.currentState!.openDrawer();
                          },
                          icon: Icon(Icons.menu,
                              size: 17.w,
                              color: Theme.of(context).colorScheme.onPrimary)),
                      Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                          'asset/MoneyPageIcons/Logo_transparent.png',
                          width: 150.w,
                          height: 150.h,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.h),
                        child: Row(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('PMS DEMO',
                                    style: TextStyle(
                                        fontSize: 6.sp,
                                        fontWeight: FontWeight.bold,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary)),
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 5.w),
                                  height: 70.h,
                                  width: 15.w,
                                  decoration: BoxDecoration(
                                      image: const DecorationImage(
                                        fit: BoxFit.fitWidth,
                                        image: AssetImage(
                                            'asset/Icons/call-center-agent.png'),
                                      ),
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                      shape: BoxShape.circle),
                                )
                              ],
                            ),
                            IconButton(
                                padding: EdgeInsets.symmetric(horizontal: 5.w),
                                onPressed: () {
                                  //TODO: add Some Logic
                                },
                                icon: Icon(
                                  Icons.settings,
                                  size: 12.w,
                                  color:
                                      Theme.of(context).colorScheme.onPrimary,
                                ))
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: height * 0.55,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            MoneyPage.route.pushOnThis(context);
                          },
                          child: Container(
                            width: width * 0.25,
                            height: height * 0.35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    width: 1.w,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSecondary),
                                color: Theme.of(context)
                                    .colorScheme
                                    .onSecondary
                                    .withOpacity(0.5)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'asset/Icons/cash-machine.png',
                                  width: width * 0.13,
                                  height: height * 0.15,
                                  color: Colors.white.withOpacity(0.5),
                                ),
                                Text(
                                  'Cash Register',
                                  style: TextStyle(
                                      fontSize: 10.sp,
                                      color: Colors.white.withOpacity(0.7),
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            EmployPage.route.pushOnThis(context);
                          },
                          child: Container(
                            width: width * 0.25,
                            height: height * 0.35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    width: 1.w,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSecondary),
                                color: Theme.of(context)
                                    .colorScheme
                                    .onSecondary
                                    .withOpacity(0.5)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'asset/Icons/employees.png',
                                  width: width * 0.13,
                                  height: height * 0.15,
                                  color: Colors.white.withOpacity(0.5),
                                ),
                                Text(
                                  'Clock-in / Out',
                                  style: TextStyle(
                                      fontSize: 10.sp,
                                      color: Colors.white.withOpacity(0.7),
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: width,
              height: height * 0.06,
              decoration: BoxDecoration(color: Colors.grey.withOpacity(0.2)),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'USERNAME :  ',
                            style:
                                TextStyle(color: Colors.white, fontSize: 5.sp),
                          ),
                          TextSpan(
                            text: 'PMS DEMO',
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.8),
                                fontSize: 5.sp),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'REGISTER NO :  ',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 5.sp),
                              ),
                              TextSpan(
                                text: '08',
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.8),
                                    fontSize: 5.sp),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 50.w),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'VERSION NO :  ',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 5.sp),
                                ),
                                TextSpan(
                                  text: '2.0.6',
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.8),
                                      fontSize: 5.sp),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
