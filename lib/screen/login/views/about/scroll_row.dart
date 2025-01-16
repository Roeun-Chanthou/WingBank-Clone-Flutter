import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/screen/logout/widgets/social_media_circle.dart';

import '../../../../data/data_source/language_data.dart';
import '../../../../logic/language_logic.dart';

class ScrollRowSocialMedia extends StatelessWidget {
  const ScrollRowSocialMedia({super.key});

  @override
  Widget build(BuildContext context) {
    LanguageData _language = context.watch<LanguageLogic>().language;
    return SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.all(6.w),
      child: Row(
        children: [
          Socialmediacircle(
            image: "assets/socialmedia/logo-broswer.png",
            text: _language.website,
          ),
          SizedBox(
            width: 5.w,
          ),
          Socialmediacircle(
            image: "assets/socialmedia/logo-facebook.png",
            text: _language.facebook,
          ),
          SizedBox(
            width: 5.w,
          ),
          Socialmediacircle(
            image: "assets/socialmedia/logo-instagram.png",
            text: _language.instagram,
          ),
          SizedBox(
            width: 5.w,
          ),
          Socialmediacircle(
            image: "assets/socialmedia/tiktok.png",
            text: _language.tiktok,
          ),
          SizedBox(
            width: 5.w,
          ),
          Socialmediacircle(
            image: "assets/socialmedia/logo-youtube.png",
            text: _language.youtube,
          ),
        ],
      ),
    );
  }
}
