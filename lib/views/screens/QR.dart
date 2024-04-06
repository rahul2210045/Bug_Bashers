// // import 'package:flutter/material.dart';

// // class QR extends StatefulWidget {
// //   const QR({super.key});

// //   @override
// //   State<QR> createState() => _QRState();
// // }

// // class _QRState extends State<QR> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return const Placeholder();
// //   }
// // }

// // Future<void> scanQR() async {
// //     try {
// //       final qrCode = await FlutterBarcodeScanner.scanBarcode(
// //           '#ff6666', 'Cancel', true, ScanMode.QR);
// //       if (!mounted) return;
// //       setState(() {
// //         this.qrResult = qrCode.toString();
// //       });
// //       if (qrResult.isNotEmpty) {
// //         print("----------------------------------------------------------------------------------------------");
// //         await fetchAndParseQrData();
// //         print("----------------------------------------------------------------------------------------------");
// //         showSuccessSnackbar('QR code scanned successfully ');
// //         setState(() {

// //         });
// //         print(qrResult);
// //       }
// //     } on PlatformException {
// //       showErrorSnackbar('Failed to read QR code');
// //     }
// //   }
// // String qrResult = '';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

// class QRImageReader extends StatefulWidget {
//   @override
//   _QRImageReaderState createState() => _QRImageReaderState();
// }

// class _QRImageReaderState extends State<QRImageReader> {
//   String _qrText = 'Scan a QR code from an image';

//   Future<void> _scanQRCode() async {
//     try {
//       final pickedImage =
//           await ImagePicker().getImage(source: ImageSource.gallery);
//       if (pickedImage != null) {
//         final barcode = await FlutterBarcodeScanner.scanBarcode(
//           '#ff6666', // Color for the overlay
//           'Cancel', // Text for the cancel button
//           true, // Enable flash
//           ScanMode.DEFAULT, // Scan mode
//         );
//         setState(() {
//           _qrText = barcode ?? 'No QR code found';
//         });
//       }
//     } catch (e) {
//       setState(() {
//         _qrText = 'Error: $e';
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('QR Image Reader'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(_qrText),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: _scanQRCode,
//               child: Text('Select Image'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     home: QRImageReader(),
//   ));
// }
