import 'package:dio/dio.dart';
import 'package:hidoc/model/hidoc_model.dart';

final dio = Dio();

void getHttp() async {
  try {
    FormData formData = FormData.fromMap({
      "sId": 500,
      "userId": 423914,
    });

    final response = await dio.post(
        'http://devapi.hidoc.co:8080/HidocWebApp/api/getArticlesByUid',
        data: formData);

    print(response);

    if (response.statusCode == 200) {
      // var data = response.data as List;

      List<dynamic> responseData = response.data as List<dynamic>;

      var data = responseData.map((json) => Hidoc.fromJson(json)).toList();
    } else {
      print(response.statusCode);
    }
  } catch (e) {
    print(e);
  }
}
