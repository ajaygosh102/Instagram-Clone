import 'package:dio/dio.dart';
import 'package:instagram_clone/app/server_addresses.dart';

class HomeDataService {
  Dio dio = new Dio();

  Future getHomeData() async {
    try {
      var response = await dio.get(ServerAddresses.homeDataList);
      print(response);
      return response;
    } catch (e) {
      return e.message;
    }
  }
}
