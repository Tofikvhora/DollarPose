import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class KeyPadCustom extends HookWidget {
  String pin;
  KeyPadCustom({super.key, required this.pin});

  @override
  Widget build(BuildContext context) {
    void _handleKeyPress(String value) {
      if (value == 'DEL') {
        if (pin.isNotEmpty) {
          pin = pin.substring(0, pin.length - 1);
        }
      } else {
        if (pin.length < 4) {
          pin += value;
        }
      }
    }

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return ListView(
      children: [
        _buildKeypad(context, () => _handleKeyPress),
      ],
    );
  }
}

Widget _buildKeypad(BuildContext context, Function() keyPress) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButton('1', context, keyPress),
          _buildButton('2', context, keyPress),
          _buildButton('3', context, keyPress),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButton('4', context, keyPress),
          _buildButton('5', context, keyPress),
          _buildButton('6', context, keyPress),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButton('7', context, keyPress),
          _buildButton('8', context, keyPress),
          _buildButton('9', context, keyPress),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButton('.', context, keyPress),
          _buildButton('0', context, keyPress),
          _buildButton('00', context, keyPress),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
              margin: EdgeInsets.symmetric(vertical: 3.h),
              alignment: Alignment.center,
              width: 30.w,
              height: 65.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Icon(
                Icons.backspace,
                size: 10.w,
                color: Theme.of(context).colorScheme.onSecondary,
              )),
          Container(
            alignment: Alignment.center,
            width: 50.w,
            height: 65.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: Text(
              'CASH',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 9.sp,
                  color: Theme.of(context).colorScheme.onSecondary,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    ],
  );
}

Widget _buildButton(String value, BuildContext context, Function() keyPress) {
  return Container(
    alignment: Alignment.center,
    margin: EdgeInsets.symmetric(vertical: 3.h),
    width: 30.w,
    height: 52.h,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
    child: ElevatedButton(
      onPressed: keyPress,
      child: value == 'DEL'
          ? Icon(
              Icons.backspace,
              size: 10.w,
              color: Theme.of(context).colorScheme.onSecondary,
            )
          : Text(
              value,
              style: TextStyle(
                  fontSize: 10.sp,
                  color: Theme.of(context).colorScheme.onSecondary,
                  fontWeight: FontWeight.bold),
            ),
    ),
  );
}
