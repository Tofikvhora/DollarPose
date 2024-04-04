import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PriceChange extends HookWidget {
  static const String route = 'PriceChange';
  const PriceChange({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(width: 4.w),
                  Container(
                    alignment: Alignment.center,
                    width: 13.w,
                    height: 13.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).colorScheme.onSecondary,
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4.w),
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 8.w,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(width: 4.w),
                  Text(
                    "PRICE CHANGE LOG",
                    style: TextStyle(
                        fontSize: 6.w,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onSecondary),
                  ),
                ],
              ),
              Image.asset(
                'asset/Icons/Logo_transparent.png',
                width: 60.w,
                height: 90.h,
              ),
              SizedBox(
                width: 40.w,
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Row(
                  children: [
                    Text(
                      "From : ",
                      style: TextStyle(
                          fontSize: 6.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      width: width * 0.17,
                      height: height * 0.06,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.white)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(width: 1.w),
                          Text(
                            "Apr,04,2020",
                            style:
                                TextStyle(fontSize: 5.sp, color: Colors.grey),
                          ),
                          Icon(
                            Icons.calendar_month,
                            size: 9.sp,
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                          SizedBox(width: 1.w),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Text(
                    "To : ",
                    style: TextStyle(
                        fontSize: 6.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    width: width * 0.17,
                    height: height * 0.06,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.white)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(width: 1.w),
                        Text(
                          "Apr,04,2020",
                          style: TextStyle(fontSize: 5.sp, color: Colors.grey),
                        ),
                        Icon(
                          Icons.calendar_month,
                          size: 9.sp,
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                        SizedBox(width: 1.w),
                      ],
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
