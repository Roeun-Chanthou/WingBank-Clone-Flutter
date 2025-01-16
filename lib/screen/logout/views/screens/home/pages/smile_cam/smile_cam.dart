import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SmileCam extends StatelessWidget {
  const SmileCam({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text("Smile Cambodia"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              width: 100.sp,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 16,
                ),
                child: Column(
                  children: [
                    _buildTextField(
                      label: "Patient Name *",
                      hint: "Patient Name *",
                    ),
                    _buildTextField(
                      label: "Date of Birth *",
                      hint: "Date of Birth *",
                      icon: Icons.calendar_month,
                    ),
                    _buildTextField(
                      label: "Phone Number #1 *",
                      hint: "Phone Number #1 *",
                    ),
                    _buildTextField(
                      label: "Phone Number #2 *",
                      hint: "Phone Number #2 *",
                    ),
                    _buildTextField(
                      label: "Current Provincial *",
                      hint: "Current Provincial *",
                      icon: Icons.arrow_drop_down,
                    ),
                    _buildTextField(
                      label: "Diagnostic *",
                      hint: "Diagnostic *",
                      icon: Icons.arrow_drop_down,
                    ),
                    _buildTextField(
                      label: "Patient Relationship *",
                      hint: "Patient Relationship *",
                      icon: Icons.arrow_drop_down,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                minimumSize: Size(60.sp, 45),
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              onPressed: () {},
              child: Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(
      {required String label, required String hint, IconData? icon}) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 16),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.blue.shade600,
            ),
          ),
          label: Text(label),
          labelStyle: TextStyle(
            fontSize: 16,
            color: Colors.grey.shade600,
          ),
          focusColor: Colors.blue.shade600,
          hintText: hint,
          hintStyle: TextStyle(
            color: Colors.grey.shade500,
          ),
          floatingLabelStyle: TextStyle(
            color: Colors.blue,
          ),
          suffixIcon: Icon(
            icon,
          ),
        ),
      ),
    );
  }
}
