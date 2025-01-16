import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/screen/login/page/more/register_new_acc.dart';

class CardBottom extends StatelessWidget {
  const CardBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.only(left: 5.w),
        child: Row(
          children: [
            Expanded(
              child: Text(
                "Interest Rate Calculator",
                style: TextStyle(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RegisterNewAccount(),
                  ),
                );
              },
              icon: Icon(
                Icons.arrow_forward_ios,
                size: 18.sp,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
