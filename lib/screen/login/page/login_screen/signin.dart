import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wing_bank/screen/logout/views/controller/controll_screen.dart';

import '../../../../data/option/phonenumber.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  String selectedCountry = '+855';
  Widget selectedFlag = Image.asset(
    "assets/flags/cambodia.png",
    fit: BoxFit.cover,
    height: 30,
    width: 30,
  );
  Future<void> _login() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLoggedIn', true);

    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => MainScreen()),
      (Route<dynamic> route) => false,
    );
  }

  final TextEditingController _phoneController = TextEditingController();
  bool _isPhoneValid = false;

  @override
  void initState() {
    super.initState();
    _phoneController.addListener(_validatePhone);
  }

  void _validatePhone() {
    setState(() {
      _isPhoneValid = _phoneController.text.length >= 11;
    });
  }

  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Container(
        height: screenHeight,
        width: screenWidth,
        color: Colors.white,
        padding: EdgeInsets.symmetric(
          horizontal: 20.sp,
          vertical: 20.sp,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sign in",
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    "Please enter your phone number",
                    style: TextStyle(
                      fontSize: 16.sp,
                    ),
                  ),
                  SizedBox(height: 20.sp),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: _showCountryPicker,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8.0,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: SizedBox(
                            height: 30.sp,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const SizedBox(width: 5),
                                CircleAvatar(
                                  radius: 15,
                                  child: ClipOval(
                                    child: selectedFlag,
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(selectedCountry),
                                const Icon(
                                  Icons.keyboard_arrow_down_sharp,
                                  size: 32,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: SizedBox(
                          height: 30.sp,
                          child: TextField(
                            controller: _phoneController,
                            keyboardType: TextInputType.phone,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              PhoneNumberFormatter(),
                            ],
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey.shade200,
                              hintText: 'Phone Number',
                              hintStyle: const TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                              ),
                              prefixIcon: const Icon(
                                Icons.phone,
                                color: Colors.grey,
                                size: 28,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                borderSide: BorderSide.none,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                borderSide: BorderSide.none,
                              ),
                            ),
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            cursorHeight: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                bottom: 20.sp,
              ),
              height: 6.h,
              width: 90.w,
              child: ElevatedButton(
                onPressed: _isPhoneValid
                    ? () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MainScreen(),
                          ),
                        );
                        _login();
                      }
                    : null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: _isPhoneValid
                      ? Colors.blue.shade700
                      : Colors.blue.withOpacity(
                          0.3,
                        ),
                ).copyWith(
                  backgroundColor: WidgetStateProperty.resolveWith<Color>(
                    (Set<WidgetState> states) {
                      if (states.contains(WidgetState.disabled)) {
                        return Colors.blue.withOpacity(0.3);
                      }
                      return Colors.blue.shade700;
                    },
                  ),
                ),
                child: const Text(
                  "CONTINUE",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showCountryPicker() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          height: 380,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Choose Country',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 22,
                  child: ClipOval(
                    child: Image.asset(
                      "assets/flags/cambodia.png",
                      fit: BoxFit.cover,
                      height: 50,
                      width: 50,
                    ),
                  ),
                ),
                title: const Text('+855'),
                subtitle: const Text('Cambodia'),
                trailing: selectedCountry == '+855'
                    ? const Icon(
                        Icons.check_circle_sharp,
                        color: Colors.green,
                      )
                    : null,
                onTap: () {
                  setState(() {
                    selectedCountry = '+855';
                    selectedFlag = Image.asset(
                      "assets/flags/cambodia.png",
                      fit: BoxFit.cover,
                      height: 30,
                      width: 30,
                    );
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 22,
                  child: ClipOval(
                    child: Image.asset(
                      "assets/flags/southkorea.png",
                      fit: BoxFit.cover,
                      height: 50,
                      width: 50,
                    ),
                  ),
                ),
                subtitle: const Text('South Korea'),
                title: const Text('+82'),
                trailing: selectedCountry == '+82'
                    ? const Icon(Icons.check_circle_sharp, color: Colors.green)
                    : null,
                onTap: () {
                  setState(() {
                    selectedCountry = '+82';
                    selectedFlag = Image.asset(
                      "assets/flags/southkorea.png",
                      fit: BoxFit.cover,
                      height: 30,
                      width: 30,
                    );
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 22,
                  child: ClipOval(
                    child: Image.asset(
                      "assets/flags/thai.png",
                      fit: BoxFit.cover,
                      height: 50,
                      width: 50,
                    ),
                  ),
                ),
                subtitle: const Text('Thailand'),
                title: const Text('+66'),
                trailing: selectedCountry == '+66'
                    ? const Icon(Icons.check_circle_sharp, color: Colors.green)
                    : null,
                onTap: () {
                  setState(() {
                    selectedCountry = '+66';
                    selectedFlag = Image.asset(
                      "assets/flags/thai.png",
                      fit: BoxFit.cover,
                      height: 30,
                      width: 30,
                    );
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 22,
                  child: ClipOval(
                    child: Image.asset(
                      "assets/flags/japan.png",
                      fit: BoxFit.cover,
                      height: 50,
                      width: 50,
                    ),
                  ),
                ),
                subtitle: const Text('Japan'),
                title: const Text('+81'),
                trailing: selectedCountry == '+81'
                    ? const Icon(Icons.check_circle_sharp, color: Colors.green)
                    : null,
                onTap: () {
                  setState(() {
                    selectedCountry = '+81';
                    selectedFlag = Image.asset(
                      "assets/flags/japan.png",
                      fit: BoxFit.cover,
                      height: 30,
                      width: 30,
                    );
                  });
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
