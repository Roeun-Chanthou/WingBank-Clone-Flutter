import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/screen/login/page/more/register_new_acc.dart';
import 'package:wing_bank/screen/login/page/more/utilities.dart';


class SearchHeader extends StatelessWidget {
  const SearchHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Utilities(),
          ),
        );
      },
      child: Container(
        height: 5.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            25,
          ),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 2.5.w,
        ),
        child: Row(
          children: [
            Icon(
              Icons.search,
              color: Colors.grey,
              size: 20.sp,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              "Search",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18.sp,
              ),
            ),
            const Spacer(),
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
                Icons.qr_code_2,
                color: Colors.grey[700],
                size: 20.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
