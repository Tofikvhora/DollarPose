import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GraphPage extends HookWidget {
  const GraphPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 10.h),
        children: [
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
                          borderSide: const BorderSide(color: Colors.white)),
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
              SizedBox(width: 10.w),
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
                          borderSide: const BorderSide(color: Colors.white)),
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
              commonButtons(context, 'Last Sold Qty : 1'),
              commonButtons(context, 'Last Sold Qty : 1'),
              commonButtons(context, 'Last Sold Qty : 1'),
              commonButtons(context, 'Last Sold Qty : 1'),
              commonButtons(context, 'Last Sold Qty : 1'),
              commonButtons(context, 'Last Sold Qty : 1'),
            ],
          ),
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: width * 0.12,
                    height: height * 0.07,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.white)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.done,
                          size: 7.w,
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
                    margin:
                        EdgeInsets.symmetric(horizontal: 2.w, vertical: 15.h),
                    width: width * 0.12,
                    height: height * 0.07,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.white)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.done,
                          size: 7.w,
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
                    width: width * 0.12,
                    height: height * 0.07,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.white)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.done,
                          size: 7.w,
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
                ],
              ),
              Container(
                width: width * 0.15,
                height: height * 0.07,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.white)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Select year",
                        style: TextStyle(
                            fontSize: 5.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                    Icon(
                      Icons.arrow_drop_down,
                      size: 7.w,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            width: width * 0.9,
            height: height * 0.58,
            child: BarChart(
              BarChartData(
                  backgroundColor: Colors.black,
                  barGroups: [
                    BarChartGroupData(x: 1, barRods: [
                      BarChartRodData(
                          toY: 8,
                          fromY: 0,
                          borderRadius: BorderRadius.zero,
                          width: 15.w,
                          color: Theme.of(context).colorScheme.onSecondary)
                    ]),
                    BarChartGroupData(x: 2, barRods: [
                      BarChartRodData(
                          toY: 7,
                          fromY: 0,
                          borderRadius: BorderRadius.zero,
                          width: 15.w,
                          color: Theme.of(context).colorScheme.onSecondary)
                    ]),
                    BarChartGroupData(x: 3, barRods: [
                      BarChartRodData(
                          toY: 5,
                          fromY: 0,
                          borderRadius: BorderRadius.zero,
                          width: 15.w,
                          color: Theme.of(context).colorScheme.onSecondary)
                    ]),
                    BarChartGroupData(x: 4, barRods: [
                      BarChartRodData(
                          toY: 3,
                          fromY: 0,
                          borderRadius: BorderRadius.zero,
                          width: 15.w,
                          color: Theme.of(context).colorScheme.onSecondary)
                    ]),
                    BarChartGroupData(x: 5, barRods: [
                      BarChartRodData(
                          toY: 3,
                          fromY: 0,
                          borderRadius: BorderRadius.zero,
                          width: 15.w,
                          color: Theme.of(context).colorScheme.onSecondary)
                    ]),
                    BarChartGroupData(x: 6, barRods: [
                      BarChartRodData(
                          toY: 3,
                          fromY: 0,
                          borderRadius: BorderRadius.zero,
                          width: 15.w,
                          color: Theme.of(context).colorScheme.onSecondary)
                    ]),
                    BarChartGroupData(x: 7, barRods: [
                      BarChartRodData(
                          toY: 3,
                          fromY: 0,
                          borderRadius: BorderRadius.zero,
                          width: 15.w,
                          color: Theme.of(context).colorScheme.onSecondary)
                    ]),
                    BarChartGroupData(x: 8, barRods: [
                      BarChartRodData(
                          toY: 7,
                          fromY: 0,
                          borderRadius: BorderRadius.zero,
                          width: 15.w,
                          color: Theme.of(context).colorScheme.onSecondary)
                    ]),
                    BarChartGroupData(x: 9, barRods: [
                      BarChartRodData(
                          toY: 7,
                          fromY: 0,
                          borderRadius: BorderRadius.zero,
                          width: 15.w,
                          color: Theme.of(context).colorScheme.onSecondary)
                    ]),
                  ],
                  borderData: FlBorderData(
                    border: const Border(
                        top: BorderSide.none,
                        right: BorderSide.none,
                        bottom: BorderSide(color: Colors.white),
                        left: BorderSide(color: Colors.white)),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

Widget commonButtons(BuildContext context, String title) {
  final width = MediaQuery.of(context).size.width;
  final height = MediaQuery.of(context).size.height;
  return Container(
    margin: EdgeInsets.only(right: 4.w, top: 10.h),
    alignment: Alignment.center,
    width: width * 0.1,
    height: height * 0.08,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.white)),
    child: Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: 4.sp, color: Colors.white, fontWeight: FontWeight.bold),
    ),
  );
}
