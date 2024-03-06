import 'package:provider/provider.dart';


class UrlLauncherController extends ChangeNotifier {
  Future<void> launchUrl(String url) async {
    await launch(url);
  }
}