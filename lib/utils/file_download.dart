// import 'dart:typed_data';
import 'package:file_selector/file_selector.dart';
import 'package:flutter/services.dart'; // To load the asset file
import 'package:flutter/foundation.dart' show kIsWeb; // For detecting web

class FileDownloader {
  static Future<void> downloadFileToUserComputer() async {
    String assetPath;

    // Detect platform and adjust the path accordingly
    if (kIsWeb) {
      assetPath = 'files/aditya_nawandar.pdf'; // Web doesn't need 'assets/'
    } else {
      assetPath = 'assets/files/aditya_nawandar.pdf'; // Mobile needs 'assets/'
    }

    const String mimeType = 'application/pdf';
    // Load the file from assets
    ByteData byteData = await rootBundle.load(assetPath);
    Uint8List fileData = byteData.buffer.asUint8List();

    // Ask the user for a location to save the file
    final FileSaveLocation? result =
        await getSaveLocation(suggestedName: 'aditya_nawandar.pdf');
    if (result == null) {
      // User canceled the operation
      return;
    }

    // Create a file object from the file data
    final XFile pdfFile = XFile.fromData(
      fileData,
      mimeType: mimeType,
      name: 'aditya_nawandar.pdf',
    );

    // Save the file to the chosen path
    await pdfFile.saveTo(result.path);
  }
}
