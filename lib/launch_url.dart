import 'package:url_launcher/url_launcher.dart';

Future<void> launchWiki(String urlString) async {
  final uri = Uri.parse(urlString);
  if (!await launchUrl(uri)) {
    throw Exception('Could not launch $uri');
  }
}
