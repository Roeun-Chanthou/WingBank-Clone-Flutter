import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/screen/logout/widgets/item_notifi.dart';

class Announcements extends StatefulWidget {
  const Announcements({super.key});

  @override
  State<Announcements> createState() => _AnnouncementsState();
}

class _AnnouncementsState extends State<Announcements> {
  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();
    return Container(
      color: const Color(0xFFF5F5F5),
      child: Scrollbar(
        thumbVisibility: true,
        controller: scrollController,
        child: SingleChildScrollView(
          controller: scrollController,
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(
            vertical: 2.h,
          ),
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const ITemNotification(
                title: "ដំណឹងពីការធ្វើតំហែទាំប្រព័ន្ធ",
                date: "2024-11-02 | 03:25:27 PM",
                message:
                    "ធនាគារ វីង នឹងធ្វើតំហែទាំប្រព័ន្ធប្រតិបត្តិការនៅយប់រំលងអធ្រាត្រឈានចូលថ្ងៃទី3 ខែវិច្ឆិកា ឆ្នាំ2024 ចាប់ពីម៉ោង 12:00 រហូតដល់ម៉ោង 2:00 ព្រឹក។ ដូច្នេះរាល់ប្រតិបត្តិការដែលធ្វើឡើងតាមប្រព័ន្ធធនាគារ វីង នឹងត្រូវផ្អាកដំណើរការជាបណ្តោះអាសន្ន។ សូមអរគុណ! ធនាគារ វីង នឹងធ្វើតំហែទាំប្រព័ន្ធប្រតិបត្តិការនៅយប់រំលងអធ្រាត្រឈានចូលថ្ងៃទី3 ខែវិច្ឆិកា ឆ្នាំ2024 ចាប់ពីម៉ោង 12:00 រហូតដល់ម៉ោង 2:00 ព្រឹក។ ដូច្នេះរាល់ប្រតិបត្តិការដែលធ្វើឡើងតាមប្រព័ន្ធធនាគារ វីង នឹងត្រូវផ្អាកដំណើរការជាបណ្តោះអាសន្ន។ សូមអរគុណ!",
              ),
              SizedBox(height: 2.h),
              const ITemNotification(
                title: "ដំណឹងពីការធ្វើតំហែទាំប្រព័ន្ធ",
                date: "2024-11-02 | 03:25:27 PM",
                message:
                    "ធនាគារ វីង នឹងធ្វើតំហែទាំប្រព័ន្ធប្រតិបត្តិការនៅយប់រំលងអធ្រាត្រឈានចូលថ្ងៃទី3 ខែវិច្ឆិកា ឆ្នាំ2024 ចាប់ពីម៉ោង 12:00 រហូតដល់ម៉ោង 2:00 ព្រឹក។ ដូច្នេះរាល់ប្រតិបត្តិការដែលធ្វើឡើងតាមប្រព័ន្ធធនាគារ វីង នឹងត្រូវផ្អាកដំណើរការជាបណ្តោះអាសន្ន។ សូមអរគុណ!",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
