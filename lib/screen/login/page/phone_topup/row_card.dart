import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class GridCard extends StatelessWidget {
  const GridCard({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> items = [
      {
        'title': 'Cellcard',
        'image': 'assets/animations/icons-cellcard.png',
      },
      {
        'title': 'Smart',
        'image': 'assets/animations/icons-smart.png',
      },
      {
        'title': 'Metfone',
        'image': 'assets/animations/icons-metfone.png',
      },
      {
        'title': 'Seatel',
        'image': 'assets/animations/icons-seatel2.png',
      },
      {
        'title': 'Cootel',
        'image': 'assets/animations/icons-cootel.png',
      },
    ];

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 15.w,
        mainAxisSpacing: 2.w,
        childAspectRatio: 2.2,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return Row(
          children: [
            Container(
              height: 12.w,
              width: 12.w,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage(item['image']!),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 3.w),
            Text(
              item['title']!,
              style: TextStyle(
                fontSize: 16.sp,
              ),
            ),
          ],
        );
      },
    );
  }
}
