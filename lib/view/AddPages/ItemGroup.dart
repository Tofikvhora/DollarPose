import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemGroup extends HookWidget {
  const ItemGroup({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 5.h),
        width: width,
        height: height * 0.16,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.w),
          border: Border.all(color: Colors.white.withOpacity(0.4)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                textAndFields(context, 'Item Group :', '<Select Item Group>'),
                textAndFields(context, 'Age :', '<Select Age>'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget textAndFields(BuildContext context, String name, String hintText) {
  final width = MediaQuery.of(context).size.width;
  final height = MediaQuery.of(context).size.height;
  return SizedBox(
    width: width * 0.35,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(name,
            style: TextStyle(
                fontSize: 4.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
        SizedBox(
          width: width * 0.23,
          height: height * 0.06,
          child: TextFormField(
            style: TextStyle(
                fontSize: 6.sp,
                color: Colors.black,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.start,
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
                hintText: hintText,
                hintStyle: TextStyle(
                    fontSize: 4.5.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                suffixIcon: Icon(
                  Icons.arrow_drop_down,
                  size: 15.w,
                  color: Colors.black,
                ),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                )),
          ),
        ),
      ],
    ),
  );
}
