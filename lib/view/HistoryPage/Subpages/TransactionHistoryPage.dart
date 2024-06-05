import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ionicons/ionicons.dart';

class TransactionHistoryPage extends HookWidget {
  const TransactionHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 10.h),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: width * 0.23,
                    height: height * 0.07,
                    child: TextField(
                      style: TextStyle(
                          fontSize: 6.sp,
                          color: Colors.white.withOpacity(0.4),
                          fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide:
                                  const BorderSide(color: Colors.white)),
                          prefixIcon: Icon(
                            Icons.arrow_drop_down,
                            size: 10.w,
                            color: Theme.of(context).colorScheme.onSecondary,
                          ),
                          hintText: 'UPC',
                          hintStyle: TextStyle(
                              fontSize: 5.sp,
                              color: Colors.white.withOpacity(0.4),
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                  SizedBox(width: 5.w),
                  SizedBox(
                    width: width * 0.23,
                    height: height * 0.07,
                    child: TextField(
                      style: TextStyle(
                          fontSize: 6.sp,
                          color: Colors.white.withOpacity(0.4),
                          fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide:
                                  const BorderSide(color: Colors.white)),
                          suffixIcon: Icon(
                            Icons.cancel,
                            size: 10.w,
                            color: Theme.of(context).colorScheme.onSecondary,
                          ),
                          hintText: 'Item Name',
                          hintStyle: TextStyle(
                              fontSize: 5.sp,
                              color: Colors.white.withOpacity(0.4),
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: width * 0.27,
                    height: height * 0.07,
                    child: TextField(
                      style: TextStyle(
                          fontSize: 6.sp,
                          color: Colors.white.withOpacity(0.4),
                          fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide:
                                  const BorderSide(color: Colors.white)),
                          suffixIcon: Icon(
                            Icons.calendar_month,
                            size: 10.w,
                            color: Theme.of(context).colorScheme.onSecondary,
                          ),
                          hintText: 'Select Date',
                          hintStyle: TextStyle(
                              fontSize: 5.sp,
                              color: Colors.white.withOpacity(0.4),
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                  SizedBox(width: 5.w),
                  Container(
                    alignment: Alignment.center,
                    width: width * 0.1,
                    height: height * 0.07,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Theme.of(context).colorScheme.onSecondary,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Ionicons.filter,
                          size: 8.w,
                          color: Colors.white,
                        ),
                        Text(
                          "Filter",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 4.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: width * 0.6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              width: width * 0.1,
                              padding: EdgeInsets.symmetric(horizontal: 3.w),
                              height: height * 0.1,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Colors.white)),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "0",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: 5.w,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Purchase QTY",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: 4.w,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 2.w, vertical: 15.h),
                              alignment: Alignment.centerLeft,
                              width: width * 0.1,
                              padding: EdgeInsets.symmetric(horizontal: 3.w),
                              height: height * 0.1,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Colors.white)),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "\$0.00",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: 5.w,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Purchase AMT",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: 4.w,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: width * 0.07,
                                  height: height * 0.06,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(color: Colors.white)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(
                                        Icons.done,
                                        size: 5.w,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        "Price",
                                        style: TextStyle(
                                            fontSize: 5.w,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 2.w, vertical: 15.h),
                                  width: width * 0.07,
                                  height: height * 0.06,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(color: Colors.white)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(
                                        Icons.done,
                                        size: 5.w,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        "Cost",
                                        style: TextStyle(
                                            fontSize: 5.w,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: width * 0.07,
                                  height: height * 0.06,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(color: Colors.white)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(
                                        Icons.done,
                                        size: 5.w,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        "QTY",
                                        style: TextStyle(
                                            fontSize: 5.w,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Checkbox(
                                      fillColor: MaterialStatePropertyAll(
                                          Theme.of(context)
                                              .colorScheme
                                              .onSecondary),
                                      value: true,
                                      onChanged: (value) {},
                                      checkColor: Colors.white,
                                    ),
                                    Text(
                                      "Discounted",
                                      style: TextStyle(
                                          fontSize: 4.sp,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 10.h),
                                  alignment: Alignment.center,
                                  width: width * 0.12,
                                  height: height * 0.07,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSecondary),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "Select Register",
                                        style: TextStyle(
                                            fontSize: 4.sp,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Icon(
                                        Icons.arrow_drop_down,
                                        size: 7.w,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(width: 10.w),
                                Text("Total Record",
                                    style: TextStyle(
                                        fontSize: 6.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                                Text(
                                  ":  0",
                                  style: TextStyle(
                                      fontSize: 6.sp,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    DataTable(
                      columnSpacing: 20.w,
                      dataTextStyle: TextStyle(
                          fontSize: 5.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      horizontalMargin: 4.w,
                      headingRowHeight: 40.h,
                      headingTextStyle: TextStyle(
                          fontSize: 4.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      headingRowColor: MaterialStatePropertyAll<Color>(
                          Theme.of(context).colorScheme.onPrimary),
                      columns: const [
                        DataColumn(
                            label: Text(
                          'SKU',
                        )),
                        DataColumn(
                            label: Text(
                          'Item name',
                        )),
                        DataColumn(
                            label: Text(
                          'Pack',
                        )),
                        DataColumn(
                            label: Text(
                          'Old\n(Unit price)',
                        )),
                        DataColumn(
                            label: Text(
                          'new\n(Unit price)',
                        )),
                        DataColumn(
                            label: Text(
                          'Per.(%)',
                        )),
                      ],
                      rows: const [
                        DataRow(cells: [
                          DataCell(Text('1')),
                          DataCell(Text('Tofik vhora')),
                          DataCell(Text('10:30')),
                          DataCell(Text('Single')),
                          DataCell(Text('\$15000')),
                          DataCell(Text('\$10')),
                        ]),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.h),
                width: width * 0.35,
                height: height * 0.76,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "PMS Demo",
                      style: TextStyle(
                          fontSize: 4.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text('123 ST',
                        style: TextStyle(
                            fontSize: 4.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                    Text('Griffin, Georgia - 3023',
                        style: TextStyle(
                            fontSize: 4.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                    textAndData(
                        context, 'Receipt Date :', 'Apr 24,2024 08:29 AM'),
                    SizedBox(height: 5.h),
                    const DottedLine(
                      dashColor: Colors.white,
                    ),
                    SizedBox(height: 10.h),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Sales Date : ',
                            style: TextStyle(
                                fontSize: 4.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Register NO  : 0',
                                style: TextStyle(
                                    fontSize: 4.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                            Text('Batch  : 0',
                                style: TextStyle(
                                    fontSize: 4.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Text('POS Order Id : ',
                            style: TextStyle(
                                fontSize: 4.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    const DottedLine(
                      dashColor: Colors.white,
                    ),
                    SizedBox(height: 10.h),
                    const DottedLine(
                      dashColor: Colors.white,
                    ),
                    SizedBox(height: 10.h),
                    textAndData(context, 'SubTotal :', '\$0.00'),
                    SizedBox(height: 2.h),
                    textAndData(context, 'Total Discount :', '\$0.00'),
                    SizedBox(height: 2.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total Charge  : ',
                            style: TextStyle(
                                fontSize: 5.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        Text('\$0.00',
                            style: TextStyle(
                                fontSize: 4.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    textAndData(context, 'Amount Collected :', '\$0.00'),
                    SizedBox(height: 2.h),
                    textAndData(context, 'Change Duo :', '\$0.00'),
                    SizedBox(height: 4.h),
                    const DottedLine(
                      dashColor: Colors.white,
                    ),
                    SizedBox(height: 12.h),
                    textAndData(context, 'Total Tendered :', '\$0.00'),
                    SizedBox(height: 12.h),
                    const DottedLine(
                      dashColor: Colors.white,
                    ),
                    SizedBox(height: 12.h),
                    Text('Other Details',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 6.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: 12.h),
                    const DottedLine(
                      dashColor: Colors.white,
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

Widget textAndData(BuildContext context, String name, String data) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 3.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(name,
            style: TextStyle(
                fontSize: 4.sp,
                color: Colors.white,
                fontWeight: FontWeight.w400)),
        Text(data,
            style: TextStyle(
                fontSize: 4.sp,
                color: Colors.white,
                fontWeight: FontWeight.w400)),
      ],
    ),
  );
}
