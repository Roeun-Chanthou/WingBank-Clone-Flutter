import 'package:flutter/material.dart';
import 'package:flutter_pin_code_widget/flutter_pin_code_widget.dart';
import 'package:wing_bank/screen/logout/views/screens/home/appbar/coin/splash_coin.dart';

class PinCode extends StatefulWidget {
  const PinCode({super.key});

  @override
  State<PinCode> createState() => _PinCodeState();
}

class _PinCodeState extends State<PinCode> {
  final String correctPin = "1234";

  void _navigateToNextScreen(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => SplashCoin()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text(
            'Skip',
            style: TextStyle(color: Colors.blueAccent),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 40),
            Text(
              'Set up PIN',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 20),
            const Text('Input PIN code'),
            const Text('Please enter PIN code for account: 123456789'),
            const SizedBox(height: 60),
            Expanded(
              child: PinCodeWidget(
                buttonColor: Colors.grey.shade200,
                borderSide: const BorderSide(color: Colors.white),
                minPinLength: 4,
                maxPinLength: 4,
                onChangedPin: (pin) {
                  if (pin == correctPin) {
                    _navigateToNextScreen(context);
                  }
                },
                onEnter: (pin, state) {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
