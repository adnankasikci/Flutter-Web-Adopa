import 'package:flutter/material.dart';

class Bilgiler{
  static Bilgiler instance = Bilgiler._init();

  int ImageCheckNumber =1;

  final List topBarName = [
    "Anasayfa",
    "Portfolyo",
    "Sosyal Medya",
    "İletişim"
  ];

  final List titleBarName = [
    "Adnan Şevki Kaşıkçı",
    "Sunum Dosyaları",
    "Sosyal Medya",
    "Gmail - Outlook"
  ];

  final List subtitleBarName=[
    "UI UX Designer and Mobil Web Developer",
    "https://www.behance.net/adopa",
    "https://linktr.ee/adopa",
    "erbilado4@gmail.com"
  ];

  Bilgiler._init();

}