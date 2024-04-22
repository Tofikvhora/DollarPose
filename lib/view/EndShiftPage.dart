import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EndShiftPage extends HookWidget {
  static const String route = 'EndShiftPage';
  const EndShiftPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        children: [
          // header part
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.centerRight,
                    width: width * 0.05,
                    height: height * 0.09,
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).colorScheme.onSecondary,
                    ),
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 10.w,
                      color: Colors.white,
                    ),
                  ),
                  Image.asset(
                    "asset/Icons/Logo_transparent.png",
                    width: 40.w,
                    height: 80.h,
                  ),
                  Text(
                    "27",
                    style: TextStyle(
                        fontSize: 7.sp,
                        color: Theme.of(context).colorScheme.onPrimary,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
          // textFields part
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: width * 0.85,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                color:
                                    Theme.of(context).colorScheme.onSecondary,
                              ),
                              hintText: 'Start Date',
                              hintStyle: TextStyle(
                                  fontSize: 5.sp,
                                  color: Colors.white.withOpacity(0.4),
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
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
                                color:
                                    Theme.of(context).colorScheme.onSecondary,
                              ),
                              hintText: 'End Date',
                              hintStyle: TextStyle(
                                  fontSize: 5.sp,
                                  color: Colors.white.withOpacity(0.4),
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
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
                                Icons.arrow_drop_down,
                                size: 13.w,
                                color: Colors.white,
                              ),
                              hintText: 'BATCH',
                              hintStyle: TextStyle(
                                  fontSize: 5.sp,
                                  color: Colors.white.withOpacity(0.4),
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: width * 0.1,
                  height: height * 0.08,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Theme.of(context).colorScheme.onSecondary),
                  child: Text(
                    'View\nReport',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 6.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          // payment part
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 5.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: width * 0.85,
                  height: height * 0.08,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.symmetric(horizontal: 2.w),
                        width: width * 0.12,
                        height: height * 0.06,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Theme.of(context).colorScheme.onSecondary),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('\$960.97',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 5.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                            Text("CROSS RECEIVED",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 5.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400)),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: width * 0.1,
                  height: height * 0.08,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Theme.of(context).colorScheme.onSecondary),
                  child: Text(
                    'END SHIFT',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 6.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          // table parts
          SizedBox(
            height: height,
            child: ListView(
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
              shrinkWrap: true,
              children: [
                SizedBox(
                  width: width,
                  height: height * 0.41,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: width * 0.29,
                        height: height * 0.4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                headingText(context, 'SALES SUMMARY'),
                                ListView.builder(
                                  padding: EdgeInsets.symmetric(vertical: 5.h),
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: 5,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 5.h),
                                      child: amountAndText(
                                          context, 'TAXABLE', '\$0.00'),
                                    );
                                  },
                                )
                              ],
                            ),
                            const DottedLine(dashColor: Colors.white)
                          ],
                        ),
                      ),
                      SizedBox(
                        width: width * 0.29,
                        height: height * 0.4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                headingText(context, 'TENDER PAYMENT SUMMARY'),
                                ListView.builder(
                                  padding: EdgeInsets.symmetric(vertical: 5.h),
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: 5,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 5.h),
                                      child: amountAndText(
                                          context, 'CASH', '\$0.00'),
                                    );
                                  },
                                )
                              ],
                            ),
                            const DottedLine(dashColor: Colors.white)
                          ],
                        ),
                      ),
                      SizedBox(
                        width: width * 0.34,
                        height: height * 0.4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                headingText(context, 'STATISTICS SUMMARY'),
                                DataTable(
                                    columnSpacing: 28.w,
                                    headingRowHeight: 27.h,
                                    dataTextStyle: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                    headingTextStyle: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    headingRowColor:
                                        MaterialStatePropertyAll<Color>(
                                            Theme.of(context)
                                                .colorScheme
                                                .onSecondary),
                                    columns: const [
                                      DataColumn(
                                        label: Text('TITLE'),
                                      ),
                                      DataColumn(
                                        label: Text('COUNT'),
                                      ),
                                      DataColumn(
                                        label: Text(
                                          'AMOUNT',
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                    rows:
                                        // TODO: this is static data just add your data list and map data copy below code and past into map
                                        const [
                                      DataRow(cells: [
                                        DataCell(Text('1')),
                                        DataCell(Text('00')),
                                        DataCell(Text('00')),
                                      ])
                                    ]),
                              ],
                            ),
                            const DottedLine(dashColor: Colors.white)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5.h),
                SizedBox(
                  width: width,
                  height: height * 0.41,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: width * 0.34,
                        height: height * 0.4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                headingText(context, 'TAX DETAILS'),
                                DataTable(
                                    columnSpacing: 19.w,
                                    headingRowHeight: 27.h,
                                    dataTextStyle: TextStyle(
                                        fontSize: 4.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                    headingTextStyle: TextStyle(
                                        fontSize: 4.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    headingRowColor:
                                        MaterialStatePropertyAll<Color>(
                                            Theme.of(context)
                                                .colorScheme
                                                .onSecondary),
                                    columns: const [
                                      DataColumn(
                                        label: Text('TITLE'),
                                      ),
                                      DataColumn(
                                        label: Text('SALES ITEM'),
                                      ),
                                      DataColumn(
                                        label: Text(
                                          'SALES AMOUNT',
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                    rows:
                                        // TODO: this is static data just add your data list and map data copy below code and past into map
                                        const [
                                      DataRow(cells: [
                                        DataCell(Text('')),
                                        DataCell(Text('')),
                                        DataCell(Text('')),
                                      ])
                                    ]),
                              ],
                            ),
                            const DottedLine(dashColor: Colors.white)
                          ],
                        ),
                      ),
                      SizedBox(
                        width: width * 0.29,
                        height: height * 0.4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                headingText(context, 'CREDIT CARD BREAKDOWN'),
                                ListView.builder(
                                  padding: EdgeInsets.symmetric(vertical: 5.h),
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: 5,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 5.h),
                                      child: amountAndText(
                                          context, 'TAXABLE', '\$0.00'),
                                    );
                                  },
                                )
                              ],
                            ),
                            const DottedLine(dashColor: Colors.white)
                          ],
                        ),
                      ),
                      SizedBox(
                        width: width * 0.29,
                        height: height * 0.4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                headingText(context, 'TOTAL NO SALES'),
                                ListView.builder(
                                  padding: EdgeInsets.symmetric(vertical: 5.h),
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: 5,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 5.h),
                                      child: amountAndText(
                                          context, 'CASH', '\$0.00'),
                                    );
                                  },
                                )
                              ],
                            ),
                            const DottedLine(dashColor: Colors.white)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5.h),
                SizedBox(
                  width: width,
                  height: height * 0.41,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: width * 0.31,
                        height: height * 0.4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                headingText(context, 'TAX DETAILS'),
                                DataTable(
                                    columnSpacing: 11.w,
                                    headingRowHeight: 27.h,
                                    dataTextStyle: TextStyle(
                                        fontSize: 4.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                    headingTextStyle: TextStyle(
                                        fontSize: 4.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    headingRowColor:
                                        MaterialStatePropertyAll<Color>(
                                            Theme.of(context)
                                                .colorScheme
                                                .onSecondary),
                                    columns: const [
                                      DataColumn(
                                        label: Text('TITLE'),
                                      ),
                                      DataColumn(
                                        label: Text('SALES ITEM'),
                                      ),
                                      DataColumn(
                                        label: Text(
                                          'SALES AMOUNT',
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                    rows:
                                        // TODO: this is static data just add your data list and map data copy below code and past into map
                                        const [
                                      DataRow(cells: [
                                        DataCell(Text('')),
                                        DataCell(Text('')),
                                        DataCell(Text('')),
                                      ])
                                    ]),
                              ],
                            ),
                            const DottedLine(dashColor: Colors.white)
                          ],
                        ),
                      ),
                      SizedBox(
                        width: width * 0.31,
                        height: height * 0.4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                headingText(context, 'TAX DETAILS'),
                                DataTable(
                                    columnSpacing: 13.w,
                                    headingRowHeight: 27.h,
                                    dataTextStyle: TextStyle(
                                        fontSize: 4.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                    headingTextStyle: TextStyle(
                                        fontSize: 4.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    headingRowColor:
                                        MaterialStatePropertyAll<Color>(
                                            Theme.of(context)
                                                .colorScheme
                                                .onSecondary),
                                    columns: const [
                                      DataColumn(
                                        label: Text('TITLE'),
                                      ),
                                      DataColumn(
                                        label: Text('SALES ITEM'),
                                      ),
                                      DataColumn(
                                        label: Text(
                                          'SALES AMOUNT',
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                    rows:
                                        // TODO: this is static data just add your data list and map data copy below code and past into map
                                        const [
                                      DataRow(cells: [
                                        DataCell(Text('')),
                                        DataCell(Text('')),
                                        DataCell(Text('')),
                                      ])
                                    ]),
                              ],
                            ),
                            const DottedLine(dashColor: Colors.white)
                          ],
                        ),
                      ),
                      SizedBox(
                        width: width * 0.31,
                        height: height * 0.4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                headingText(context, 'TAX DETAILS'),
                                DataTable(
                                    columnSpacing: 11.w,
                                    headingRowHeight: 27.h,
                                    dataTextStyle: TextStyle(
                                        fontSize: 4.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                    headingTextStyle: TextStyle(
                                        fontSize: 4.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    headingRowColor:
                                        MaterialStatePropertyAll<Color>(
                                            Theme.of(context)
                                                .colorScheme
                                                .onSecondary),
                                    columns: const [
                                      DataColumn(
                                        label: Text('TITLE'),
                                      ),
                                      DataColumn(
                                        label: Text('SALES ITEM'),
                                      ),
                                      DataColumn(
                                        label: Text(
                                          'SALES AMOUNT',
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                    rows:
                                        // TODO: this is static data just add your data list and map data copy below code and past into map
                                        const [
                                      DataRow(cells: [
                                        DataCell(Text('')),
                                        DataCell(Text('')),
                                        DataCell(Text('')),
                                      ])
                                    ]),
                              ],
                            ),
                            const DottedLine(dashColor: Colors.white)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5.h),
                SizedBox(
                  width: width,
                  height: height * 0.65,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: width * 0.29,
                        height: height * 0.65,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                headingText(context, 'SALES SUMMARY'),
                                ListView.builder(
                                  padding: EdgeInsets.symmetric(vertical: 5.h),
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: 5,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 5.h),
                                      child: amountAndText(
                                          context, 'TAXABLE', '\$0.00'),
                                    );
                                  },
                                )
                              ],
                            ),
                            const DottedLine(dashColor: Colors.white)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget headingText(BuildContext context, String text) {
  return Text(
    text,
    style: TextStyle(
        fontSize: 6.sp, color: Theme.of(context).colorScheme.onPrimary),
  );
}

Widget amountAndText(BuildContext context, String? text, String? amount) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        text!,
        style: TextStyle(
            fontSize: 4.sp, color: Colors.white, fontWeight: FontWeight.bold),
      ),
      Text(amount!,
          style: TextStyle(
              fontSize: 4.sp,
              color: Colors.white,
              fontWeight: FontWeight.bold)),
    ],
  );
}
