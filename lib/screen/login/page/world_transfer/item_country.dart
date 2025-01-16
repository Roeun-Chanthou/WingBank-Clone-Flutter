import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/data/data_source/list_country.dart';

class ItemCountry extends StatelessWidget {
  const ItemCountry({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Center(
          child: Text(
            "Choose Country",
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 18.sp),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.sp),
          child: TextField(
            decoration: InputDecoration(
              fillColor: Colors.grey.withOpacity(0.15),
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none,
              ),
              prefixIcon: Icon(
                Icons.search,
                size: 20.sp,
                color: Colors.grey[600],
              ),
              hintText: "Search",
              hintStyle: TextStyle(
                fontSize: 16.sp,
                color: Colors.grey[600],
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 10.sp),
            ),
          ),
        ),
        Expanded(
          child: Scrollbar(
            child: ListView.builder(
              padding: EdgeInsets.only(
                top: 10.sp,
                bottom: 20.sp,
                right: 18.sp,
                left: 18.sp,
              ),
              physics: AlwaysScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: countryCodes.length,
              itemBuilder: (context, index) {
                var item = countryCodes[index];
                var country = Country.fromJson(item);
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 16.sp,
                            backgroundImage: AssetImage(
                              "assets/country/${country.iso}.png",
                            ),
                          ),
                          SizedBox(width: 15.sp),
                          Text(country.name),
                        ],
                      ),
                      SizedBox(height: 12.sp),
                      Container(
                        height: 3.sp,
                        color: Colors.grey[400],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
