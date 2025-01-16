import 'package:ai_barcode_scanner/ai_barcode_scanner.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class QRCodeScanner extends StatelessWidget {
  const QRCodeScanner({Key? key}) : super(key: key);

  void _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      debugPrint("Could not launch $url");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AiBarcodeScanner(
          onDetect: (BarcodeCapture capture) {
            final String? scannedValue = capture.barcodes.first.rawValue;
            if (scannedValue != null) {
              debugPrint("Scanned QR Code: $scannedValue");

              if (Uri.tryParse(scannedValue)?.hasAbsolutePath ?? false) {
                _launchURL(scannedValue);
              } else {
                debugPrint("Invalid scanned value: $scannedValue");
              }

              Navigator.pop(context, scannedValue);
            }
          },
          extendBodyBehindAppBar: false,
          appBarBuilder: (context, controller) {
            return AppBar(
              backgroundColor: const Color.fromARGB(255, 125, 122, 122),
              title: const Text(
                'QR Code Scanner',
              ),
            );
          },
          controller: MobileScannerController(
            detectionSpeed: DetectionSpeed.noDuplicates,
            formats: [BarcodeFormat.qrCode],
          ),
          onDispose: () {
            debugPrint("Scanner disposed.");
          },
          hideSheetTitle: true,
          hideGalleryIcon: true,
          hideSheetDragHandler: true,
          hideGalleryButton: false,
          showSuccess: true,
        ),
      ),
    );
  }
}
