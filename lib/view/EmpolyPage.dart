import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:ionicons/ionicons.dart';

class EmployPage extends HookWidget {
  static const String route = 'EmployPage';
  const EmployPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isClock = useState(true);
    final isEmployee = useState(false);
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        children: [
          Row(
            children: [
              Container(
                width: width * 0.15,
                height: height,
                color: Colors.black.withOpacity(0.8),
                child: Column(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 2.w, vertical: 10.h),
                                padding: EdgeInsets.symmetric(horizontal: 3.w),
                                alignment: Alignment.center,
                                width: 10.w,
                                height: 30.h,
                                decoration: BoxDecoration(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSecondary,
                                    shape: BoxShape.circle),
                                child: Icon(Icons.arrow_back_ios,
                                    size: 7.w, color: Colors.white)),
                          ),
                          Image.asset('asset/Icons/Logo.png',
                              width: 70.w, height: 80.h, fit: BoxFit.cover),
                          InkWell(
                            onTap: () {
                              isClock.value = true;
                            },
                            child: AnimatedContainer(
                              duration: const Duration(seconds: 3),
                              width: width * 0.2,
                              height: height * 0.09,
                              color:
                                  isClock.value == true ? Colors.white : null,
                              child: Row(
                                children: [
                                  Image.asset('asset/Icons/help-desk.png',
                                      width: 20.w, height: 50.h),
                                  Text(
                                    'Clock-in',
                                    style: TextStyle(
                                        fontSize: 7.sp,
                                        color: isClock.value == true
                                            ? Colors.black
                                            : Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: () {
                              isClock.value = false;
                            },
                            child: AnimatedContainer(
                              duration: const Duration(seconds: 3),
                              width: width * 0.2,
                              height: height * 0.09,
                              color:
                                  isClock.value == true ? null : Colors.white,
                              child: Row(
                                children: [
                                  Image.asset('asset/Icons/help-desk.png',
                                      width: 20.w, height: 50.h),
                                  Text(
                                    'Actions',
                                    style: TextStyle(
                                        fontSize: 7.sp,
                                        color: isClock.value == true
                                            ? Colors.white
                                            : Colors.black,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                            padding: EdgeInsets.symmetric(vertical: 35.h),
                            onPressed: () {},
                            icon: Icon(
                              Icons.settings,
                              size: 12.w,
                              color: Colors.white,
                            )),
                        IconButton(
                            padding: EdgeInsets.symmetric(vertical: 35.h),
                            onPressed: () {},
                            icon: Icon(
                              Ionicons.help,
                              size: 12.w,
                              color: Colors.white,
                            )),
                      ],
                    )
                  ],
                ),
              ),
              isClock.value == true
                  ? Container(
                      margin: EdgeInsets.symmetric(horizontal: 10.w),
                      padding: const EdgeInsets.all(8),
                      width: width * 0.79,
                      height: height * 0.7,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 10,
                                offset: Offset(1.2, 1.3),
                                spreadRadius: 10)
                          ],
                          borderRadius: BorderRadius.circular(10),
                          border:
                              Border.all(color: Colors.black, width: 0.5.w)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("CLOCK-IN-EMPLOYEE NAME",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 5.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(height: 10.h),
                            Expanded(
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: DataTable(
                                    columnSpacing: 25.w,
                                    headingRowHeight: 39.h,
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
                                                .onPrimary),
                                    columns: const [
                                      DataColumn(
                                        label: Text('SR NO'),
                                      ),
                                      DataColumn(
                                        label: Text('EMPLOYEE NAME'),
                                      ),
                                      DataColumn(
                                        label: Text('CHECK-IN-TIME'),
                                      ),
                                      DataColumn(
                                        label: Text('HOURS'),
                                      ),
                                      DataColumn(
                                        label: Text('MINUTES'),
                                      ),
                                    ],
                                    rows: const [
                                      DataRow(cells: [
                                        DataCell(Text('1')),
                                        DataCell(Text('Tofik vhora')),
                                        DataCell(Text('5644645')),
                                        DataCell(Text('10:20')),
                                        DataCell(Text(
                                          '15000',
                                        )),
                                      ])
                                    ]),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  : Container(
                      margin: EdgeInsets.symmetric(horizontal: 10.w),
                      padding: const EdgeInsets.all(8),
                      width: width * 0.79,
                      height: height * 0.7,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 10,
                                offset: Offset(1.2, 1.3),
                                spreadRadius: 10)
                          ],
                          borderRadius: BorderRadius.circular(10),
                          border:
                              Border.all(color: Colors.black, width: 0.5.w)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("EMPLOYEE",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 5.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(height: 10.h),
                            Expanded(
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: DataTable(
                                    columnSpacing: 50.w,
                                    headingRowHeight: 39.h,
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
                                                .onPrimary),
                                    columns: const [
                                      DataColumn(
                                        label: Text('ID'),
                                      ),
                                      DataColumn(
                                        label: Text('EMPLOYEE NAME'),
                                      ),
                                      DataColumn(
                                        label: Text(
                                          'ACTIONS',
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                    rows:
                                        // TODO: this is static data just add your data list and map data copy below code and past into map
                                        [
                                      DataRow(cells: [
                                        const DataCell(Text('1')),
                                        const DataCell(Text('Tofik vhora')),
                                        DataCell(Row(
                                          children: [
                                            IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                  IconlyBold.time_circle,
                                                  size: 9.w,
                                                  color: Colors.black,
                                                )),
                                            IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.punch_clock_outlined,
                                                  size: 9.w,
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .primary,
                                                )),
                                            IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.coffee,
                                                  size: 9.w,
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .primary,
                                                )),
                                            IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.repeat,
                                                  size: 9.w,
                                                  color: Colors.black,
                                                )),
                                            IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.exit_to_app,
                                                  size: 9.w,
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .primary,
                                                )),
                                          ],
                                        )),
                                      ])
                                    ]),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
            ],
          ),
        ],
      ),
    );
  }
}
