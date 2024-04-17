import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ReprintPage extends HookWidget {
  static const String route = 'ReprintPage';
  const ReprintPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final _dropDownValue = useState<String?>(null);
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(width: 4.w),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 13.w,
                      height: 13.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Theme.of(context).colorScheme.onSecondary,
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4.w),
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 8.w,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 4.w),
                  Text(
                    "REPRINT",
                    style: TextStyle(
                        fontSize: 6.w,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onPrimary),
                  ),
                ],
              ),
              Image.asset(
                'asset/Icons/Logo_transparent.png',
                width: 60.w,
                height: 90.h,
              ),
              SizedBox(
                width: 40.w,
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      child: Container(
                        width: width * 0.32,
                        height: height * 0.075,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.white)),
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(
                                  horizontal: width * 0.01),
                              width: width * 0.06,
                              height: height * 0.075,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white)),
                              child: DropdownButton(
                                focusColor: Colors.white.withOpacity(0.1),
                                value: _dropDownValue.value,
                                underline: const SizedBox(),
                                elevation: 10,
                                isExpanded: true,
                                isDense: false,
                                borderRadius: BorderRadius.circular(10),
                                dropdownColor: Colors.white,
                                enableFeedback: false,
                                iconSize: 10.w,
                                iconEnabledColor: Colors.white,
                                items: <String>[
                                  '<Select server>',
                                  'dev',
                                  'Port 1',
                                  'Port 2',
                                  'Port 3'
                                ].map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style: TextStyle(
                                          fontSize: 5.sp,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  );
                                }).toList(),
                                onChanged: (newValue) {
                                  if (newValue != null) {
                                    _dropDownValue.value = newValue;
                                  }
                                  print(newValue.toString());
                                },
                              ),
                            ),
                            Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.only(left: 4.w),
                                width: width * 0.223,
                                height: height * 0.075,
                                child: TextField(
                                  textAlignVertical: TextAlignVertical.center,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                  decoration: InputDecoration(
                                      suffixIcon: Icon(
                                        Icons.cancel,
                                        size: 6.w,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary,
                                      ),
                                      hintText: 'BarCode',
                                      hintStyle: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey),
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      focusedErrorBorder: InputBorder.none,
                                      errorBorder: InputBorder.none),
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: width * 0.065,
                              height: height * 0.075,
                              decoration: BoxDecoration(
                                  color:
                                      Theme.of(context).colorScheme.onPrimary,
                                  borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(5),
                                      bottomRight: Radius.circular(5))),
                              child: FaIcon(
                                FontAwesomeIcons.search,
                                size: 7.w,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            Radio(
                                value: true,
                                groupValue: 0,
                                onChanged: (value) {},
                                activeColor:
                                    Theme.of(context).colorScheme.onPrimary),
                            Text(
                              "CURRENT REGISTER",
                              style: TextStyle(
                                  fontSize: 5.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                                value: false,
                                toggleable: true,
                                groupValue: 0,
                                onChanged: (value) {},
                                activeColor:
                                    Theme.of(context).colorScheme.onPrimary),
                            Text(
                              "ALL REGISTER",
                              style: TextStyle(
                                  fontSize: 5.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: width * 0.12,
                      height: height * 0.06,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Theme.of(context).colorScheme.onSecondary),
                      child: Text(
                        'RESET FILTER',
                        style: TextStyle(
                            fontSize: 5.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(width: 3.w),
                    Container(
                      alignment: Alignment.center,
                      width: width * 0.12,
                      height: height * 0.06,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Theme.of(context).colorScheme.onSecondary),
                      child: Text(
                        'ADVANCE FILTER',
                        style: TextStyle(
                            fontSize: 5.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10.h),
              width: width,
              height: height * 0.5,
              color: Colors.black,
              child: DataTable(
                  columnSpacing: 10.w,
                  headingRowHeight: 39.h,
                  dataTextStyle: TextStyle(
                      fontSize: 4.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  headingTextStyle: TextStyle(
                      fontSize: 4.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  headingRowColor: MaterialStatePropertyAll<Color>(
                      Theme.of(context).colorScheme.onSecondary),
                  columns: const [
                    DataColumn(
                      label: Text('Pos Orderid'),
                    ),
                    DataColumn(
                      label: Text('Transaction Date'),
                    ),
                    DataColumn(
                      label: Text(
                        'SubTotal',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Tax',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Discount',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Total',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Customer',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Payment Type',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Status',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                  rows:
                      // TODO: this is static data just add your data list and map data copy below code and past into map
                      const [
                    DataRow(cells: [
                      DataCell(Text('1')),
                      DataCell(Text('Tofik vhora')),
                      DataCell(Text('Tofik vhora')),
                      DataCell(Text('Tofik vhora')),
                      DataCell(Text('Tofik vhora')),
                      DataCell(Text('Tofik vhora')),
                      DataCell(Text('Tofik vhora')),
                      DataCell(Text('Tofik vhora')),
                      DataCell(Text('Tofik vhora')),
                    ])
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
