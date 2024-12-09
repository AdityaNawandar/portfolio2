// import 'dart:typed_data';
import 'package:file_selector/file_selector.dart';
import 'package:flutter/services.dart'; // To load the asset file
import 'package:portfolio/constants/constants.dart';

class FileDownloader {
  ///
  static Future<void> downloadFileToUserComputer() async {
    ///
    String assetPath;
    assetPath = '${kstrResumeFileDirectoryPath}resume_aditya_nawandar.pdf';
    const String mimeType = 'application/pdf';
    // Load the file from assets
    ByteData byteData = await rootBundle.load(assetPath);
    Uint8List fileData = byteData.buffer.asUint8List();
    // Ask the user for a location to save the file
    final FileSaveLocation? result =
        await getSaveLocation(suggestedName: 'resume_aditya_nawandar.pdf');
    if (result == null) {
      // User canceled the operation
      return;
    }
    // Create a file object from the file data
    final XFile pdfFile = XFile.fromData(
      fileData,
      mimeType: mimeType,
      name: 'resume_aditya_nawandar.pdf',
    );
    // Save the file to the chosen path
    await pdfFile.saveTo(result.path);
  }

  ///
}
