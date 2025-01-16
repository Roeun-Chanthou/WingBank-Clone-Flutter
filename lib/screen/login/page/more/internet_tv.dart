import 'package:flutter/material.dart';
import 'package:wing_bank/constants/theme.dart';
import 'package:wing_bank/data/data_source/item_other.dart';

class InternetTv extends StatelessWidget {
  const InternetTv({super.key});

  @override
  Widget build(BuildContext context) {
    final screeHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final responsiveFont = screenWidth * 0.035;

    return Scaffold(
      // backgroundColor: BackgroundColor.mainColor,
      appBar: AppBar(
        backgroundColor: BackgroundColor.mainColor,
        title: const Text(
          'Internet and TV',
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
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.only(bottom: 40, top: 8),
                    scrollDirection: Axis.vertical,
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(items.length, (index) {
                        return Column(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: SizedBox(
                                height: 40,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 35,
                                      height: 35,
                                      padding: const EdgeInsets.all(5),
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.blue,
                                      ),
                                      child: CircleAvatar(
                                        radius: 15,
                                        backgroundImage: AssetImage(
                                          items[index].imagePath,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Text(
                                      items[index].text,
                                      style: TextStyle(
                                        fontSize: responsiveFont,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Divider(
                              color: Colors.grey[900],
                              thickness: 0.1,
                            ),
                          ],
                        );
                      }),
                    ),
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
