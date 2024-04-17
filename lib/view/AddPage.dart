import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddPage extends HookWidget {
  static const String route = "AddPage";
  const AddPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        children: [
          // heading part
          SafeArea(
            child: SizedBox(
              width: width,
              height: height * 0.07,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 20.w,
                        height: 40.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Theme.of(context).colorScheme.onSecondary,
                        ),
                        child: FaIcon(
                          FontAwesomeIcons.arrowLeft,
                          size: 8.w,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "ADD ITEM",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 8.sp,
                            color: Theme.of(context).colorScheme.onPrimary),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 20.w,
                        height: 40.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Theme.of(context).colorScheme.onSecondary,
                        ),
                        child: Icon(
                          Icons.done,
                          size: 8.w,
                          color: Colors.white,
                        ),
                      ),
                      Text("SAVE",
                          style: TextStyle(
                              fontSize: 8.sp,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.onPrimary)),
                    ],
                  )
                ],
              ),
            ),
          ),
          // first content part
          SizedBox(
            width: width,
            height: height * 0.28,
            child: Row(
              children: [
                // first column of add page
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "SKU   :",
                          style: TextStyle(
                              fontSize: 6.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: width * 0.1,
                          height: height * 0.06,
                          child: TextField(
                            style: TextStyle(
                                fontSize: 5.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey.withOpacity(0.5),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                )),
                          ),
                        )
                      ],
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(vertical: 10.h),
                      width: width * 0.14,
                      height: height * 0.185,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(5)),
                      child: Icon(
                        Icons.download,
                        size: 18.w,
                        color: Colors.white.withOpacity(0.4),
                      ),
                    )
                  ],
                ),
                SizedBox(width: 5.w),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    commonTextAndFields(context, 'SKU    :'),
                    commonTextAndFields(context, 'SKU    :'),
                    commonTextAndFields(context, 'SKU    :'),
                    commonTextAndFields(context, 'SKU    :'),
                  ],
                ),
                SizedBox(width: 5.w),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    commonTextAndFields(context, '  SKU    :'),
                    Row(
                      children: [
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: 10.w,
                              height: 40.h,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color:
                                    Theme.of(context).colorScheme.onSecondary,
                              ),
                              child: FaIcon(
                                FontAwesomeIcons.add,
                                size: 5.w,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Pack:",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 5.sp,
                                  color: Colors.white),
                            )
                          ],
                        ),
                        commonTextAndFields(context, ''),
                        SizedBox(width: 5.w),
                        Container(
                          alignment: Alignment.center,
                          width: 10.w,
                          height: 40.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Theme.of(context).colorScheme.onSecondary,
                          ),
                          child: FaIcon(
                            FontAwesomeIcons.add,
                            size: 5.w,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: 10.w,
                              height: 40.h,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color:
                                    Theme.of(context).colorScheme.onSecondary,
                              ),
                              child: FaIcon(
                                FontAwesomeIcons.add,
                                size: 5.w,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Pack:",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 5.sp,
                                  color: Colors.white),
                            )
                          ],
                        ),
                        commonTextAndFields(context, ''),
                        SizedBox(width: 5.w),
                        Container(
                          alignment: Alignment.center,
                          width: 10.w,
                          height: 40.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Theme.of(context).colorScheme.onSecondary,
                          ),
                          child: FaIcon(
                            FontAwesomeIcons.add,
                            size: 5.w,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: 10.w,
                              height: 40.h,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color:
                                    Theme.of(context).colorScheme.onSecondary,
                              ),
                              child: FaIcon(
                                FontAwesomeIcons.add,
                                size: 5.w,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Pack:",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 5.sp,
                                  color: Colors.white),
                            )
                          ],
                        ),
                        commonTextAndFields(context, ''),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: 5.w,
                ),
                Container(
                  width: width * 0.2,
                  height: height * 0.34,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.white)),
                  child: Column(
                    children: [
                      checkBoxAndText(context, 'Non-Taxable'),
                      checkBoxAndText(context, 'Tax (7.00%)'),
                      checkBoxAndText(context, 'Tax2 (11.00%)'),
                    ],
                  ),
                )
              ],
            ),
          ),
          // page View part
          SizedBox(height: 10.h),
          SizedBox(
            width: width,
            height: height * 0.6,
            child: Column(
              children: [
                SizedBox(
                  width: width,
                  height: height * 0.06,
                  child: DefaultTabController(
                    length: 6,
                    child: TabBar(
                      tabAlignment: TabAlignment.start,
                      isScrollable: true,
                      dividerColor: Colors.transparent,
                      labelStyle: TextStyle(
                          fontSize: 5.sp,
                          color: Theme.of(context).colorScheme.onPrimary,
                          fontWeight: FontWeight.bold),
                      padding: EdgeInsets.only(bottom: 5.h),
                      unselectedLabelColor: Colors.white.withOpacity(0.5),
                      unselectedLabelStyle: TextStyle(
                          fontSize: 5.sp, color: Colors.white.withOpacity(0.2)),
                      indicatorPadding: EdgeInsets.only(top: 8.h),
                      tabs: [
                        Row(
                          children: [
                            Icon(
                              Icons.settings,
                              color: Theme.of(context).colorScheme.onSecondary,
                            ),
                            SizedBox(
                              width: 3.w,
                            ),
                            const Text(
                              "General",
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.call_split,
                              color: Theme.of(context).colorScheme.onSecondary,
                            ),
                            SizedBox(
                              width: 3.w,
                            ),
                            const Text(
                              "Spilt-page",
                            )
                          ],
                        ),
                        Row(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.usd,
                              color: Theme.of(context).colorScheme.onSecondary,
                            ),
                            SizedBox(
                              width: 3.w,
                            ),
                            const Text(
                              "Special Pricing",
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.price_check,
                              color: Theme.of(context).colorScheme.onSecondary,
                            ),
                            SizedBox(
                              width: 3.w,
                            ),
                            const Text(
                              "Tag Along",
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.group,
                              color: Theme.of(context).colorScheme.onSecondary,
                            ),
                            SizedBox(
                              width: 3.w,
                            ),
                            const Text(
                              "Distributors",
                            )
                          ],
                        ),
                        Row(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.layerGroup,
                              color: Theme.of(context).colorScheme.onSecondary,
                            ),
                            SizedBox(
                              width: 3.w,
                            ),
                            const Text(
                              "Item Group",
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget checkBoxAndText(BuildContext context, String name) {
  return Row(
    children: [
      Checkbox(
        value: true,
        onChanged: (value) {},
        checkColor: Colors.white,
      ),
      Text(
        name,
        style: TextStyle(
            fontSize: 6.sp, color: Colors.white, fontWeight: FontWeight.bold),
      )
    ],
  );
}

Widget commonTextAndFields(BuildContext context, String name) {
  final width = MediaQuery.of(context).size.width;
  final height = MediaQuery.of(context).size.height;
  return Row(
    children: [
      Text(name,
          style: TextStyle(
              fontSize: 6.sp,
              color: Colors.white,
              fontWeight: FontWeight.bold)),
      SizedBox(
        width: width * 0.2,
        height: height * 0.06,
        child: TextField(
          style: TextStyle(
              fontSize: 5.sp, color: Colors.white, fontWeight: FontWeight.bold),
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey.withOpacity(0.5),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              )),
        ),
      )
    ],
  );
}
