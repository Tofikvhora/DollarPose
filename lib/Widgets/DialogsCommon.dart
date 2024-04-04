import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DialogsCommon extends HookWidget {
  final String name;
  const DialogsCommon({super.key, required this.name});

  @override
  Widget build(
    BuildContext context,
  ) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: width * 0.4,
      height: height * 0.2,
      child: Dialog(
        backgroundColor: Colors.black,
        alignment: Alignment.center,
        child: Column(
          children: [
            /// heading Container
            Container(
              width: width * 0.31,
              height: height * 0.09,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10)),
                  color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onSecondary),
                  ),
                  IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.cancel,
                        size: 12.w,
                        color: Theme.of(context).colorScheme.onSecondary,
                      ))
                ],
              ),
            ),
            buildNumericKeyPad(context),
          ],
        ),
      ),
    );
  }
}

Widget buildNumericKeyPad(BuildContext context) {
  final width = MediaQuery.of(context).size.width;
  final height = MediaQuery.of(context).size.height;

  // void _handleFieldChange(String value, int index) {
  //   _controllers[index].text = value;
  //   if (value.isNotEmpty && index < otp.length - 1) {
  //     FocusScope.of(context).nextFocus();
  //     _currentField = index + 1;
  //   } else if (value.isEmpty && index > 0) {
  //     FocusScope.of(context).previousFocus();
  //     _currentField = index - 1;
  //   }
  // }

  /// till here

  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Container(
        padding: EdgeInsets.symmetric(vertical: 10.h),
        width: width * 0.29,
        height: height * 0.18,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: _buildPinFields(context),
        ),
      ),
      SizedBox(
        width: width * 0.28,
        height: height * 0.6,
        child: _buildKeypad(context),
      ),
    ],
  );
}

/// keypad

Widget _buildKeypad(BuildContext context) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButton('1', context),
          _buildButton('2', context),
          _buildButton('3', context),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButton('4', context),
          _buildButton('5', context),
          _buildButton('6', context),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButton('7', context),
          _buildButton('8', context),
          _buildButton('9', context),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButton('DEL', context),
          _buildButton('0', context),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5.h, horizontal: 1.w),
            width: 29.w,
            height: 80.h,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'ENT',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 6.sp,
                    color: Theme.of(context).colorScheme.onSecondary,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    ],
  );
}

// otp button

final _pin = useState<String>('');
void _handleKeyPress(String value) {
  if (value == 'DEL') {
    if (_pin.value.isNotEmpty) {
      _pin.value = _pin.value.substring(0, _pin.value.length - 1);
    }
  } else {
    if (_pin.value.length < 4) {
      _pin.value += value;
    }
  }
}

Widget _buildButton(String value, BuildContext context) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 5.h, horizontal: 1.w),
    width: 26.w,
    height: 80.h,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
    child: ElevatedButton(
      onPressed: () => _handleKeyPress(value),
      child: value == 'DEL'
          ? Icon(
              Icons.backspace,
              size: 10.w,
              color: Theme.of(context).colorScheme.onSecondary,
            )
          : Text(
              value,
              style: TextStyle(
                  fontSize: 12.sp,
                  color: Theme.of(context).colorScheme.onSecondary,
                  fontWeight: FontWeight.bold),
            ),
    ),
  );
}

// otp textfields

List<Widget> _buildPinFields(BuildContext context) {
  // List<Widget> fields = [];
  final fields = useState<List<Widget>>([]);
  for (int i = 0; i < 4; i++) {
    fields.value.add(
      Container(
        alignment: Alignment.center,
        width: 20.w,
        height: 150.h,
        child: TextFormField(
          textAlignVertical: TextAlignVertical.center,
          readOnly: true,
          style: TextStyle(
              fontSize: 9.sp,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.onSecondary),
          initialValue: _pin.value.length > i ? _pin.value[i] : '',
          textAlign: TextAlign.center,
          decoration: const InputDecoration(
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          ),
        ),
      ),
    );
  }
  return fields.value;
}

// /// otp textFields
//
// class OtpTextField extends StatelessWidget {
//   final TextEditingController controller;
//   final bool autoFocus;
//   final Function(String) onChanged;
//
//   const OtpTextField({
//     Key? key,
//     required this.controller,
//     this.autoFocus = false,
//     required this.onChanged,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.symmetric(horizontal: 2.w, vertical: 25.h),
//       width: 20.w,
//       height: 65.h,
//       child: TextField(
//         style: TextStyle(
//             fontSize: 10.sp,
//             color: Theme.of(context).colorScheme.onSecondary,
//             fontWeight: FontWeight.bold),
//         controller: controller,
//         maxLength: 1,
//         textAlign: TextAlign.center,
//         decoration: const InputDecoration(
//           // hintText: '0',
//           // hintStyle: TextStyle(
//           //     fontSize: 10.sp,
//           //     color: Theme.of(context).colorScheme.onSecondary),
//           filled: true,
//           fillColor: Colors.white,
//           counterText: "",
//           enabledBorder: OutlineInputBorder(
//             borderSide: BorderSide(color: Colors.grey),
//           ),
//           focusedBorder: OutlineInputBorder(
//             borderSide: BorderSide(color: Colors.blue),
//           ),
//         ),
//         onChanged: onChanged,
//       ),
//     );
//   }
// }
