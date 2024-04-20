import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DistributorsPage extends HookWidget {
  const DistributorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 0),
        children: [
          Row(
            children: [
              textAndFields(context, 'UPC :', null),
              textAndFields(context, 'Item Name :', null),
              textAndFields(context, 'Price :', null),
              textAndFields(context, 'Qty :', null),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                margin: EdgeInsets.symmetric(horizontal: 3.w),
                height: height * 0.06,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey.withOpacity(0.5)),
                child: Text('Clear',
                    style: TextStyle(
                        fontSize: 6.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                margin: EdgeInsets.symmetric(horizontal: 3.w),
                height: height * 0.06,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Theme.of(context).colorScheme.onSecondary),
                child: Text('Apply',
                    style: TextStyle(
                        fontSize: 6.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          DataTable(
              columnSpacing: 20.w,
              headingRowHeight: 39.h,
              dataTextStyle: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
              headingTextStyle: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              headingRowColor: MaterialStatePropertyAll<Color>(
                  Theme.of(context).colorScheme.onSecondary),
              columns: const [
                DataColumn(
                  label: Text('Distributor Name'),
                ),
                DataColumn(
                  label: Text('Distributor Code'),
                ),
                DataColumn(
                  label: Text('QTY'),
                ),
                DataColumn(
                  label: Text('Last cost'),
                ),
                DataColumn(
                  label: Text('Primary'),
                ),
                DataColumn(
                  label: Text('Action'),
                ),
              ],
              rows:
                  // TODO: this is static data just add your data list and map data copy below code and past into map
                  const [
                DataRow(cells: [
                  DataCell(Text('1')),
                  DataCell(Text('1')),
                  DataCell(Text('1')),
                  DataCell(Text('1')),
                  DataCell(Text('1')),
                  DataCell(Text('1')),
                ])
              ]),
        ],
      ),
    );
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
