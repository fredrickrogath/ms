// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:shared_preferences/shared_preferences.dart';

// class Network {
//   final String _url = 'http://192.168.43.163:1234/api/';
//   //if you are using android studio emulator, change localhost to 10.0.2.2
//   var token;

//   _getToken() async {
//     SharedPreferences localStorage = await SharedPreferences.getInstance();
//     token = localStorage.getString('access_token');
//   }

//   // saveBudgetId(id) async {
//   //   SharedPreferences localStorage = await SharedPreferences.getInstance();
//   //   localStorage.setString('budgetId', id);
//   // }

//   // getBudgetId() async {
//   //   SharedPreferences localStorage = await SharedPreferences.getInstance();
//   //   var id = await localStorage.getString('budgetId');
//   //   return id;
//   // }

//   authData(data, apiUrl) async {
//     var fullUrl = _url + apiUrl;
//     return await http.post(Uri.parse(fullUrl),
//         body: jsonEncode(data), headers: _setHeaders());
//   }

//   getData(apiUrl) async {
//     var fullUrl = _url + apiUrl;
//     await _getToken();
//     return await http.get(Uri.parse(fullUrl), headers: _setHeaders());
//   }

//   postData(apiUrl) async {
//     var fullUrl = _url + apiUrl;
//     await _getToken();
//     return await http.post(Uri.parse(fullUrl), headers: _setHeaders());
//   }

//   _setHeaders() => {
//         'Content-type': 'application/json',
//         'Accept': 'application/json',
//         'Authorization': 'Bearer $token'
//       };
// }
