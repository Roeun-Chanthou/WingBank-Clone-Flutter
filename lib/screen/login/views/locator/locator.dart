import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/constants/theme.dart';

import '../../../../data/data_source/language_data.dart';
import '../../../../logic/language_logic.dart';

class Locator extends StatefulWidget {
  @override
  _LocatorState createState() => _LocatorState();
}

class _LocatorState extends State<Locator> {
  late GoogleMapController mapController;

  LatLng _initialCameraPosition =
      LatLng(11.569120371879613, 104.91847055542736);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    LanguageData _language = context.watch<LanguageLogic>().language;
    return Scaffold(
      backgroundColor: BackgroundColor.mainColor,
      appBar: AppBar(
        backgroundColor: BackgroundColor.mainColor,
        centerTitle: true,
        title: Text(
          _language.locator,
          style: TextStyle(
            fontSize: 18.sp,
            color: Colors.white,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
          size: 20.sp,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.sp),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 22.sp,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        width: 100.w,
        height: 100.h,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.sp),
            topRight: Radius.circular(20.sp),
          ),
        ),
        child: GoogleMap(
          mapType: MapType.terrain,
          initialCameraPosition: CameraPosition(
            target: _initialCameraPosition,
            zoom: 15,
          ),
          onMapCreated: (GoogleMapController controller) {
            mapController = controller;
          },
          myLocationEnabled: true,
          myLocationButtonEnabled: true,
        ),
      ),
    );
  }
}
