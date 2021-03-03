import 'package:dio/dio.dart';
import 'package:instagram_clone/models/global_data.dart';


class UploadDataService {
  Dio dio = new Dio();

  Future generateProfile() async {
    try {
      print(GlobalData.generateLinkModel.toMap());
      var response = await dio.post("http://34.65.224.147/GenerateLink",
          data: GlobalData.generateLinkModel.toMap());
      print(response);
        return response;
    } catch (e) {
      return e.message;
    }
  }
}
