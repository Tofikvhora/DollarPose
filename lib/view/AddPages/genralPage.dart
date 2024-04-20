import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GeneralPage extends HookWidget {
  const GeneralPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: ListView(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Page View first Row
            Row(
              children: [
                Column(
                  children: [
                    checkBoxPrice(context, 'Open Price'),
                    checkBoxPrice(context, 'Open Quantity'),
                    checkBoxPrice(context, 'Buy as case'),
                    checkBoxPrice(context, 'is Online'),
                  ],
                ),
                SizedBox(width: 10.w),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    textAndFields(context, 'Unit Test  :'),
                    SizedBox(height: 5.h),
                    textAndFields(context, 'Margin  :'),
                    SizedBox(height: 5.h),
                    textAndFields(context, 'Unit in case  :'),
                    SizedBox(height: 5.h),
                    textAndFields(context, 'online price  :'),
                  ],
                ),
                SizedBox(width: 10.w),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    textAndFields(context, 'Buy Down  :'),
                    SizedBox(height: 5.h),
                    textAndFields(context, 'Markup  :'),
                    SizedBox(height: 5.h),
                    textAndFields(context, 'Case cost  :'),
                    SizedBox(height: 5.h),
                    textAndFields(context, 'E-commerce  :'),
                  ],
                ),
                SizedBox(width: 10.w),
                SizedBox(
                  height: height * 0.3,
                  width: width * 0.15,
                  child: ListView(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    children: [
                      checkBoxPrice(context, 'Deli-PLU'),
                      checkBoxPrice(context, 'Non Revenue'),
                      checkBoxPrice(context, 'EBT'),
                      checkBoxPrice(context, 'Is-Negative'),
                      checkBoxPrice(context, 'Non-return'),
                      checkBoxPrice(context, 'In-active'),
                    ],
                  ),
                ),
              ],
            ),
            // Page View Second row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: width * 0.32,
                  height: height * 0.23,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.withOpacity(0.5)),
                      borderRadius: BorderRadius.circular(5)),
                  child: DataTable(
                      columnSpacing: 20.w,
                      headingRowHeight: 39.h,
                      dataTextStyle: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                      headingTextStyle: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      headingRowColor: MaterialStatePropertyAll<Color>(
                          Theme.of(context).colorScheme.onSecondary),
                      columns: const [
                        DataColumn(
                          label: Text('UPC List'),
                        ),
                        DataColumn(
                          label: Text('Main UPC'),
                        ),
                      ],
                      rows:
                          // TODO: this is static data just add your data list and map data copy below code and past into map
                          const [
                        DataRow(cells: [
                          DataCell(Text('1')),
                          DataCell(Text('Tofik vhora')),
                        ])
                      ]),
                ),
                Container(
                  width: width * 0.32,
                  height: height * 0.23,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.withOpacity(0.5)),
                      borderRadius: BorderRadius.circular(5)),
                  child: DataTable(
                      columnSpacing: 20.w,
                      headingRowHeight: 39.h,
                      dataTextStyle: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                      headingTextStyle: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      headingRowColor: MaterialStatePropertyAll<Color>(
                          Theme.of(context).colorScheme.onSecondary),
                      columns: const [
                        DataColumn(
                          label: Text('QTY'),
                        ),
                        DataColumn(
                          label: Text('Price'),
                        ),
                      ],
                      rows:
                          // TODO: this is static data just add your data list and map data copy below code and past into map
                          const [
                        DataRow(cells: [
                          DataCell(Text('1')),
                          DataCell(Text('Tofik vhora')),
                        ])
                      ]),
                ),
                Container(
                  width: width * 0.32,
                  height: height * 0.23,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.w),
                    color: Colors.black,
                    border: Border.all(
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 2.w),
                        alignment: Alignment.centerLeft,
                        width: width * 0.32,
                        height: height * 0.056,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(3.w),
                              topRight: Radius.circular(3.w)),
                          color: Colors.grey.withOpacity(0.5),
                        ),
                        child: Text(
                          "Price Level",
                          style: TextStyle(
                              fontSize: 5.w,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Row(
                                children: [
                                  Radio(
                                      value: true,
                                      groupValue: 0,
                                      onChanged: (value) {}),
                                  Text(
                                    "Regular Price (\$0.00)",
                                    style: TextStyle(
                                        fontSize: 5.sp,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Radio(
                                      value: true,
                                      groupValue: 0,
                                      onChanged: (value) {}),
                                  Text(
                                    "5% OFF",
                                    style: TextStyle(
                                        fontSize: 5.sp,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                  value: true,
                                  groupValue: 0,
                                  onChanged: (value) {}),
                              Text(
                                "Regular Price (\$0.00)",
                                style: TextStyle(
                                    fontSize: 5.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        )
      ],
    ));
  }
}

Widget textAndFields(BuildContext context, String name) {
  final width = MediaQuery.of(context).size.width;
  final height = MediaQuery.of(context).size.height;
  return SizedBox(
    width: width * 0.3,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(name,
            style: TextStyle(
                fontSize: 4.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
        SizedBox(
          width: width * 0.2,
          height: height * 0.065,
          child: TextFormField(
            textDirection: TextDirection.ltr,
            style: TextStyle(
                fontSize: 6.sp,
                color: Colors.black,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.end,
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
                hintText: '0.00',
                hintStyle: TextStyle(
                    fontSize: 4.5.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                prefixIcon: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 2.w, vertical: 10.h),
                  child: FaIcon(
                    FontAwesomeIcons.usd,
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

Widget checkBoxPrice(BuildContext context, String name) {
  final width = MediaQuery.of(context).size.width;
  final height = MediaQuery.of(context).size.height;
  return SizedBox(
    width: width * 0.13,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Checkbox(
          value: true,
          onChanged: (value) {},
          activeColor: Colors.white,
        ),
        Text(
          name,
          textAlign: TextAlign.start,
          style: TextStyle(
              fontSize: 4.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white.withOpacity(0.5)),
        )
      ],
    ),
  );
}
