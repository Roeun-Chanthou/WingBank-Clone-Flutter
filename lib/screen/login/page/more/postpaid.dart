import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/constants/theme.dart';

import '../../../../data/data_source/list_country.dart';

class Postpaid extends StatelessWidget {
  const Postpaid({super.key});

  @override
  Widget build(BuildContext context) {
    final screeHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: BackgroundColor.mainColor,
        title: const Text(
          'Postpaid',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        toolbarHeight: 45,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.attach_money,
              size: 30,
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: Container(
        color: BackgroundColor.mainColor,
        child: Container(
          width: screenWidth,
          height: screeHeight,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            color: Color(0xFFF5F5F5),
          ),
          padding: const EdgeInsets.only(
            top: 20,
            left: 20,
            right: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 45,
                child: TextField(
                  cursorHeight: 18,
                  cursorColor: Colors.blue.shade700,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.qr_code_2_sharp),
                    ),
                    hintText: "Search",
                    hintStyle:
                        const TextStyle(fontSize: 18, color: Colors.grey),
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 0,
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: Container(
                  height: screeHeight,
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: ListView.builder(
                    padding: EdgeInsets.only(
                      bottom: 20.sp,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
