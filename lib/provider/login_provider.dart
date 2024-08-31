import 'package:flutter/foundation.dart';
import 'package:http/http.dart';

class LoginProvider with ChangeNotifier {
  bool _isLoading = false;

  bool get isLoading => _isLoading;

  setLoaderValue(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  void login(String email, String password) async {
    setLoaderValue(true);
    try {
      Response response = await post(Uri.parse('https://reqres.in/api/login'),
          body: {'email': email, 'password': password});

      if (response.statusCode == 200) {
        setLoaderValue(false);
        print('successful');
      } else {
        setLoaderValue(false);
        print('failed');
      }
    } catch (e) {
      setLoaderValue(false);
      print(e.toString());
    }
  }
}
