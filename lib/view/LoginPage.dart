import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends HookWidget {
  static const String route = 'LoginPage';
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isVisible = useState(false);
    final _dropDownValue = useState<String?>(null);
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        children: [
          // logo of app
          Image.asset(
            'asset/Icons/Logo.png',
            height: height * 0.3,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: width * 0.04),
            height: height * 0.5,
            width: width * 0.9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.black12.withOpacity(0.05),
            ),
            child: Column(
              children: [
                /// drop down buttons
                Container(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.01),
                  margin: EdgeInsets.symmetric(vertical: height * 0.03),
                  width: width * 0.85,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: Theme.of(context).colorScheme.onSecondary)),
                  child: DropdownButton(
                    focusColor: Colors.black12.withOpacity(0.00),
                    value: _dropDownValue.value,
                    underline: const SizedBox(),
                    elevation: 10,
                    isExpanded: true,
                    isDense: false,
                    borderRadius: BorderRadius.circular(10),
                    dropdownColor: Colors.white,
                    enableFeedback: false,
                    iconSize: 18.w,
                    iconEnabledColor: Colors.black,
                    hint: Text(
                      '<Select Server>',
                      style: TextStyle(
                          fontSize: 9.sp,
                          color: Colors.black,
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
                              fontSize: 9.sp,
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

                /// first textField email;
                SizedBox(
                  width: width * 0.85,
                  height: height * 0.08,
                  child: TextField(
                    style: TextStyle(
                        fontSize: 8.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                          fontSize: 8.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      hintText: 'Email Address',
                      suffixIcon: Icon(
                        Icons.person,
                        size: 15.w,
                        color: Colors.black,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).colorScheme.onSecondary),
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).colorScheme.onSecondary),
                          borderRadius: BorderRadius.circular(10)),
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).colorScheme.onSecondary),
                          borderRadius: BorderRadius.circular(10)),
                      focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).colorScheme.onSecondary),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),

                /// gap between textFields
                SizedBox(
                  height: 20.h,
                ),

                /// password textField
                SizedBox(
                  width: width * 0.85,
                  height: height * 0.08,
                  child: TextField(
                    obscureText: isVisible.value ? false : true,
                    style: TextStyle(
                        fontSize: 8.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                          fontSize: 8.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      hintText: 'Password',
                      suffixIcon: IconButton(
                        icon: Icon(
                          isVisible.value
                              ? Icons.remove_red_eye
                              : Icons.visibility_off,
                          size: 15.w,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          isVisible.value = !isVisible.value;
                        },
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).colorScheme.onSecondary),
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).colorScheme.onSecondary),
                          borderRadius: BorderRadius.circular(10)),
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).colorScheme.onSecondary),
                          borderRadius: BorderRadius.circular(10)),
                      focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).colorScheme.onSecondary),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),

                /// gap between textFields
                SizedBox(
                  height: 20.h,
                ),

                /// Login Button
                InkWell(
                  onTap: () {
                    // TODO: add logic here
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: width * 0.85,
                    height: height * 0.09,
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.onSecondary,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: Theme.of(context).colorScheme.onSecondary)),
                    child: Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 11.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          ),
          // logins ui
        ],
      ),
    );
  }
}
