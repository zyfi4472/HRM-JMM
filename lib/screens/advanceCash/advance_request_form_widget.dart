import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:signature/signature.dart';

import '../../components/dropdown.dart';

class AdvanceRequestFormWidget extends StatefulWidget {
  const AdvanceRequestFormWidget({
    Key? key,
    this.description,
  }) : super(key: key);

  final String? description;

  @override
  // ignore: library_private_types_in_public_api
  _AdvanceRequestFormWidgetState createState() =>
      _AdvanceRequestFormWidgetState();
}

class _AdvanceRequestFormWidgetState extends State<AdvanceRequestFormWidget> {
  final SignatureController _controller = SignatureController(
    penStrokeWidth: 1,
    penColor: Colors.red,
    exportBackgroundColor: Colors.transparent,
    exportPenColor: Colors.black,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildLabel('Month'),
            const SizedBox(height: 10),
            SizedBox(
              height: 35.h,
              width: 180.w,
              child: const MyDropdownWidget(),
            ),
            const SizedBox(height: 15),
            _buildLabel('Amount'),
            const SizedBox(height: 10),
            _buildAmountTextField(),
            const SizedBox(height: 20),
            _buildLabel('Description'),
            _buildDescriptionTextField(),
            const SizedBox(height: 10),
            _buildLabel('E-Signature'),
            const SizedBox(height: 5),
            _buildSignatureCanvas(),
            const SizedBox(height: 25),
            _buildSubmitButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildLabel(String text) {
    return Text(
      text,
      style: TextStyle(
        color: const Color(0XFF989898),
        fontSize: 14.sp,
      ),
    );
  }

  Widget _buildAmountTextField() {
    return SizedBox(
      height: 40.h,
      width: 170.w,
      child: const TextField(
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0XFFCECED4),
              width: 2.0,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0XFFCECED4),
              width: 2.0,
            ),
          ),
          suffixText: 'SAR',
          suffixStyle: TextStyle(color: Colors.black),
        ),
      ),
    );
  }

  Widget _buildDescriptionTextField() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      width: 290.w,
      child: const TextField(
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0XFFCECED4),
              width: 2.0,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0XFFCECED4),
              width: 2.0,
            ),
          ),
        ),
        maxLines: 5,
      ),
    );
  }

  Widget _buildSignatureCanvas() {
    return SizedBox(
      height: 170.h,
      child: Signature(
        key: const Key('signature'),
        controller: _controller,
        width: 310.w,
        height: 150.h,
        backgroundColor: Colors.grey[300]!,
      ),
    );
  }

  Widget _buildSubmitButton() {
    return SizedBox(
      height: 40.h,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          _requestSentDialog(context);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0XFF2681C1),
        ),
        child: const Text('Send Request'),
      ),
    );
  }

  void _requestSentDialog(BuildContext context) {
    showDialog(
      // barrierColor: Colors.white,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 40.0.w,
                    height: 40.0.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: const Color(0XFF64A41A), // Circle outline color
                        width: 3.0.w,
                      ),
                    ),
                    child: Icon(
                      Icons.check,
                      color: const Color(0XFF64A41A), // Tick color
                      size: 30.0.sp,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              const Text(
                'Request Sent',
                style: TextStyle(
                  color: Color(0XFF64A41A),
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                'Your request has been sent to Admin',
                style:
                    TextStyle(color: const Color(0XFF78787B), fontSize: 14.sp),
              ),
              SizedBox(height: 10.h),
              SizedBox(
                width: 100.w,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(
                          0XFF64A41A), // Change this color to the desired color
                    ),
                    child: const Text('Done')),
              )
            ],
          ),
        );
      },
    );
  }
}
