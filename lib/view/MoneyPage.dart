import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';

class MoneyPage extends HookWidget {
  static const String route = 'MoneyPage';
  const MoneyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isSwap = useState(true);
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 0),
        children: [
          // header content
          // SizedBox(
          //   width: width,
          //   height: height * 0.1,
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       // first row icons home and profile and text
          //       SizedBox(
          //         width: width * 0.3,
          //         child: Row(
          //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //           children: [
          //             /// this is icons row
          //             Row(
          //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //               children: [
          //                 Padding(
          //                   padding: EdgeInsets.symmetric(horizontal: 1.w),
          //                   child: IconButton(
          //                       onPressed: () {},
          //                       icon: Icon(
          //                         Icons.home,
          //                         size: 12.w,
          //                         color: Theme.of(context)
          //                             .colorScheme
          //                             .onSecondary,
          //                       )),
          //                 ),
          //                 Container(
          //                   margin: EdgeInsets.symmetric(horizontal: 1.w),
          //                   alignment: Alignment.center,
          //                   width: 12.w,
          //                   height: 40.h,
          //                   decoration: BoxDecoration(
          //                       shape: BoxShape.circle,
          //                       color: Theme.of(context)
          //                           .colorScheme
          //                           .onSecondary),
          //                   child: IconButton(
          //                       alignment: Alignment.center,
          //                       onPressed: () {},
          //                       icon: Icon(
          //                         Icons.person,
          //                         size: 8.w,
          //                         color: Colors.white,
          //                       )),
          //                 ),
          //                 IconButton(
          //                     onPressed: () {},
          //                     icon: Icon(
          //                       Icons.shuffle,
          //                       size: 12.w,
          //                       color:
          //                           Theme.of(context).colorScheme.onSecondary,
          //                     )),
          //               ],
          //             ),
          //
          //             /// this is text
          //             Text(
          //               'T/A : Mar 28,2003',
          //               style: TextStyle(
          //                   fontSize: 5.sp,
          //                   color: Colors.black,
          //                   fontWeight: FontWeight.bold),
          //             )
          //           ],
          //         ),
          //       ),
          //
          //       /// logo image
          //       Padding(
          //         padding: EdgeInsets.symmetric(horizontal: 10.w),
          //         child: Image.asset(
          //           'asset/Icons/Logo.png',
          //           width: 85.w,
          //           height: 80.h,
          //           fit: BoxFit.cover,
          //         ),
          //       ),
          //
          //       /// second row of all icons and support
          //       Row(
          //         mainAxisAlignment: MainAxisAlignment.end,
          //         children: [
          //           /// date and time column
          //           Padding(
          //             padding: EdgeInsets.symmetric(horizontal: 3.w),
          //             child: Column(
          //               mainAxisAlignment: MainAxisAlignment.center,
          //               crossAxisAlignment: CrossAxisAlignment.center,
          //               children: [
          //                 Text(
          //                   "Thu,Mar 28",
          //                   style: TextStyle(
          //                       fontSize: 5.sp,
          //                       color:
          //                           Theme.of(context).colorScheme.onSecondary,
          //                       fontWeight: FontWeight.bold),
          //                 ),
          //                 Text(
          //                   "04:04:52 AM",
          //                   style: TextStyle(
          //                       fontSize: 5.sp,
          //                       color:
          //                           Theme.of(context).colorScheme.onSecondary,
          //                       fontWeight: FontWeight.bold),
          //                 ),
          //               ],
          //             ),
          //           ),
          //
          //           //icons
          //           IconButton(
          //               onPressed: () {
          //                 isSwap.value = !isSwap.value;
          //               },
          //               icon: Icon(
          //                 IconlyBold.filter,
          //                 size: 12.w,
          //                 color: Theme.of(context).colorScheme.onSecondary,
          //               )),
          //           IconButton(
          //               onPressed: () {},
          //               icon: Icon(
          //                 IconlyBold.category,
          //                 size: 12.w,
          //                 color: Theme.of(context).colorScheme.onSecondary,
          //               )),
          //
          //           IconButton(
          //               onPressed: () {},
          //               icon: Icon(
          //                 IconlyBold.lock,
          //                 size: 12.w,
          //                 color: Theme.of(context).colorScheme.onSecondary,
          //               )),
          //           IconButton(
          //               onPressed: () {},
          //               icon: Icon(
          //                 Icons.support_agent,
          //                 size: 12.w,
          //                 color: Theme.of(context).colorScheme.onSecondary,
          //               )),
          //         ],
          //       )
          //     ],
          //   ),
          // ),
          // main content
          SafeArea(
            child: Padding(
              padding:  EdgeInsets.symmetric(vertical: 3.h),
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
                                  borderRadius: BorderRadius.circular(10),
                                  ),
                              width: width * 0.41,
                              height: height * 0.78,
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
                                            textAlignVertical:
                                                TextAlignVertical.center,
                                            decoration: InputDecoration(
                                              hintText: 'UPC',
                                              hintStyle: TextStyle(
                                                  fontSize: 4.sp,
                                                  color: Colors.black),
                                              enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.black)),
                                              focusedBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.black)),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(5),
                                                      borderSide: const BorderSide(
                                                          color: Colors.black)),
                                              errorBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.black)),
                                            ),
                                          ),
                                        ),
                                        // item text field
                                        SizedBox(
                                          width: 75.w,
                                          height: 40.h,
                                          child: TextField(
                                            decoration: InputDecoration(
                                              hintText: 'Items Name/SKU',
                                              hintStyle: TextStyle(
                                                  fontSize: 3.9.sp,
                                                  color: Colors.black),
                                              enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.black)),
                                              focusedBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.black)),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(5),
                                                      borderSide: const BorderSide(
                                                          color: Colors.black)),
                                              errorBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.black)),
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
                                        headingTextStyle: const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        headingRowColor:
                                            const MaterialStatePropertyAll<Color>(
                                                Colors.black),
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
                                  // divider
                                  Divider(
                                    height: 17.h,
                                    color: Colors.black12,
                                    thickness: 1.w,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: width * 0.58,
                              height: height * 0.78,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          // TODO:  add Some logic
                                        },
                                        child: Container(
                                          alignment: Alignment.center,
                                          width: width * 0.1,
                                          height: height * 0.065,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSecondary),
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
                                        },
                                        child: Container(
                                          margin:
                                              EdgeInsets.symmetric(horizontal: 3.w),
                                          alignment: Alignment.center,
                                          width: width * 0.1,
                                          height: height * 0.065,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.black38),
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
                                    margin: EdgeInsets.symmetric(vertical: 7.h),
                                    height: height * 0.69,
                                    color: Colors.black38.withOpacity(0.1),
                                    child: Column(
                                      children: [
                                        //  subtotal and other details in row item
                                        Row(
                                          children: [
                                            SizedBox(
                                              width: width * 0.4,
                                              height: height * 0.502,
                                              child: GridView.builder(
                                                scrollDirection: Axis.vertical,
                                                shrinkWrap: true,
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 5.w, vertical: 9.h),
                                                itemCount: 6,
                                                gridDelegate:
                                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                                        crossAxisCount: 2),
                                                itemBuilder: (context, index) {
                                                  return Container(
                                                    margin: EdgeInsets.symmetric(
                                                        horizontal: 1.w,
                                                        vertical: 3.h),
                                                    width: width * 0.2,
                                                    height: height * 0.03,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                10),
                                                        color: Colors.white),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment.center,
                                                      children: [
                                                        Image.asset(
                                                          'asset/Icons/cash-machine.png',
                                                          width: 25.w,
                                                          height: 80.h,
                                                          fit: BoxFit.fitWidth,
                                                        ),
                                                        Text(
                                                          "NonTax",
                                                          style: TextStyle(
                                                              fontSize: 6.sp,
                                                              color: Colors.black,
                                                              fontWeight:
                                                                  FontWeight.bold),
                                                        )
                                                      ],
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                            Container(
                                              width: 1.w,
                                              height: height * 0.54,
                                              margin: EdgeInsets.symmetric(horizontal: 5.w),
                                              color: Colors.black.withOpacity(0.3),
                                            ),
                                            Column(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                SizedBox(
                                                  width: 50.w,
                                                  height: 345.h,
                                                  child:
                                                   Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.center,
                                                    children: [
                                                      const Column(
                                                        mainAxisAlignment: MainAxisAlignment.start,
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
                                                      Divider(color: Colors.black12,height: 2.h,thickness: 1.w,),
                                                      Padding(
                                                        padding: EdgeInsets.symmetric(
                                                            horizontal: 3.w),
                                                        child: Column(
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          children: [
                                                            Text(
                                                              '0',
                                                              style: TextStyle(
                                                                  fontSize: 9.sp,
                                                                  color: Theme.of(context)
                                                                      .colorScheme
                                                                      .onSecondary,
                                                                  fontWeight:
                                                                      FontWeight.bold),
                                                            ),
                                                            Text(
                                                              'Items',
                                                              style: TextStyle(
                                                                  fontSize: 6.sp,
                                                                  color: Colors.black,
                                                                  fontWeight:
                                                                      FontWeight.bold),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                      Divider(color: Colors.black12,height: 2.h,thickness: 1.w,),
                                                      Container(
                                                        alignment: Alignment.center,
                                                        width: width * 0.16,
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
                                                                  color: Colors.black,
                                                                  fontWeight:
                                                                  FontWeight.bold),
                                                            ),
                                                            Text(
                                                              '\$0.00',
                                                              style: TextStyle(
                                                                  fontSize: 7.sp,
                                                                  color: Theme.of(context)
                                                                      .colorScheme
                                                                      .onSecondary,
                                                                  fontWeight:
                                                                  FontWeight.bold),
                                                            ),
                                                            Text(
                                                              'Check out',
                                                              style: TextStyle(
                                                                  fontSize: 6.sp,
                                                                  color: Colors.black,
                                                                  fontWeight:
                                                                  FontWeight.bold),
                                                            ),
                                                          ],
                                                        ),
                                                      )
                                                    ],
                                                  ),

                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        SizedBox(height: 10.h),
                                        Divider(
                                          height:1,
                                          color: Colors.black12,
                                          thickness: 1.w,
                                        ),
                                        // amount short
                                        Row(
                                          children: [
                                            Container(
                                              alignment: Alignment.center,
                                              margin:EdgeInsets.symmetric(vertical: 4.h,horizontal: 3.w),
                                              width: 25.w,
                                              height: 80.h,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10),
                                                color:Theme.of(context).colorScheme.onSecondary
                                              ),
                                              child: Text('Card',style: TextStyle(fontSize: 7.sp
                                              ,color:Colors.black,fontWeight: FontWeight.bold),),
                                            ),
                                            Container(
                                              alignment: Alignment.center,
                                              margin:EdgeInsets.symmetric(vertical: 4.h,horizontal: 1.w),
                                              width: 25.w,
                                              height: 80.h,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(10),
                                                  color:Theme.of(context).colorScheme.onSecondary
                                              ),
                                              child: Text('\$ 5',style: TextStyle(fontSize: 7.sp
                                                  ,color:Colors.white,fontWeight: FontWeight.bold),),
                                            ),
                                            Container(
                                              alignment: Alignment.center,
                                              margin:EdgeInsets.symmetric(vertical: 4.h,horizontal: 1.w),
                                              width: 25.w,
                                              height: 80.h,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(10),
                                                  color:Theme.of(context).colorScheme.onSecondary
                                              ),
                                              child: Text('\$ 10',style: TextStyle(fontSize: 7.sp
                                                  ,color:Colors.white,fontWeight: FontWeight.bold),),
                                            ),
                                            Container(
                                              alignment: Alignment.center,
                                              margin:EdgeInsets.symmetric(vertical: 4.h,horizontal: 1.w),
                                              width: 25.w,
                                              height: 80.h,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10),
                                                color:Theme.of(context).colorScheme.onSecondary
                                              ),
                                              child: Text('\$ 20',style: TextStyle(fontSize: 7.sp
                                              ,color:Colors.white,fontWeight: FontWeight.bold),),
                                            ),
                                            Container(
                                              alignment: Alignment.center,
                                              margin:EdgeInsets.symmetric(vertical: 4.h,horizontal: 1.w),
                                              width: 25.w,
                                              height: 80.h,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10),
                                                color:Theme.of(context).colorScheme.onSecondary
                                              ),
                                              child: Text('\$50',style: TextStyle(fontSize: 7.sp
                                              ,color:Colors.white,fontWeight: FontWeight.bold),),
                                            ),
                                            Container(
                                              alignment: Alignment.center,
                                              margin:EdgeInsets.symmetric(vertical: 4.h,horizontal: 1.w),
                                              width: 25.w,
                                              height: 80.h,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10),
                                                color:Theme.of(context).colorScheme.onSecondary
                                              ),
                                              child: Text('\$100',style: TextStyle(fontSize: 7.sp
                                              ,color:Colors.white,fontWeight: FontWeight.bold),),
                                            ),
                                            Container(
                                              alignment: Alignment.center,
                                              margin:EdgeInsets.symmetric(vertical: 4.h,horizontal: 1.w),
                                              width: 34.w,
                                              height: 80.h,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10),
                                                color:Theme.of(context).colorScheme.onSecondary
                                              ),
                                              child: Text('Exact AMT',textAlign: TextAlign.center,style: TextStyle(fontSize: 7.sp
                                              ,color:Colors.white,fontWeight: FontWeight.bold),),
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
                              height: height * 0.78,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          // TODO:  add Some logic
                                        },
                                        child: Container(
                                          alignment: Alignment.center,
                                          width: width * 0.1,
                                          height: height * 0.065,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSecondary),
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
                                        },
                                        child: Container(
                                          margin:
                                          EdgeInsets.symmetric(horizontal: 3.w),
                                          alignment: Alignment.center,
                                          width: width * 0.1,
                                          height: height * 0.065,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              color: Colors.black38),
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
                                    margin: EdgeInsets.symmetric(vertical: 7.h),
                                    height: height * 0.69,
                                    color: Colors.black38.withOpacity(0.1),
                                    child: Column(
                                      children: [
                                        //  subtotal and other details in row item
                                        Row(
                                          children: [
                                            SizedBox(
                                              width: width * 0.4,
                                              height: height * 0.502,
                                              child: GridView.builder(
                                                scrollDirection: Axis.vertical,
                                                shrinkWrap: true,
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 5.w, vertical: 9.h),
                                                itemCount: 6,
                                                gridDelegate:
                                                const SliverGridDelegateWithFixedCrossAxisCount(
                                                    crossAxisCount: 4),
                                                itemBuilder: (context, index) {
                                                  return Container(
                                                    margin: EdgeInsets.symmetric(
                                                        horizontal: 1.w,
                                                        vertical: 3.h),
                                                    width: width * 0.2,
                                                    height: height * 0.09,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                        color: Colors.white),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                      children: [
                                                        Image.asset(
                                                          'asset/Icons/cash-machine.png',
                                                          width: 15.w,
                                                          height: 50.h,
                                                          fit: BoxFit.fitWidth,
                                                        ),
                                                        Text(
                                                          "NonTax",
                                                          style: TextStyle(
                                                              fontSize: 5.sp,
                                                              color: Colors.black,
                                                              fontWeight:
                                                              FontWeight.bold),
                                                        )
                                                      ],
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                            Container(
                                              width: 1.w,
                                              height: height * 0.54,
                                              margin: EdgeInsets.symmetric(horizontal: 5.w),
                                              color: Colors.black.withOpacity(0.3),
                                            ),
                                            Column(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                SizedBox(
                                                  width: 50.w,
                                                  height: 345.h,
                                                  child:
                                                  Column(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.spaceBetween,
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                    children: [
                                                      const Column(
                                                        mainAxisAlignment: MainAxisAlignment.start,
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
                                                      Divider(color: Colors.black12,height: 2.h,thickness: 1.w,),
                                                      Padding(
                                                        padding: EdgeInsets.symmetric(
                                                            horizontal: 3.w),
                                                        child: Column(
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          children: [
                                                            Text(
                                                              '0',
                                                              style: TextStyle(
                                                                  fontSize: 9.sp,
                                                                  color: Theme.of(context)
                                                                      .colorScheme
                                                                      .onSecondary,
                                                                  fontWeight:
                                                                  FontWeight.bold),
                                                            ),
                                                            Text(
                                                              'Items',
                                                              style: TextStyle(
                                                                  fontSize: 6.sp,
                                                                  color: Colors.black,
                                                                  fontWeight:
                                                                  FontWeight.bold),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                      Divider(color: Colors.black12,height: 2.h,thickness: 1.w,),
                                                      Container(
                                                        alignment: Alignment.center,
                                                        width: width * 0.16,
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
                                                                  color: Colors.black,
                                                                  fontWeight:
                                                                  FontWeight.bold),
                                                            ),
                                                            Text(
                                                              '\$0.00',
                                                              style: TextStyle(
                                                                  fontSize: 7.sp,
                                                                  color: Theme.of(context)
                                                                      .colorScheme
                                                                      .onSecondary,
                                                                  fontWeight:
                                                                  FontWeight.bold),
                                                            ),
                                                            Text(
                                                              'Check out',
                                                              style: TextStyle(
                                                                  fontSize: 6.sp,
                                                                  color: Colors.black,
                                                                  fontWeight:
                                                                  FontWeight.bold),
                                                            ),
                                                          ],
                                                        ),
                                                      )
                                                    ],
                                                  ),

                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        SizedBox(height: 10.h),
                                        Divider(
                                          height:1,
                                          color: Colors.black12,
                                          thickness: 1.w,
                                        ),
                                        // amount short
                                        Row(
                                          children: [
                                            Container(
                                              alignment: Alignment.center,
                                              margin:EdgeInsets.symmetric(vertical: 4.h,horizontal: 3.w),
                                              width: 25.w,
                                              height: 80.h,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(10),
                                                  color:Theme.of(context).colorScheme.onSecondary
                                              ),
                                              child: Text('Card',style: TextStyle(fontSize: 7.sp
                                                  ,color:Colors.black,fontWeight: FontWeight.bold),),
                                            ),
                                            Container(
                                              alignment: Alignment.center,
                                              margin:EdgeInsets.symmetric(vertical: 4.h,horizontal: 1.w),
                                              width: 25.w,
                                              height: 80.h,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(10),
                                                  color:Theme.of(context).colorScheme.onSecondary
                                              ),
                                              child: Text('\$ 5',style: TextStyle(fontSize: 7.sp
                                                  ,color:Colors.white,fontWeight: FontWeight.bold),),
                                            ),
                                            Container(
                                              alignment: Alignment.center,
                                              margin:EdgeInsets.symmetric(vertical: 4.h,horizontal: 1.w),
                                              width: 25.w,
                                              height: 80.h,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(10),
                                                  color:Theme.of(context).colorScheme.onSecondary
                                              ),
                                              child: Text('\$ 10',style: TextStyle(fontSize: 7.sp
                                                  ,color:Colors.white,fontWeight: FontWeight.bold),),
                                            ),
                                            Container(
                                              alignment: Alignment.center,
                                              margin:EdgeInsets.symmetric(vertical: 4.h,horizontal: 1.w),
                                              width: 25.w,
                                              height: 80.h,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(10),
                                                  color:Theme.of(context).colorScheme.onSecondary
                                              ),
                                              child: Text('\$ 20',style: TextStyle(fontSize: 7.sp
                                                  ,color:Colors.white,fontWeight: FontWeight.bold),),
                                            ),
                                            Container(
                                              alignment: Alignment.center,
                                              margin:EdgeInsets.symmetric(vertical: 4.h,horizontal: 1.w),
                                              width: 25.w,
                                              height: 80.h,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(10),
                                                  color:Theme.of(context).colorScheme.onSecondary
                                              ),
                                              child: Text('\$50',style: TextStyle(fontSize: 7.sp
                                                  ,color:Colors.white,fontWeight: FontWeight.bold),),
                                            ),
                                            Container(
                                              alignment: Alignment.center,
                                              margin:EdgeInsets.symmetric(vertical: 4.h,horizontal: 1.w),
                                              width: 25.w,
                                              height: 80.h,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(10),
                                                  color:Theme.of(context).colorScheme.onSecondary
                                              ),
                                              child: Text('\$100',style: TextStyle(fontSize: 7.sp
                                                  ,color:Colors.white,fontWeight: FontWeight.bold),),
                                            ),
                                            Container(
                                              alignment: Alignment.center,
                                              margin:EdgeInsets.symmetric(vertical: 4.h,horizontal: 1.w),
                                              width: 34.w,
                                              height: 80.h,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(10),
                                                  color:Theme.of(context).colorScheme.onSecondary
                                              ),
                                              child: Text('Exact AMT',textAlign: TextAlign.center,style: TextStyle(fontSize: 7.sp
                                                  ,color:Colors.white,fontWeight: FontWeight.bold),),
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
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black38)),
                              width: width * 0.41,
                              height: height * 0.78,
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
                                            textAlignVertical:
                                            TextAlignVertical.center,
                                            decoration: InputDecoration(
                                              hintText: 'UPC',
                                              hintStyle: TextStyle(
                                                  fontSize: 4.sp,
                                                  color: Colors.black),
                                              enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.black)),
                                              focusedBorder: OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.black)),
                                              focusedErrorBorder:
                                              OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.black)),
                                              errorBorder: OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.black)),
                                            ),
                                          ),
                                        ),
                                        // item text field
                                        SizedBox(
                                          width: 75.w,
                                          height: 40.h,
                                          child: TextField(
                                            decoration: InputDecoration(
                                              hintText: 'Items Name/SKU',
                                              hintStyle: TextStyle(
                                                  fontSize: 3.9.sp,
                                                  color: Colors.black),
                                              enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.black)),
                                              focusedBorder: OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.black)),
                                              focusedErrorBorder:
                                              OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.black)),
                                              errorBorder: OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.black)),
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
                                        headingTextStyle: const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(10)),
                                        headingRowColor:
                                        const MaterialStatePropertyAll<Color>(
                                            Colors.black),
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
                                  // divider
                                  Divider(
                                    height: 17.h,
                                    color: Colors.black12,
                                    thickness: 1.w,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                ],
              ),
            ),
          ),
          Container(
            color:Colors.black12.withOpacity(0.2),
            width: width,
            height: height * 0.1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // first row icons home and profile and text
                // logo
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Image.asset(
                    'asset/Icons/Logo.png',
                    width: 85.w,
                    height: 80.h,
                    fit: BoxFit.cover,
                  ),
                ),
               // home icons 
                SizedBox(
                  width: width * 0.3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// this is icons row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 1.w),
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.home,
                                  size: 12.w,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onSecondary,
                                )),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 1.w),
                            alignment: Alignment.center,
                            width: 12.w,
                            height: 40.h,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onSecondary),
                            child: IconButton(
                                alignment: Alignment.center,
                                onPressed: () {},
                                icon: Icon(
                                  Icons.person,
                                  size: 8.w,
                                  color: Colors.white,
                                )),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.shuffle,
                                size: 12.w,
                                color:
                                Theme.of(context).colorScheme.onSecondary,
                              )),
                        ],
                      ),

                      /// this is text
                      Text(
                        'T/A : Mar 28,2003',
                        style: TextStyle(
                            fontSize: 5.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      )
                    ],
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
                                color:
                                Theme.of(context).colorScheme.onSecondary,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "04:04:52 AM",
                            style: TextStyle(
                                fontSize: 5.sp,
                                color:
                                Theme.of(context).colorScheme.onSecondary,
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
                        icon: Icon(
                          IconlyBold.filter,
                          size: 12.w,
                          color: Theme.of(context).colorScheme.onSecondary,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          IconlyBold.category,
                          size: 12.w,
                          color: Theme.of(context).colorScheme.onSecondary,
                        )),

                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          IconlyBold.lock,
                          size: 12.w,
                          color: Theme.of(context).colorScheme.onSecondary,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.support_agent,
                          size: 12.w,
                          color: Theme.of(context).colorScheme.onSecondary,
                        )),
                  ],
                ),
                /// second row of all icons and support
                
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: width,
            height: height * 0.09,
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                        padding: const EdgeInsets.symmetric(vertical: 0),
                        onPressed: () {},
                        icon: Icon(
                          Icons.print,
                          size: 12.w,
                          color: Colors.white,
                        )),
                    Text('Last\nprint',style: TextStyle(fontSize:5.sp,color:Colors.white,fontWeight: FontWeight.bold),)
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                        padding: const EdgeInsets.symmetric(vertical: 0),
                        onPressed: () {},
                        icon: Icon(
                          Icons.print_outlined,
                          size: 12.w,
                          color: Colors.white,
                        )),
                    Text('Reprint',style: TextStyle(fontSize:5.sp,color:Colors.white,fontWeight: FontWeight.bold),)
                  ],
                ),
               const IconsButtonsBottom(icons: Icons.access_time_outlined,name: 'abc',),
                const IconsButtonsBottom(icons: Icons.discount,name: 'Discount',),
                const IconsButtonsBottom(icons: Icons.security,name: 'Check',),
                const IconsButtonsBottom(icons: Icons.store,name: 'Store',),
                const IconsButtonsBottom(icons: Icons.newspaper,name: 'Info',),
                const IconsButtonsBottom(icons: Icons.pause_circle_filled,name: 'Stop',),
                const IconsButtonsBottom(icons: Icons.skip_next_rounded,name: 'next',),
                const IconsButtonsBottom(icons: Icons.price_change,name: 'Chg-AMT',),
                IconButton(onPressed: (){},icon:Icon(Icons.exit_to_app_outlined,size:12.w,color:Colors.white))
              ],
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
  const IconsButtonsBottom({super.key,required this.icons,required this.name});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        IconButton(onPressed: (){},icon: Icon(icons,size: 14.sp,color:Colors.white)),
        Text(name,style: TextStyle(fontSize:5.sp,color:Colors.white,fontWeight: FontWeight.bold),)
      ],
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
                color: Colors.black,
                fontWeight: FontWeight.bold)),
        Text(':',
            style: TextStyle(
                fontSize: 4.sp,
                color: Colors.black,
                fontWeight: FontWeight.bold)),
        Text(amount,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onSecondary,
                fontSize: 4.sp)),
      ],
    );
  }
}
