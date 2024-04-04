import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PriceChange extends HookWidget {
  static const String route = 'PriceChange';
  const PriceChange({super.key});

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
                    "PRICE CHANGE LOG",
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
                      child: Row(
                        children: [
                          Text(
                            "From : ",
                            style: TextStyle(
                                fontSize: 6.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: width * 0.17,
                            height: height * 0.06,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.white)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(width: 1.w),
                                Text(
                                  "Apr,04,2020",
                                  style: TextStyle(
                                      fontSize: 5.sp, color: Colors.grey),
                                ),
                                Icon(
                                  Icons.calendar_month,
                                  size: 9.sp,
                                  color:
                                      Theme.of(context).colorScheme.onPrimary,
                                ),
                                SizedBox(width: 1.w),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "To : ",
                          style: TextStyle(
                              fontSize: 6.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          width: width * 0.17,
                          height: height * 0.06,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: Colors.white)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(width: 1.w),
                              Text(
                                "Apr,04,2020",
                                style: TextStyle(
                                    fontSize: 5.sp, color: Colors.grey),
                              ),
                              Icon(
                                Icons.calendar_month,
                                size: 9.sp,
                                color: Theme.of(context).colorScheme.onPrimary,
                              ),
                              SizedBox(width: 1.w),
                            ],
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      child: Row(
                        children: [
                          Text(
                            "Date Range : ",
                            style: TextStyle(
                                fontSize: 5.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 8.w),
                          Container(
                            alignment: Alignment.center,
                            padding:
                                EdgeInsets.symmetric(horizontal: width * 0.01),
                            width: width * 0.1,
                            height: height * 0.06,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
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
                              hint: Text(
                                'Today',
                                style: TextStyle(
                                    fontSize: 4.3.sp,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
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
                                        color: Colors.white,
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Row(
                  children: [
                    Checkbox(
                        value: true,
                        onChanged: (value) {},
                        checkColor: Colors.white),
                    Text(
                      "Recently Added",
                      style: TextStyle(
                          fontSize: 6.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
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
                  columnSpacing: 20.w,
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
                      label: Text('SKU'),
                    ),
                    DataColumn(
                      label: Text('Item Name'),
                    ),
                    DataColumn(
                      label: Text(
                        'Size',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Pack',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Old Price',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'ChangeDate-Time',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'User/Role',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Location/Module',
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
                      const DataCell(Text('Tofik vhora')),
                      const DataCell(Text('Tofik vhora')),
                      const DataCell(Text('Tofik vhora')),
                      const DataCell(Text('Tofik vhora')),
                      const DataCell(Text('Tofik vhora')),
                      const DataCell(Text('Tofik vhora')),
                    ])
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
