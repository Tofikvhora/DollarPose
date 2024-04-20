import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DialogsServices {
  static filterDialogs(BuildContext context, String? dropDownValue) {
    final List dummyList = [
      'Buy as case',
      'Open price',
      'Open Quantity',
      'No Revenue',
      'EBT',
      'No Return',
      'In-active'
    ];
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Dialog(
        alignment: Alignment.center,
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(vertical: 60.h, horizontal: 20.w),
          children: [
            Container(
              width: width * 0.8,
              height: height * 0.65,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.black),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: width,
                    height: height * 0.08,
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.4),
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(10),
                            topLeft: Radius.circular(10))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(),
                        Text(
                          "Filter Items",
                          style: TextStyle(
                              fontSize: 6.sp,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.onPrimary),
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.cancel,
                              size: 12.w,
                              color: Theme.of(context).colorScheme.onPrimary,
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    width: width,
                    height: height * 0.4,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            dropDownAndText(
                                context, dropDownValue, 'Item Type :'),
                            dropDownAndText(
                                context, dropDownValue, 'Item Size  :'),
                            dropDownAndText(
                                context, dropDownValue, 'Departm.. :'),
                            dropDownAndText(
                                context, dropDownValue, 'Sub Cate.. :'),
                            dropDownAndText(
                                context, dropDownValue, 'Select TAX :'),
                          ],
                        ),
                        Column(
                          children: [
                            dropDownAndText(
                                context, dropDownValue, 'Distribute  :'),
                            dropDownAndText(
                                context, dropDownValue, 'Item Pack  :'),
                            dropDownAndText(
                                context, dropDownValue, 'Category   :'),
                            dropDownAndText(
                                context, dropDownValue, 'Item Group :'),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 10.h, horizontal: 5.w),
                          width: width * 0.2,
                          height: height,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onSecondary)),
                          child: ListView.builder(
                            itemCount: dummyList.length,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return Row(
                                children: [
                                  Checkbox(
                                    value: true,
                                    onChanged: (value) {},
                                    checkColor: Colors.white,
                                  ),
                                  Text(
                                    dummyList[index],
                                    style: TextStyle(
                                        fontSize: 5.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    child: Row(
                      children: [
                        Text(
                          "Filter Condition :",
                          style: TextStyle(
                              fontSize: 4.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 1.w),
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(
                                  horizontal: width * 0.01),
                              width: width * 0.13,
                              height: height * 0.05,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Colors.white)),
                              child: DropdownButton(
                                focusColor: Colors.white.withOpacity(0.1),
                                value: dropDownValue,
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
                                  '<Select Filter..',
                                  style: TextStyle(
                                      fontSize: 4.3.sp,
                                      color: Colors.white,
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
                                    dropDownValue = newValue;
                                  }
                                  print(newValue.toString());
                                },
                              ),
                            ),
                            SizedBox(width: 8.w),
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(
                                  horizontal: width * 0.01),
                              width: width * 0.11,
                              height: height * 0.05,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Colors.white)),
                              child: DropdownButton(
                                focusColor: Colors.white.withOpacity(0.1),
                                value: dropDownValue,
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
                                  'Operator',
                                  style: TextStyle(
                                      fontSize: 4.3.sp,
                                      color: Colors.white,
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
                                    dropDownValue = newValue;
                                  }
                                  print(newValue.toString());
                                },
                              ),
                            ),
                            SizedBox(width: 8.w),
                            SizedBox(
                              width: width * 0.11,
                              height: height * 0.05,
                              child: TextField(
                                keyboardType: TextInputType.number,
                                textAlignVertical: TextAlignVertical.center,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 6.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.zero,
                                  hintStyle: TextStyle(
                                      fontSize: 5.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                  hintText: '0.00',
                                  prefixIcon: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 2.w, vertical: 5.h),
                                    child: FaIcon(
                                      FontAwesomeIcons.usd,
                                      size: 6.w,
                                      color: Colors.white,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          const BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(5)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          const BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(5)),
                                  errorBorder: OutlineInputBorder(
                                      borderSide:
                                          const BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(5)),
                                  focusedErrorBorder: OutlineInputBorder(
                                      borderSide:
                                          const BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                              ),
                            ),
                            SizedBox(width: 8.w),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    width: width,
                    height: height * 0.09,
                    color: Colors.grey.withOpacity(0.4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: width * 0.1,
                          height: height * 0.06,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Theme.of(context).colorScheme.onSecondary,
                          ),
                          child: Text(
                            'Apply',
                            style: TextStyle(
                                fontSize: 6.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(width: 5.w),
                        Container(
                          alignment: Alignment.center,
                          width: width * 0.1,
                          height: height * 0.06,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Theme.of(context).colorScheme.onSecondary,
                          ),
                          child: Text(
                            'Reset',
                            style: TextStyle(
                                fontSize: 6.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(width: 5.w),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }

  static departmentDialogs(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Dialog(
      child: ListView(
        padding: EdgeInsets.symmetric(vertical: 60.h),
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Container(
            color: Colors.black,
            width: width * 0.8,
            height: height * 0.65,
            child: Column(
              children: [
                commonHeading(context, 'Department'),
                Container(
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
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      headingRowColor: MaterialStatePropertyAll<Color>(
                          Theme.of(context).colorScheme.onSecondary),
                      columns: const [
                        DataColumn(
                          label: Text('DEPARTMENT NAME'),
                        ),
                        DataColumn(
                          label: Text('IS FAVOURITE'),
                        ),
                        DataColumn(
                          label: Text(
                            'DEPT SHORTCUT',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'SURCHARGE',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'STATUS',
                            textAlign: TextAlign.center,
                          ),
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
                          const DataCell(Text('Tofik vhora')),
                          const DataCell(Text('Tofik vhora')),
                          const DataCell(Text('Tofik vhora')),
                          DataCell(Icon(
                            Icons.arrow_forward_rounded,
                            size: 10.w,
                            color: Theme.of(context).colorScheme.onPrimary,
                          )),
                        ])
                      ]),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  static tagAnalog(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Dialog(
      child: ListView(
        padding: EdgeInsets.symmetric(vertical: 170.h),
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Container(
            color: Colors.black,
            width: width * 0.8,
            height: height * 0.35,
            child: Column(
              children: [
                commonHeading(context, 'Tag Analog'),
                Column(
                  children: [
                    SizedBox(
                      height: 8.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        textFieldAndText(context, 'UPC : ', 0.16),
                        textFieldAndText(context, 'Item : ', 0.28),
                        textFieldAndText(context, 'Price : ', 0.28),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          textFieldAndText(context, 'UPC : ', 0.16),
                          SizedBox(
                            width: 2.w,
                          ),
                          Checkbox(value: true, onChanged: (value) {}),
                          SizedBox(
                            width: 2.w,
                          ),
                          Text(
                            "MULTIPLY BY PACK",
                            style: TextStyle(
                                fontSize: 6.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        alignment: Alignment.center,
                        width: width * 0.1,
                        height: height * 0.06,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Theme.of(context).colorScheme.onSecondary,
                        ),
                        child: Text(
                          'SAVE',
                          style: TextStyle(
                              fontSize: 6.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  static changeUpc(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Dialog(
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.symmetric(vertical: 60.h, horizontal: 20.w),
        children: [
          Container(
            width: width * 0.8,
            height: height * 0.65,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.black),
            child: Column(
              children: [
                commonHeading(context, 'Change UPC'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Text('UPC/Barcode   : ',
                            style: TextStyle(
                                fontSize: 5.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        SizedBox(width: 2.w),
                        SizedBox(
                          width: width * 0.4,
                          height: height * 0.065,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            textAlignVertical: TextAlignVertical.center,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 6.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.cancel,
                                size: 9.w,
                                color: Theme.of(context).colorScheme.onPrimary,
                              ),
                              contentPadding: EdgeInsets.zero,
                              hintStyle: TextStyle(
                                  fontSize: 5.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(5)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(5)),
                              errorBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(5)),
                              focusedErrorBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                          ),
                        ),
                        SizedBox(width: 2.w),
                      ],
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: width * 0.09,
                      height: height * 0.065,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Theme.of(context).colorScheme.onSecondary,
                      ),
                      child: Text(
                        'AUTO',
                        style: TextStyle(
                            fontSize: 6.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: width * 0.12,
                      height: height * 0.065,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.white),
                        color: Colors.black,
                      ),
                      child: Text(
                        'Add To list',
                        style: TextStyle(
                            fontSize: 6.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 14.h),
                  width: width * 0.76,
                  height: height * 0.37,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white),
                      color: Colors.black),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    child: DataTable(
                        columnSpacing: 60.w,
                        headingRowHeight: 39.h,
                        dataTextStyle: TextStyle(
                            fontSize: 4.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        headingTextStyle: TextStyle(
                            fontSize: 5.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        headingRowColor: MaterialStatePropertyAll<Color>(
                            Theme.of(context).colorScheme.onSecondary),
                        columns: const [
                          DataColumn(
                            label: Text('UPC List'),
                          ),
                          DataColumn(
                            label: Text(
                              'Main UPC',
                              textAlign: TextAlign.center,
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              '',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                        rows:
                            // TODO: this is static data just add your data list and map data copy below code and past into map
                            [
                          DataRow(cells: [
                            const DataCell(Text('1')),
                            DataCell(Checkbox(
                                value: true,
                                checkColor: Colors.white,
                                onChanged: (value) {})),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.delete,
                                  size: 10.w,
                                  color:
                                      Theme.of(context).colorScheme.onPrimary,
                                ),
                                Icon(
                                  Icons.copy,
                                  size: 10.w,
                                  color:
                                      Theme.of(context).colorScheme.onPrimary,
                                ),
                              ],
                            )),
                          ])
                        ]),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
                    alignment: Alignment.center,
                    width: width * 0.1,
                    height: height * 0.06,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Theme.of(context).colorScheme.onSecondary,
                    ),
                    child: Text(
                      'SAVE',
                      style: TextStyle(
                          fontSize: 6.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  static changePriceDialogs(BuildContext context, Widget keypad) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Dialog(
      child: ListView(
        padding: EdgeInsets.symmetric(vertical: 60.h),
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Container(
            color: Colors.black,
            width: width * 0.8,
            height: height * 0.68,
            child: Column(
              children: [
                commonHeading(context, 'CHANGE PRICE,COST,QTY'),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Container(
                      width: width * 0.62,
                      height: height * 0.56,
                      color: Colors.black,
                      child: Column(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "RETAIL PRICE  :",
                                      style: TextStyle(
                                          fontSize: 5.sp,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: width * 0.35,
                                      height: height * 0.065,
                                      child: TextField(
                                        keyboardType: TextInputType.number,
                                        textAlignVertical:
                                            TextAlignVertical.center,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontSize: 6.sp,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                        decoration: InputDecoration(
                                          suffixIcon: Icon(
                                            Icons.cancel,
                                            size: 9.w,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onPrimary,
                                          ),
                                          contentPadding: EdgeInsets.zero,
                                          hintStyle: TextStyle(
                                              fontSize: 5.sp,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  color: Colors.white),
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  color: Colors.white),
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          errorBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  color: Colors.white),
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                      color: Colors.white),
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.symmetric(horizontal: 10.w),
                            width: width * 0.65,
                            height: height * 0.07,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.grey.withOpacity(0.5)),
                            child: const Text(
                              'LABEL PRINT',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 5.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.withOpacity(0.4),
                      ),
                      width: width * 0.28,
                      height: height * 0.58,
                      child: keypad,
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  static priceCheck(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Dialog(
      child: ListView(
        padding: EdgeInsets.symmetric(vertical: 30.h),
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Container(
            color: Colors.black,
            width: width * 0.8,
            height: height * 0.9,
            child: Column(
              children: [
                commonHeading(context, 'Price-Check'),
                SizedBox(
                  width: width,
                  height: height * 0.17,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            textFieldAndText(
                                context, 'UPC                      :', 0.3),
                            textFieldAndText(
                                context, 'SKU                      :', 0.3),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            textFieldAndText(
                                context, 'ItemName            :', 0.3),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  width: width * 0.13,
                                  margin: EdgeInsets.symmetric(
                                      vertical: 10.h, horizontal: 5.w),
                                  height: height * 0.06,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSecondary,
                                  ),
                                  child: Text(
                                    'RESET',
                                    style: TextStyle(
                                        fontSize: 6.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  width: width * 0.13,
                                  margin: EdgeInsets.symmetric(
                                      vertical: 10.h, horizontal: 3.w),
                                  height: height * 0.06,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSecondary,
                                  ),
                                  child: Text(
                                    'LOOK-UP',
                                    style: TextStyle(
                                        fontSize: 6.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: width,
                  height: height * 0.22,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: width * 0.6,
                        height: height * 0.3,
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  textFieldAndText(context,
                                      'Size                      :', 0.15),
                                  textFieldAndText(context,
                                      'Pack                      :', 0.15),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.w, vertical: 10.h),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  textFieldAndText(context,
                                      'Unit Cost              :', 0.15),
                                  textFieldAndText(context,
                                      'Retail Price               :', 0.15),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.w, vertical: 5.h),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  textFieldAndText(context,
                                      'QOH                      :', 0.15),
                                  textFieldAndText(context,
                                      'Surcharge                 :', 0.15),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("QUANTITY",
                                  style: TextStyle(
                                      fontSize: 5.w,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                              Row(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    width: 30.w,
                                    height: 50.h,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onSecondary),
                                    child: Padding(
                                      padding: EdgeInsets.only(bottom: 30.h),
                                      child: Icon(
                                        Icons.minimize,
                                        size: 10.w,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "OR",
                                    style: TextStyle(
                                        fontSize: 5.sp,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    width: 30.w,
                                    height: 50.h,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onSecondary),
                                    child: Icon(
                                      Icons.add,
                                      size: 10.w,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 20.h),
                          Row(
                            children: [
                              Checkbox(
                                value: true,
                                onChanged: (value) {},
                                checkColor: Colors.white,
                              ),
                              SizedBox(width: 10.w),
                              Text(
                                "APPLIED PROMOTION",
                                style: TextStyle(
                                    fontSize: 6.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: width,
                  height: height * 0.3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: width * 0.28,
                        height: height * 0.29,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.white)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 3.h),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "TAX",
                                    style: TextStyle(
                                        fontSize: 6.sp,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "PER (%)",
                                    style: TextStyle(
                                        fontSize: 6.sp,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "AMOUNT",
                                    style: TextStyle(
                                        fontSize: 6.sp,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 5.h, horizontal: 10.w),
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "Total :     \$0.00",
                                  style: TextStyle(
                                      fontSize: 6.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: width * 0.28,
                        height: height * 0.29,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.white)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 3.h),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "QTY",
                                    style: TextStyle(
                                        fontSize: 6.sp,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "PRICE",
                                    style: TextStyle(
                                        fontSize: 6.sp,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: width * 0.28,
                            height: height * 0.18,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.white)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Radio(
                                        value: true,
                                        groupValue: 0,
                                        onChanged: (value) {}),
                                    Text("5% (5.00%)",
                                        style: TextStyle(
                                            fontSize: 6.sp,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                        value: true,
                                        groupValue: 0,
                                        onChanged: (value) {}),
                                    Text("5%OFF",
                                        style: TextStyle(
                                            fontSize: 5.sp,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onPrimary,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                width: width * 0.13,
                                height: height * 0.1,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color:
                                      Theme.of(context).colorScheme.onSecondary,
                                ),
                                child: Text(
                                  "Price w/TAX \n \$0.00",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 5.w,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(width: 5.w),
                              Container(
                                alignment: Alignment.center,
                                width: width * 0.13,
                                height: height * 0.1,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.grey.withOpacity(0.4),
                                ),
                                child: Text(
                                  "Price w/TAX \n \$0.00",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 5.w,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  static holdDialog(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Center(
      child: Dialog(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 150.h, horizontal: 50.w),
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Container(
              color: Colors.black,
              width: width * 0.8,
              height: height * 0.3,
              child: Column(
                children: [
                  commonHeading(context, 'Hold'),
                  Center(
                    child: textFieldAndText(
                        context,
                        '       ENTER REMARK                             :     ',
                        0.4),
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: width * 0.15,
                        height: height * 0.065,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Theme.of(context).colorScheme.onSecondary),
                        child: Text(
                          'OK',
                          style: TextStyle(
                              fontSize: 6.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(width: 7.w),
                      Container(
                        alignment: Alignment.center,
                        width: width * 0.15,
                        height: height * 0.065,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Theme.of(context).colorScheme.onSecondary),
                        child: Text(
                          'CENCEL',
                          style: TextStyle(
                              fontSize: 6.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget textFieldAndText(
    BuildContext context, String name, double widthOfField) {
  final width = MediaQuery.of(context).size.width;
  final height = MediaQuery.of(context).size.height;
  return Row(
    children: [
      Text(name,
          style: TextStyle(
              fontSize: 4.sp,
              color: Colors.white,
              fontWeight: FontWeight.bold)),
      SizedBox(width: 2.w),
      SizedBox(
        width: width * widthOfField,
        height: height * 0.05,
        child: TextField(
          keyboardType: TextInputType.number,
          textAlignVertical: TextAlignVertical.center,
          textAlign: TextAlign.start,
          style: TextStyle(
              fontSize: 6.sp, color: Colors.white, fontWeight: FontWeight.bold),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.zero,
            hintStyle: TextStyle(
                fontSize: 5.sp,
                color: Colors.white,
                fontWeight: FontWeight.bold),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(5)),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(5)),
            errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(5)),
            focusedErrorBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(5)),
          ),
        ),
      ),
    ],
  );
}

Widget commonHeading(BuildContext context, String name) {
  final width = MediaQuery.of(context).size.width;
  final height = MediaQuery.of(context).size.height;
  return Container(
    width: width,
    height: height * 0.08,
    decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.4),
        borderRadius: const BorderRadius.only(
            topRight: Radius.circular(10), topLeft: Radius.circular(10))),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(),
        Text(
          name,
          style: TextStyle(
              fontSize: 6.sp,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.onPrimary),
        ),
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.cancel,
              size: 12.w,
              color: Theme.of(context).colorScheme.onPrimary,
            ))
      ],
    ),
  );
}

Widget dropDownAndText(
    BuildContext context, String? dropDownValue, String itemName) {
  final width = MediaQuery.of(context).size.width;
  final height = MediaQuery.of(context).size.height;
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 8.h),
    child: Row(
      children: [
        Text(
          itemName,
          style: TextStyle(
              fontSize: 4.sp, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 1.w),
        Container(
          margin: EdgeInsets.only(top: 3.h),
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: width * 0.01),
          width: width * 0.18,
          height: height * 0.05,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.white)),
          child: DropdownButton(
            focusColor: Colors.white.withOpacity(0.1),
            value: dropDownValue,
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
              '<Select Server>',
              style: TextStyle(
                  fontSize: 5.sp,
                  color: Colors.white,
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
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              );
            }).toList(),
            onChanged: (newValue) {
              if (newValue != null) {
                dropDownValue = newValue;
              }
              print(newValue.toString());
            },
          ),
        ),
      ],
    ),
  );
}
