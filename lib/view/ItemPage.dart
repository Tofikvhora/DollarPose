import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:ionicons/ionicons.dart';

class ItemPage extends HookWidget {
  static const String route = 'ItemPage';
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Item Management',
          style: TextStyle(
              fontSize: 8.sp,
              color: Theme.of(context).colorScheme.onSecondary,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.31,
                  height: MediaQuery.of(context).size.height * 0.76,
                  color: Colors.grey[300],
                  padding: const EdgeInsets.all(20),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'asset/Icons/Logo.png',
                          fit: BoxFit.cover,
                          width: 120.w,
                          height: 250.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  color: const Color(0xff90330E),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            // Add logic for add button
                                          },
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 2.w),
                                            child: const Icon(IconlyBold.filter,
                                                color: Colors.white),
                                          ),
                                        ),
                                        const Text('Filter',
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.white)),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 3.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  color: const Color(0xff90330E),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        // Add logic for edit button
                                      },
                                      child: const Icon(Icons.add,
                                          color: Colors.white),
                                    ),
                                    const Text('Add',
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.white)),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 3.w),
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  color: const Color(0xff90330E),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        // Add logic for delete button
                                      },
                                      child: const Icon(IconlyBold.edit,
                                          color: Colors.white),
                                    ),
                                    const Text('Edit',
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.white)),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 4.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  color: const Color(0xff90330E),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        // Add logic for clone button
                                      },
                                      child: const Icon(Icons.delete,
                                          color: Colors.white),
                                    ),
                                    const Text('Delete',
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.white)),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 4.w),
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  color: const Color(0xff90330E),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        // Add logic for the additional button
                                      },
                                      child: const Icon(Icons.content_copy,
                                          color: Colors.white),
                                    ),
                                    const Text('CLONE',
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.white)),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.white,
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 2.w),
                                    child: TextField(
                                      style: TextStyle(
                                          fontSize: 6.sp,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                      decoration: InputDecoration(
                                        suffixIcon: IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.cancel,
                                            size: 10.w,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onSecondary,
                                          ),
                                        ),
                                        hintText: 'UPC',
                                        hintStyle: TextStyle(
                                          fontSize: 6.sp,
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: const BorderSide(
                                            color: Color(0xff90330E),
                                            width: 10,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextField(
                                    style: TextStyle(
                                        fontSize: 6.sp,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                    decoration: InputDecoration(
                                      suffixIcon: IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          size: 10.w,
                                          Icons.cancel,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSecondary,
                                        ),
                                      ),
                                      hintText: 'Item Name',
                                      hintStyle: TextStyle(
                                        fontSize: 6.sp,
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                          color: Color(0xff90330E),
                                          width: 10,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            Checkbox(
                              value: true,
                              onChanged: (value) {},
                            ),
                            const Text("Include active item",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            const Spacer(),
                            Text(
                              "Total : ",
                              style: TextStyle(
                                  fontSize: 6.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(width: 5),
                            Padding(
                              padding: const EdgeInsets.only(right: 50),
                              child: Text(
                                '12000',
                                style: TextStyle(
                                    fontSize: 6.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Expanded(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Align(
                              alignment: Alignment.topRight,
                              child: DataTable(
                                columnSpacing: 1.w,
                                horizontalMargin: 1.w,
                                headingRowHeight: 42.h,
                                headingTextStyle: TextStyle(
                                    fontSize: 5.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                                headingRowColor: MaterialStatePropertyAll<
                                        Color>(
                                    Theme.of(context).colorScheme.onPrimary),
                                columns: const [
                                  DataColumn(
                                      label: Text(
                                    'UPC',
                                  )),
                                  DataColumn(
                                      label: Text(
                                    'Item name',
                                  )),
                                  DataColumn(
                                      label: Text(
                                    'Size',
                                  )),
                                  DataColumn(
                                      label: Text(
                                    'Pack',
                                  )),
                                  DataColumn(
                                      label: Text(
                                    'Cost',
                                  )),
                                  DataColumn(
                                      label: Text(
                                    'Price',
                                  )),
                                  DataColumn(
                                      label: Text(
                                    'Stock',
                                  )),
                                  DataColumn(
                                      label: Text(
                                    'Type',
                                  )),
                                ],
                                rows: const [
                                  DataRow(cells: [
                                    DataCell(Text('1')),
                                    DataCell(Text('Tofik vhora')),
                                    DataCell(Text('10:30')),
                                    DataCell(Text('Single')),
                                    DataCell(Text('\$15000')),
                                    DataCell(Text('\$10')),
                                    DataCell(Text('10')),
                                    DataCell(Text('Standerd')),
                                  ]),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.12,
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconsButtonsBottom(
                  onTap: () {},
                  icons: Ionicons.desktop,
                  name: 'Department',
                ),
                IconsButtonsBottom(
                  onTap: () {},
                  icons: Icons.change_circle_rounded,
                  name: 'Price change',
                ),
                IconsButtonsBottom(
                  onTap: () {},
                  icons: Icons.history,
                  name: 'History',
                ),
                IconsButtonsBottom(
                  onTap: () {},
                  icons: Icons.group,
                  name: 'Add to Group',
                ),
                IconsButtonsBottom(
                  onTap: () {},
                  icons: Icons.refresh,
                  name: 'Refresh',
                ),
                IconsButtonsBottom(
                  onTap: () {},
                  icons: Icons.print,
                  name: 'Print label',
                ),
                IconsButtonsBottom(
                  onTap: () {},
                  icons: Icons.tag,
                  name: 'Tag Along',
                ),
                IconsButtonsBottom(
                  onTap: () {},
                  icons: Icons.clean_hands_outlined,
                  name: 'Chnage UPC',
                ),
                IconsButtonsBottom(
                  onTap: () {},
                  icons: Icons.price_change,
                  name: 'Change Price',
                ),
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
  final Function() onTap;
  const IconsButtonsBottom(
      {super.key,
      required this.icons,
      required this.name,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
            padding: EdgeInsets.zero,
            onPressed: onTap,
            icon: Icon(icons, size: 10.sp, color: Colors.white)),
        Text(
          name,
          style: TextStyle(
              fontSize: 5.sp, color: Colors.white, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
