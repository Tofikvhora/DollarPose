import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:ionicons/ionicons.dart';

import '../Widgets/DialogsCommon.dart';

class ActionPage extends HookWidget {
  static const String route = 'ActionPage';
  const ActionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isClock = useState(true);
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 15.h),
                    padding: EdgeInsets.symmetric(horizontal: 12.w),
                    alignment: Alignment.center,
                    width: 30.w,
                    height: 60.h,
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.onSecondary,
                        shape: BoxShape.circle),
                    child: Icon(Icons.arrow_back_ios,
                        size: 10.w, color: Colors.white)),
              ),
              Image.asset('asset/Icons/Logo_transparent.png',
                  width: 100.w, height: 130.h, fit: BoxFit.fitHeight),
              Row(
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
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.w),
            padding: const EdgeInsets.all(8),
            width: width * 0.79,
            height: height * 0.7,
            decoration: BoxDecoration(
                color: Colors.black,
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      offset: Offset(1.2, 1.3),
                      spreadRadius: 10)
                ],
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black, width: 0.5.w)),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("EMPLOYEE",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 9.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 10.h),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: DataTable(
                          columnSpacing: 80.w,
                          headingRowHeight: 39.h,
                          dataTextStyle: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          headingTextStyle: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)),
                          headingRowColor: MaterialStatePropertyAll<Color>(
                              Theme.of(context).colorScheme.onPrimary),
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
                                      onPressed: () {
                                        showDialog(
                                          context: context,
                                          builder: (context) {
                                            return const DialogsCommon(
                                              name: 'TIME',
                                            );
                                          },
                                        );
                                      },
                                      icon: Icon(
                                        IconlyBold.time_circle,
                                        size: 9.w,
                                        color: Colors.white,
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
                                      onPressed: () {
                                        showDialog(
                                          context: context,
                                          builder: (context) {
                                            return const DialogsCommon(
                                              name: 'BREAK',
                                            );
                                          },
                                        );
                                      },
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
                                        color: Colors.white,
                                      )),
                                  IconButton(
                                      onPressed: () {
                                        showDialog(
                                          context: context,
                                          builder: (context) {
                                            return const DialogsCommon(
                                              name: 'LEAVE',
                                            );
                                          },
                                        );
                                      },
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
    );
  }
}
