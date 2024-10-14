import 'package:flutter/material.dart';

class ProjectModel {
  final String projectId;
  final String projectName;
  final String projectDescription;
  final List? imageURLs;
  final String? playStoreLink;
  final String? appStoreLink;
  final Color titleColor;
  final Color bgColor1;
  final Color bgColor2;

  ProjectModel({
    required this.projectName,
    required this.projectDescription,
    required this.projectId,
    required this.imageURLs,
    required this.playStoreLink,
    required this.appStoreLink,
    required this.titleColor,
    required this.bgColor1,
    required this.bgColor2,
  });
}
