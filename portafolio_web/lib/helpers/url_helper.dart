
import 'package:url_launcher/url_launcher.dart';

// ignore: unused_element
Future<void> launchURL(String url) async {
  final Uri uri = Uri.parse(url);
  if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
    throw Exception('No se pudo abrir: $url');
   }
  }