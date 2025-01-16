import 'package:flutter/material.dart';
import 'package:wing_bank/constants/theme.dart';
import 'package:wing_bank/screen/login/views/faqs/faqs.dart';
import 'package:wing_bank/screen/logout/widgets/card_rigister.dart';


class RegisterNewAccount extends StatelessWidget {
  const RegisterNewAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor.mainColor,
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: BackgroundColor.mainColor,
      title: const Text(
        'Register New Account',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      centerTitle: true,
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
    );
  }

  Widget _buildBody() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenHeight = MediaQuery.of(context).size.height;
        final screenWidth = MediaQuery.of(context).size.width;
        return SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Container(
            height: screenHeight,
            width: screenWidth,
            color: BackgroundColor.mainColor,
            child: Stack(
              children: [
                Positioned(
                  left: -300,
                  top: -10,
                  child: Container(
                    width: screenWidth,
                    height: screenHeight * 0.85,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(350),
                        topRight: Radius.circular(260),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    top: 20,
                    right: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const FAQs(),
                            ),
                          );
                        },
                        child: CardRegister(
                          title: 'Saving Account',
                          descrption:
                              "Explore our Mobile Savings\nAccount: secure and easy,\nwith cash deposit and\nwithdrawal at Wing\nnationwide.",
                          getStart: "GET STARTED",
                          image: "assets/images/savingacc.png",
                          color: BackgroundColor.mainColor,
                        ),
                      ),
                      const SizedBox(height: 20),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const FAQs(),
                            ),
                          );
                        },
                        child: const CardRegister(
                          title: "Current Account",
                          descrption:
                              "Experience seamless\nbanking with Wing\nnationwide cash access.\nStay in control of your\nfinances!",
                          getStart: "GET STARTED",
                          image: "assets/images/currentacc.png",
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
