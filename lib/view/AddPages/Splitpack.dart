import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplitPack extends HookWidget {
  const SplitPack({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: ListView(
      padding: EdgeInsets.zero,
      children: [
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buttonAndText(context, "Add New pack", Icons.add),
                buttonAndText(
                    context, "Add Pack From Existing List", Icons.add),
                buttonAndText(context, "Remove Pack", Icons.remove),
              ],
            )
          ],
        ),
        SizedBox(height: 5.h),
        DataTable(
            columnSpacing: 20.w,
            headingRowHeight: 39.h,
            dataTextStyle: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
            headingTextStyle: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            headingRowColor: MaterialStatePropertyAll<Color>(
                Theme.of(context).colorScheme.onSecondary),
            columns: const [
              DataColumn(
                label: Text('Pack Name'),
              ),
              DataColumn(
                label: Text('UPC'),
              ),
              DataColumn(
                label: Text('Cost'),
              ),
              DataColumn(
                label: Text('Buy Down'),
              ),
              DataColumn(
                label: Text('Price'),
              ),
              DataColumn(
                label: Text('Margin'),
              ),
              DataColumn(
                label: Text('MarkUp'),
              ),
              DataColumn(
                label: Text('QOH'),
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
                DataCell(Text('1')),
                DataCell(Text('1')),
              ])
            ]),
      ],
    ));
  }
}

Widget buttonAndText(BuildContext context, String name, IconData icons) {
  final width = MediaQuery.of(context).size.width;
  final height = MediaQuery.of(context).size.height;
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 5.w),
    margin: EdgeInsets.symmetric(horizontal: 3.w),
    height: height * 0.06,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Theme.of(context).colorScheme.onSecondary),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          icons,
          size: 6.w,
          color: Colors.white,
        ),
        Text(name,
            style: TextStyle(
                fontSize: 5.w,
                fontWeight: FontWeight.bold,
                color: Colors.white))
      ],
    ),
  );
}
