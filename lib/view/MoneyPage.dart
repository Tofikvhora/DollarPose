import 'package:dollarpos/Widgets/KeyPad.dart';
import 'package:dollarpos/constant/DialogsClass.dart';
import 'package:dollarpos/utils/StringNavigation.dart';
import 'package:dollarpos/view/EndShiftPage.dart';
import 'package:dollarpos/view/ReprintPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconly/iconly.dart';
import 'package:ionicons/ionicons.dart';

class MoneyPage extends HookWidget {
  static const String route = 'MoneyPage';
  const MoneyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final _pin = useState<String>('');
    final isLotto = useState(true);
    final isSwap = useState(true);
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 0),
        children: [
          SafeArea(
            child: Container(
              color: Colors.grey.withOpacity(0.5),
              width: width,
              height: height * 0.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // first row icons home and profile and text
                  // home icons
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    child: SizedBox(
                      width: width * 0.3,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          /// this is icons row
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: FaIcon(
                                    FontAwesomeIcons.house,
                                    size: 12.w,
                                    color: Colors.white.withOpacity(0.5),
                                  )),
                              IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: FaIcon(
                                    FontAwesomeIcons.userAstronaut,
                                    size: 12.w,
                                    color: Colors.white.withOpacity(0.5),
                                  )),
                            ],
                          ),

                          /// this is text
                          Text(
                            'T/A : Mar 28,2003',
                            style: TextStyle(
                                fontSize: 5.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  // logo
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Image.asset(
                      'asset/Icons/Logo_transparent.png',
                      width: 85.w,
                      height: 80.h,
                      fit: BoxFit.fitHeight,
                    ),
                  ),

                  // other icons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      /// date and time column
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3.w),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Thu,Mar 28",
                              style: TextStyle(
                                  fontSize: 5.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "04:04:52 AM",
                              style: TextStyle(
                                  fontSize: 5.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),

                      //icons
                      IconButton(
                          onPressed: () {
                            isSwap.value = !isSwap.value;
                          },
                          icon: FaIcon(
                            FontAwesomeIcons.exchange,
                            size: 12.w,
                            color: Colors.white.withOpacity(0.5),
                          )),
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            IconlyBold.category,
                            size: 12.w,
                            color: Colors.white.withOpacity(0.5),
                          )),

                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: FaIcon(
                            FontAwesomeIcons.lock,
                            size: 12.w,
                            color: Colors.white.withOpacity(0.5),
                          )),
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Ionicons.help,
                            size: 12.w,
                            color: Colors.white.withOpacity(0.5),
                          )),
                    ],
                  ),

                  /// second row of all icons and support
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 3.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // first container of main content
                isSwap.value
                    ? Row(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 1.w, vertical: 1.h),
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            width: width * 0.41,
                            height: height * 0.73,
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 12.h),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      // first icons
                                      Container(
                                        width: 15.w,
                                        decoration: BoxDecoration(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onSecondary,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        height: 38.h,
                                        alignment: Alignment.center,
                                        child: const Icon(
                                          IconlyBold.category,
                                          color: Colors.white,
                                        ),
                                      ),
                                      // upc text field
                                      Container(
                                        alignment: Alignment.center,
                                        width: 40.w,
                                        height: 40.h,
                                        child: TextField(
                                          style: TextStyle(
                                              fontSize: 5.5.sp,
                                              color: Colors.white),
                                          textAlignVertical:
                                              TextAlignVertical.center,
                                          decoration: InputDecoration(
                                            hintText: 'UPC',
                                            hintStyle: TextStyle(
                                                fontSize: 4.sp,
                                                color: Colors.white),
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                borderSide: const BorderSide(
                                                    color: Colors.white)),
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                borderSide: const BorderSide(
                                                    color: Colors.white)),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    borderSide:
                                                        const BorderSide(
                                                            color:
                                                                Colors.white)),
                                            errorBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                borderSide: const BorderSide(
                                                    color: Colors.white)),
                                          ),
                                        ),
                                      ),
                                      // item text field
                                      SizedBox(
                                        width: 75.w,
                                        height: 40.h,
                                        child: TextField(
                                          style: TextStyle(
                                              fontSize: 6.sp,
                                              color: Colors.white),
                                          decoration: InputDecoration(
                                            hintText: 'Items Name/SKU',
                                            hintStyle: TextStyle(
                                                fontSize: 3.9.sp,
                                                color: Colors.white),
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                borderSide: const BorderSide(
                                                    color: Colors.white)),
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                borderSide: const BorderSide(
                                                    color: Colors.white)),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    borderSide:
                                                        const BorderSide(
                                                            color:
                                                                Colors.white)),
                                            errorBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                borderSide: const BorderSide(
                                                    color: Colors.white)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                // data table
                                Expanded(
                                  child: DataTable(
                                      columnSpacing: 20.w,
                                      headingRowHeight: 35.h,
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
                                          label: Text('UPC'),
                                        ),
                                        DataColumn(
                                          label: Text('Name'),
                                        ),
                                        DataColumn(
                                          label: Text('QTY'),
                                        ),
                                        DataColumn(
                                          label: Text('TOTAL'),
                                        ),
                                      ],
                                      rows: const [
                                        DataRow(cells: [
                                          DataCell(Text('1')),
                                          DataCell(Text('Arshik')),
                                          DataCell(Text('5644645')),
                                          DataCell(Text(
                                            '15000',
                                          )),
                                        ])
                                      ]),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        RichTextReuse(
                                          title: 'SubTotal         ',
                                          amount: '      \$ 0.00',
                                        ),
                                        RichTextReuse(
                                          title: 'Discount         ',
                                          amount: '      \$ 0.00',
                                        ),
                                        RichTextReuse(
                                          title: 'Tax                  ',
                                          amount: '      \$ 0.00',
                                        ),
                                        RichTextReuse(
                                          title: 'SurChange      ',
                                          amount: '     \$ 0.00',
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 8.w),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            '0',
                                            style: TextStyle(
                                                fontSize: 9.sp,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onPrimary,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            'Items',
                                            style: TextStyle(
                                                fontSize: 6.sp,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      width: width * 0.1,
                                      height: height * 0.17,
                                      // color: Theme.of(context)
                                      //     .colorScheme
                                      //     .onSecondary,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            'Change Due',
                                            style: TextStyle(
                                                fontSize: 6.sp,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            '\$0.00',
                                            style: TextStyle(
                                                fontSize: 7.sp,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onPrimary,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            'Check out',
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
                              ],
                            ),
                          ),
                          // lotto container
                          SizedBox(
                            width: width * 0.58,
                            height: height * 0.76,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        // TODO:  add Some logic
                                        isLotto.value = true;
                                      },
                                      child: Container(
                                        alignment: Alignment.center,
                                        width: width * 0.1,
                                        height: height * 0.065,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: isLotto.value == true
                                                ? Theme.of(context)
                                                    .colorScheme
                                                    .onSecondary
                                                : Colors.grey.withOpacity(0.4)),
                                        child: Text(
                                          'Lotto',
                                          style: TextStyle(
                                              fontSize: 6.sp,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        // TODO:  add Some logic
                                        isLotto.value = false;
                                      },
                                      child: Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 3.w),
                                        alignment: Alignment.center,
                                        width: width * 0.1,
                                        height: height * 0.065,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: isLotto.value == false
                                                ? Theme.of(context)
                                                    .colorScheme
                                                    .onSecondary
                                                : Colors.grey.withOpacity(0.4)),
                                        child: Text(
                                          'Department',
                                          style: TextStyle(
                                              fontSize: 6.sp,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: height * 0.69,
                                  width: width,
                                  color: Colors.black38.withOpacity(0.1),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      //  subtotal and other details in row item
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(
                                            width: width * 0.26,
                                            height: height * 0.51,
                                            child: isLotto.value == true
                                                ? GridView.builder(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 0.h),
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    shrinkWrap: true,
                                                    itemCount: 6,
                                                    gridDelegate:
                                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                                            crossAxisCount: 2),
                                                    itemBuilder:
                                                        (context, index) {
                                                      return Container(
                                                        margin: EdgeInsets
                                                            .symmetric(
                                                                horizontal: 1.w,
                                                                vertical: 3.h),
                                                        width: width * 0.15,
                                                        height: height * 0.03,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                            color: Colors.grey
                                                                .withOpacity(
                                                                    0.6)),
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceAround,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Image.asset(
                                                              'asset/Icons/cash-machine.png',
                                                              width: 25.w,
                                                              height: 80.h,
                                                              color:
                                                                  Colors.white,
                                                              fit: BoxFit
                                                                  .fitWidth,
                                                            ),
                                                            Text(
                                                              "NonTax",
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      6.sp,
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            )
                                                          ],
                                                        ),
                                                      );
                                                    },
                                                  )
                                                : Container(),
                                          ),
                                          SizedBox(
                                            width: width * 0.28,
                                            height: height * 0.57,
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                    width: width * 0.25,
                                                    height: height * 0.06,
                                                    child: TextFormField(
                                                      readOnly: true,
                                                      initialValue: _pin.value,
                                                      style: TextStyle(
                                                          fontSize: 12.sp,
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                      textAlignVertical:
                                                          TextAlignVertical
                                                              .bottom,
                                                      textAlign:
                                                          TextAlign.right,
                                                      textDirection:
                                                          TextDirection.rtl,
                                                      decoration:
                                                          InputDecoration(
                                                        hintText: '0.00',
                                                        hintStyle: TextStyle(
                                                            fontSize: 12.sp,
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                        prefixIcon: Icon(
                                                          FontAwesomeIcons.usd,
                                                          size: 10.w,
                                                          color: Colors.white,
                                                        ),
                                                        enabledBorder: UnderlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                            borderSide:
                                                                const BorderSide(
                                                                    color: Colors
                                                                        .white)),
                                                        focusedBorder: UnderlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                            borderSide:
                                                                const BorderSide(
                                                                    color: Colors
                                                                        .white)),
                                                        focusedErrorBorder:
                                                            UnderlineInputBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                                borderSide: const BorderSide(
                                                                    color: Colors
                                                                        .white)),
                                                      ),
                                                    )),
                                                SizedBox(
                                                    width: width * 0.28,
                                                    height: height * 0.48,
                                                    child: KeyPadCustom(
                                                        pin: _pin.value)),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 10.h),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            margin: EdgeInsets.symmetric(
                                                vertical: 4.h, horizontal: 3.w),
                                            width: 34.w,
                                            height: 60.h,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onSecondary),
                                            child: Text(
                                              'CARD',
                                              style: TextStyle(
                                                  fontSize: 7.sp,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              showDialog(
                                                context: context,
                                                builder: (context) {
                                                  return DialogsServices
                                                      .cashDialog(
                                                          context,
                                                          Column(
                                                            children: [
                                                              SizedBox(
                                                                  width: width *
                                                                      0.25,
                                                                  height:
                                                                      height *
                                                                          0.07,
                                                                  child:
                                                                      TextFormField(
                                                                    readOnly:
                                                                        true,
                                                                    initialValue:
                                                                        _pin.value,
                                                                    style: TextStyle(
                                                                        fontSize: 12
                                                                            .sp,
                                                                        color: Colors
                                                                            .white,
                                                                        fontWeight:
                                                                            FontWeight.bold),
                                                                    textAlignVertical:
                                                                        TextAlignVertical
                                                                            .bottom,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .right,
                                                                    textDirection:
                                                                        TextDirection
                                                                            .rtl,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      hintText:
                                                                          '0.00',
                                                                      hintStyle: TextStyle(
                                                                          fontSize: 12
                                                                              .sp,
                                                                          color: Colors
                                                                              .white,
                                                                          fontWeight:
                                                                              FontWeight.bold),
                                                                      prefixIcon:
                                                                          Icon(
                                                                        FontAwesomeIcons
                                                                            .usd,
                                                                        size: 10
                                                                            .w,
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                      enabledBorder: UnderlineInputBorder(
                                                                          borderRadius: BorderRadius.circular(
                                                                              10),
                                                                          borderSide:
                                                                              const BorderSide(color: Colors.white)),
                                                                      focusedBorder: UnderlineInputBorder(
                                                                          borderRadius: BorderRadius.circular(
                                                                              10),
                                                                          borderSide:
                                                                              const BorderSide(color: Colors.white)),
                                                                      focusedErrorBorder: UnderlineInputBorder(
                                                                          borderRadius: BorderRadius.circular(
                                                                              10),
                                                                          borderSide:
                                                                              const BorderSide(color: Colors.white)),
                                                                    ),
                                                                  )),
                                                              SizedBox(
                                                                  height: 26.h),
                                                              SizedBox(
                                                                  width: width *
                                                                      0.28,
                                                                  height:
                                                                      height *
                                                                          0.45,
                                                                  child: KeyPadCustom(
                                                                      pin: _pin
                                                                          .value)),
                                                            ],
                                                          ));
                                                },
                                              );
                                            },
                                            child: Container(
                                              alignment: Alignment.center,
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 4.h,
                                                  horizontal: 1.w),
                                              width: 34.w,
                                              height: 60.h,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .onSecondary),
                                              child: Text(
                                                'Cash',
                                                style: TextStyle(
                                                    fontSize: 7.sp,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            margin: EdgeInsets.symmetric(
                                                vertical: 4.h, horizontal: 1.w),
                                            width: 34.w,
                                            height: 60.h,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onSecondary),
                                            child: Text(
                                              'Last Print',
                                              style: TextStyle(
                                                  fontSize: 7.sp,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            margin: EdgeInsets.symmetric(
                                                vertical: 4.h, horizontal: 1.w),
                                            width: 34.w,
                                            height: 60.h,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onSecondary),
                                            child: Text(
                                              'Void',
                                              style: TextStyle(
                                                  fontSize: 7.sp,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            margin: EdgeInsets.symmetric(
                                                vertical: 4.h, horizontal: 1.w),
                                            width: 34.w,
                                            height: 60.h,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onSecondary),
                                            child: Text(
                                              'No Sale',
                                              style: TextStyle(
                                                  fontSize: 7.sp,
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
                        ],
                      )
                    :
                    // second container of main content
                    Row(
                        children: [
                          SizedBox(
                            width: width * 0.58,
                            height: height * 0.76,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        // TODO:  add Some logic
                                        isLotto.value = true;
                                      },
                                      child: Container(
                                        alignment: Alignment.center,
                                        width: width * 0.1,
                                        height: height * 0.065,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: isLotto.value == true
                                                ? Theme.of(context)
                                                    .colorScheme
                                                    .onSecondary
                                                : Colors.grey.withOpacity(0.4)),
                                        child: Text(
                                          'Lotto',
                                          style: TextStyle(
                                              fontSize: 6.sp,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        // TODO:  add Some logic
                                        isLotto.value = false;
                                      },
                                      child: Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 3.w),
                                        alignment: Alignment.center,
                                        width: width * 0.1,
                                        height: height * 0.065,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: isLotto.value == false
                                                ? Theme.of(context)
                                                    .colorScheme
                                                    .onSecondary
                                                : Colors.grey.withOpacity(0.4)),
                                        child: Text(
                                          'Department',
                                          style: TextStyle(
                                              fontSize: 6.sp,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: height * 0.69,
                                  width: width,
                                  color: Colors.black38.withOpacity(0.1),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      //  subtotal and other details in row item
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(
                                            width: width * 0.26,
                                            height: height * 0.51,
                                            child: isLotto.value == true
                                                ? GridView.builder(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 0.h),
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    shrinkWrap: true,
                                                    itemCount: 6,
                                                    gridDelegate:
                                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                                            crossAxisCount: 2),
                                                    itemBuilder:
                                                        (context, index) {
                                                      return Container(
                                                        margin: EdgeInsets
                                                            .symmetric(
                                                                horizontal: 1.w,
                                                                vertical: 3.h),
                                                        width: width * 0.15,
                                                        height: height * 0.03,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                            color: Colors.grey
                                                                .withOpacity(
                                                                    0.6)),
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceAround,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Image.asset(
                                                              'asset/Icons/cash-machine.png',
                                                              width: 25.w,
                                                              height: 80.h,
                                                              color:
                                                                  Colors.white,
                                                              fit: BoxFit
                                                                  .fitWidth,
                                                            ),
                                                            Text(
                                                              "NonTax",
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      6.sp,
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            )
                                                          ],
                                                        ),
                                                      );
                                                    },
                                                  )
                                                : Container(),
                                          ),
                                          SizedBox(
                                            width: width * 0.28,
                                            height: height * 0.57,
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                    width: width * 0.25,
                                                    height: height * 0.06,
                                                    child: TextFormField(
                                                      readOnly: true,
                                                      initialValue: _pin.value,
                                                      style: TextStyle(
                                                          fontSize: 12.sp,
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                      textAlignVertical:
                                                          TextAlignVertical
                                                              .bottom,
                                                      textAlign:
                                                          TextAlign.right,
                                                      textDirection:
                                                          TextDirection.rtl,
                                                      decoration:
                                                          InputDecoration(
                                                        hintText: '0.00',
                                                        hintStyle: TextStyle(
                                                            fontSize: 12.sp,
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                        prefixIcon: Icon(
                                                          FontAwesomeIcons.usd,
                                                          size: 10.w,
                                                          color: Colors.white,
                                                        ),
                                                        enabledBorder: UnderlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                            borderSide:
                                                                const BorderSide(
                                                                    color: Colors
                                                                        .white)),
                                                        focusedBorder: UnderlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                            borderSide:
                                                                const BorderSide(
                                                                    color: Colors
                                                                        .white)),
                                                        focusedErrorBorder:
                                                            UnderlineInputBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                                borderSide: const BorderSide(
                                                                    color: Colors
                                                                        .white)),
                                                      ),
                                                    )),
                                                SizedBox(
                                                    width: width * 0.28,
                                                    height: height * 0.48,
                                                    child: KeyPadCustom(
                                                        pin: _pin.value)),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 10.h),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            margin: EdgeInsets.symmetric(
                                                vertical: 4.h, horizontal: 3.w),
                                            width: 34.w,
                                            height: 60.h,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onSecondary),
                                            child: Text(
                                              'CARD',
                                              style: TextStyle(
                                                  fontSize: 7.sp,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            margin: EdgeInsets.symmetric(
                                                vertical: 4.h, horizontal: 1.w),
                                            width: 34.w,
                                            height: 60.h,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onSecondary),
                                            child: Text(
                                              'Cash',
                                              style: TextStyle(
                                                  fontSize: 7.sp,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            margin: EdgeInsets.symmetric(
                                                vertical: 4.h, horizontal: 1.w),
                                            width: 34.w,
                                            height: 60.h,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onSecondary),
                                            child: Text(
                                              'Last Print',
                                              style: TextStyle(
                                                  fontSize: 7.sp,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            margin: EdgeInsets.symmetric(
                                                vertical: 4.h, horizontal: 1.w),
                                            width: 34.w,
                                            height: 60.h,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onSecondary),
                                            child: Text(
                                              'Void',
                                              style: TextStyle(
                                                  fontSize: 7.sp,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            margin: EdgeInsets.symmetric(
                                                vertical: 4.h, horizontal: 1.w),
                                            width: 34.w,
                                            height: 60.h,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onSecondary),
                                            child: Text(
                                              'No Sale',
                                              style: TextStyle(
                                                  fontSize: 7.sp,
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
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 1.w, vertical: 1.h),
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            width: width * 0.41,
                            height: height * 0.73,
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 12.h),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      // first icons
                                      Container(
                                        width: 15.w,
                                        decoration: BoxDecoration(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onSecondary,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        height: 38.h,
                                        alignment: Alignment.center,
                                        child: const Icon(
                                          IconlyBold.category,
                                          color: Colors.white,
                                        ),
                                      ),
                                      // upc text field
                                      Container(
                                        alignment: Alignment.center,
                                        width: 40.w,
                                        height: 40.h,
                                        child: TextField(
                                          style: TextStyle(
                                              fontSize: 5.5.sp,
                                              color: Colors.white),
                                          textAlignVertical:
                                              TextAlignVertical.center,
                                          decoration: InputDecoration(
                                            hintText: 'UPC',
                                            hintStyle: TextStyle(
                                                fontSize: 4.sp,
                                                color: Colors.white),
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                borderSide: const BorderSide(
                                                    color: Colors.white)),
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                borderSide: const BorderSide(
                                                    color: Colors.white)),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    borderSide:
                                                        const BorderSide(
                                                            color:
                                                                Colors.white)),
                                            errorBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                borderSide: const BorderSide(
                                                    color: Colors.white)),
                                          ),
                                        ),
                                      ),
                                      // item text field
                                      SizedBox(
                                        width: 75.w,
                                        height: 40.h,
                                        child: TextField(
                                          style: TextStyle(
                                              fontSize: 6.sp,
                                              color: Colors.white),
                                          decoration: InputDecoration(
                                            hintText: 'Items Name/SKU',
                                            hintStyle: TextStyle(
                                                fontSize: 3.9.sp,
                                                color: Colors.white),
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                borderSide: const BorderSide(
                                                    color: Colors.white)),
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                borderSide: const BorderSide(
                                                    color: Colors.white)),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    borderSide:
                                                        const BorderSide(
                                                            color:
                                                                Colors.white)),
                                            errorBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                borderSide: const BorderSide(
                                                    color: Colors.white)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                // data table
                                Expanded(
                                  child: DataTable(
                                      columnSpacing: 20.w,
                                      headingRowHeight: 35.h,
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
                                          label: Text('UPC'),
                                        ),
                                        DataColumn(
                                          label: Text('Name'),
                                        ),
                                        DataColumn(
                                          label: Text('QTY'),
                                        ),
                                        DataColumn(
                                          label: Text('TOTAL'),
                                        ),
                                      ],
                                      rows: const [
                                        DataRow(cells: [
                                          DataCell(Text('1')),
                                          DataCell(Text('Arshik')),
                                          DataCell(Text('5644645')),
                                          DataCell(Text(
                                            '15000',
                                          )),
                                        ])
                                      ]),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        RichTextReuse(
                                          title: 'SubTotal         ',
                                          amount: '      \$ 0.00',
                                        ),
                                        RichTextReuse(
                                          title: 'Discount         ',
                                          amount: '      \$ 0.00',
                                        ),
                                        RichTextReuse(
                                          title: 'Tax                  ',
                                          amount: '      \$ 0.00',
                                        ),
                                        RichTextReuse(
                                          title: 'SurChange      ',
                                          amount: '     \$ 0.00',
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 8.w),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            '0',
                                            style: TextStyle(
                                                fontSize: 9.sp,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onPrimary,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            'Items',
                                            style: TextStyle(
                                                fontSize: 6.sp,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      width: width * 0.1,
                                      height: height * 0.17,
                                      // color: Theme.of(context)
                                      //     .colorScheme
                                      //     .onSecondary,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            'Change Due',
                                            style: TextStyle(
                                                fontSize: 6.sp,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            '\$0.00',
                                            style: TextStyle(
                                                fontSize: 7.sp,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onPrimary,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            'Check out',
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
                              ],
                            ),
                          ),
                        ],
                      ),
              ],
            ),
          ),

          /// Bottom Icons and text
          Container(
            alignment: Alignment.center,
            width: width,
            height: height * 0.09,
            color: Colors.black,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      //TODO: Add functions of print
                    },
                    child: Row(
                      children: [
                        IconButton(
                            padding: const EdgeInsets.symmetric(vertical: 0),
                            onPressed: () {},
                            icon: Icon(
                              Icons.print,
                              size: 12.w,
                              color: Colors.white,
                            )),
                        Text(
                          'Last\nprint',
                          style: TextStyle(
                              fontSize: 5.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 3.w),
                  InkWell(
                    onTap: () {
                      ReprintPage.route.pushOnThis(context);
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.print_outlined,
                          size: 12.w,
                          color: Colors.white,
                        ),
                        Text(
                          'Reprint',
                          style: TextStyle(
                              fontSize: 5.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  IconsButtonsBottom(
                    onTap: () {},
                    icons: Icons.access_time_outlined,
                    name: 'Pay-IN\nOUT',
                  ),
                  IconsButtonsBottom(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return DialogsServices.refundItem(context);
                        },
                      );
                    },
                    icons: Icons.discount,
                    name: 'Refund',
                  ),
                  IconsButtonsBottom(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return DialogsServices.priceCheck(context);
                        },
                      );
                    },
                    icons: Icons.price_check,
                    name: 'Check\nPrice',
                  ),
                  IconsButtonsBottom(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return DialogsServices.changePrice(context);
                        },
                      );
                    },
                    icons: Icons.price_change,
                    name: 'Change\nPrice',
                  ),
                  IconsButtonsBottom(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return DialogsServices.holdDialog(context);
                        },
                      );
                    },
                    icons: Icons.pause_circle_filled,
                    name: 'Stop',
                  ),
                  IconsButtonsBottom(
                    onTap: () {},
                    icons: Icons.skip_next_rounded,
                    name: 'next',
                  ),
                  IconsButtonsBottom(
                    onTap: () {
                      //TODO: add delete function
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            backgroundColor: Colors.black,
                            icon: Icon(
                              Icons.info_outline,
                              size: 12.w,
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                            title: Text(
                              'Do you Really want to delete this transaction',
                              style: TextStyle(
                                  fontSize: 7.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            actions: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "NO",
                                    style: TextStyle(
                                        fontSize: 6.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(width: 8.w),
                                  Text(
                                    "YES",
                                    style: TextStyle(
                                        fontSize: 6.sp,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )
                            ],
                          );
                        },
                      );
                    },
                    icons: Icons.delete,
                    name: 'Delete',
                  ),
                  IconButton(
                      onPressed: () {
                        EndShiftPage.route.pushOnThis(context);
                      },
                      icon: Icon(Icons.exit_to_app_outlined,
                          size: 12.w, color: Colors.white))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class IconsButtonsBottom extends StatelessWidget {
  final IconData icons;
  final String name;
  final Function() onTap;
  const IconsButtonsBottom(
      {super.key,
      required this.icons,
      required this.name,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.w),
        child: Row(
          children: [
            Icon(icons, size: 14.sp, color: Colors.white),
            SizedBox(width: 2.w),
            Text(
              name,
              style: TextStyle(
                  fontSize: 5.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}

class RichTextReuse extends StatelessWidget {
  final String title;
  final String amount;
  const RichTextReuse({super.key, required this.title, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style: TextStyle(
                fontSize: 4.sp,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
        Text(':',
            style: TextStyle(
                fontSize: 4.sp,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
        Text(amount,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onPrimary,
                fontSize: 4.sp)),
      ],
    );
  }
}
