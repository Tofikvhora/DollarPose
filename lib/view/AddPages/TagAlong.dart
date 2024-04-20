import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TagAlong extends HookWidget {
  const TagAlong({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      margin: EdgeInsets.symmetric(vertical: 5.h),
      width: width,
      height: height * 0.25,
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
              textAndFields(context, 'UPC :', null),
              textAndFields(context, 'Item Name :', null),
              textAndFields(context, 'Price :', null),
              textAndFields(context, 'Qty :', null),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (value) {},
                    activeColor: Colors.white,
                  ),
                  Text(
                    "Show in Dialog",
                    style: TextStyle(
                        fontSize: 5.w,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )
                ],
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                margin: EdgeInsets.symmetric(horizontal: 3.w),
                height: height * 0.06,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Theme.of(context).colorScheme.onSecondary),
                child: Text('Remove Tag Along',
                    style: TextStyle(
                        fontSize: 5.w,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              )
            ],
          ),
        ],
      ),
    ));
  }
}

Widget textAndFields(BuildContext context, String name, IconData? icons) {
  final width = MediaQuery.of(context).size.width;
  final height = MediaQuery.of(context).size.height;
  return SizedBox(
    width: width * 0.24,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(name,
            style: TextStyle(
                fontSize: 4.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
        SizedBox(
          width: width * 0.17,
          height: height * 0.06,
          child: TextFormField(
            style: TextStyle(
                fontSize: 6.sp,
                color: Colors.black,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.start,
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
                hintText: '0.00',
                hintStyle: TextStyle(
                    fontSize: 4.5.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                suffix: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 2.w, vertical: 10.h),
                  child: FaIcon(
                    icons,
                    size: 6.w,
                    color: Colors.black,
                  ),
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
