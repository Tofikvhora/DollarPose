import 'package:dollarpos/utils/StringNavigation.dart';
import 'package:dollarpos/view/ManuPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends HookWidget {
  static const String route = 'LoginPage';
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeRight,
        DeviceOrientation.landscapeLeft,
      ]);
      return;
    }, []);
    final isVisible = useState(false);
    final _dropDownValue = useState<String?>(null);
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        children: [
          Container(
            width: width,
            height: height,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'asset/MoneyPageIcons/Logo_transparent.png',
                  height: height * 0.35,
                  width: width * 0.28,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: width * 0.04),
                  height: height * 0.65,
                  width: width * 0.6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey.withOpacity(0.3),
                  ),
                  child: Column(
                    children: [
                      /// gap between textFields
                      SizedBox(
                        height: 50.h,
                      ),

                      /// drop down buttons
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(horizontal: width * 0.01),
                        width: width * 0.55,
                        height: height * 0.095,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.white)),
                        child: DropdownButton(
                          focusColor: Colors.white.withOpacity(0.1),
                          value: _dropDownValue.value,
                          underline: const SizedBox(),
                          elevation: 10,
                          isExpanded: true,
                          isDense: false,
                          borderRadius: BorderRadius.circular(10),
                          dropdownColor: Colors.black.withOpacity(0.9),
                          enableFeedback: false,
                          iconSize: 18.w,
                          iconEnabledColor: Colors.white,
                          hint: Text(
                            '<Select Server>',
                            style: TextStyle(
                                fontSize: 9.sp,
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
                                    fontSize: 9.sp,
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

                      /// gap between textFields
                      SizedBox(
                        height: 20.h,
                      ),

                      /// first textField email;
                      SizedBox(
                        width: width * 0.55,
                        height: height * 0.095,
                        child: TextField(
                          style: TextStyle(
                              fontSize: 8.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                          decoration: InputDecoration(
                            hintStyle: TextStyle(
                                fontSize: 8.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            hintText: 'Email Address',
                            suffixIcon: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5.w),
                              child: Icon(
                                Icons.person,
                                size: 15.w,
                                color: Colors.white,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(10)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(10)),
                            errorBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(10)),
                            focusedErrorBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),

                      /// password textField
                      SizedBox(
                        width: width * 0.55,
                        height: height * 0.095,
                        child: TextField(
                          obscureText: isVisible.value ? false : true,
                          style: TextStyle(
                              fontSize: 8.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                          decoration: InputDecoration(
                            hintStyle: TextStyle(
                                fontSize: 8.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            hintText: 'Password',
                            suffixIcon: IconButton(
                              padding: EdgeInsets.symmetric(horizontal: 5.w),
                              icon: Icon(
                                isVisible.value
                                    ? Icons.remove_red_eye
                                    : Icons.visibility_off,
                                size: 15.w,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                isVisible.value = !isVisible.value;
                              },
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(10)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(10)),
                            errorBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(10)),
                            focusedErrorBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 45.h,
                      ),

                      /// Login Button
                      InkWell(
                        onTap: () {
                          // TODO: add logic here
                          ManuPage.route.pushAndReplace(context);
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: width * 0.55,
                          height: height * 0.095,
                          decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.onSecondary,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onSecondary)),
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
              ],
            ),
          )
        ],
      ),
    );
  }
}
