import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wing_bank/data/option/phonenumber.dart';
import 'package:wing_bank/screen/login/page/more/register_new_acc.dart';

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
      body: Container(
        height: screenHeight,
        width: screenWidth,
        color: const Color(0xFFA9CB37),
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                color: Colors.white,
                height: screenHeight,
                width: screenWidth,
                child: Stack(
                  children: [
                    Positioned(
                      child: Image.asset(
                        "assets/images/signinbg.jpg",
                        height: screenHeight * 0.4,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      children: [
                        const SizedBox(height: 55),
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.keyboard_arrow_left_sharp,
                            size: 45,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      top: screenHeight * 0.35,
                      child: Container(
                        height: screenHeight,
                        width: screenWidth,
                        decoration: const BoxDecoration(
                          color: Color(0xFFF5F5F5),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Sign in",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 15),
                              const Text(
                                "Please enter your phone number",
                                style: TextStyle(fontSize: 16),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: _showCountryPicker,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: SizedBox(
                                        width: 70,
                                        height: 50,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            const SizedBox(width: 5),
                                            CircleAvatar(
                                              radius: 15,
                                              child: ClipOval(
                                                child: selectedFlag,
                                              ),
                                            ),
                                            const SizedBox(width: 3.0),
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
                                      height: 50,
                                      child: TextField(
                                        controller: _phoneController,
                                        keyboardType: TextInputType.phone,
                                        inputFormatters: [
                                          FilteringTextInputFormatter
                                              .digitsOnly,
                                          PhoneNumberFormatter(),
                                        ],
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.white,
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
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            borderSide: BorderSide.none,
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            borderSide: BorderSide.none,
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                        style: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                        cursorHeight: 18,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 50,
                      left: 20,
                      right: 20,
                      child: SizedBox(
                        height: screenWidth * 0.12,
                        child: ElevatedButton(
                          onPressed: _isPhoneValid
                              ? () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const RegisterNewAccount(),
                                    ),
                                  );
                                }
                              : null,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: _isPhoneValid
                                ? Colors.blue.shade700
                                : Colors.blue.withOpacity(
                                    0.3,
                                  ),
                          ).copyWith(
                            backgroundColor:
                                WidgetStateProperty.resolveWith<Color>(
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
                    ),
                  ],
                ),
              ),
            ],
          ),
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
