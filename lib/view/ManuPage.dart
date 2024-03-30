import 'package:dollarpos/utils/StringNavigation.dart';
import 'package:dollarpos/view/EmpolyPage.dart';
import 'package:dollarpos/view/ItemPage.dart';
import 'package:dollarpos/view/MoneyPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'asset/Icons/Logo.png',
                            width: 60.w,
                            height: 60.h,
                            fit: BoxFit.fitWidth,
                          ),
                          IconButton(
                              onPressed: () {
                                _key.currentState!.closeDrawer();
                              },
                              icon: Icon(
                                Icons.cancel,
                                size: 8.w,
                                color: Colors.black,
                              )),
                        ],
                      ),
                    ],
                  )),
              ListTile(
                minVerticalPadding: 20.h,
                leading: Image.asset(
                  'asset/Icons/cash-machine.png',
                  width: 10.w,
                  height: 50.h,
                  fit: BoxFit.contain,
                ),
                title: Text(
                  'Money Management',
                  style: TextStyle(
                      fontSize: 7.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  MoneyPage.route.pushOnThis(context);
                },
              ),
              ListTile(
                minVerticalPadding: 20.h,
                leading: Image.asset(
                  'asset/Icons/deposit.png',
                  width: 10.w,
                  height: 50.h,
                  fit: BoxFit.contain,
                ),
                title: Text(
                  'Employ Management',
                  style: TextStyle(
                      fontSize: 7.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  EmployPage.route.pushOnThis(context);
                },
              ),
              ListTile(
                minVerticalPadding: 20.h,
                leading: Image.asset(
                  'asset/Icons/check.png',
                  width: 10.w,
                  height: 50.h,
                  fit: BoxFit.contain,
                ),
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
                              color:
                                  Theme.of(context).colorScheme.onSecondary)),
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
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary)),
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 3.w),
                                  height: 70.h,
                                  width: 15.w,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.fitWidth,
                                        image: AssetImage(
                                            'asset/Icons/call-center-agent.png'),
                                      ),
                                      color: Colors.black,
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
                                  color: Colors.black,
                                ))
                          ],
                        ),
                      )
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Image.asset(
                      'asset/Icons/Logo.png',
                      width: 250.w,
                      height: 450.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: width,
              height: height * 0.06,
              decoration: const BoxDecoration(color: Colors.black),
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
                                fontSize: 4.sp),
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
                                    fontSize: 4.sp),
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
                                      fontSize: 4.sp),
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
