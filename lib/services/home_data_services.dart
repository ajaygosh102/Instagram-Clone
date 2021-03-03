import 'package:dio/dio.dart';
import 'package:instagram_clone/app/server_addresses.dart';

class HomeDataService {
  Dio dio = new Dio();

  Future getHomeData() async {
    try {
      var response = await dio.get(ServerAddresses.homeDataList);
      return response;
    } catch (e) {
      return e.message;
    }
  }

  Future getComments() async {
    try {
      var response = await dio.get(ServerAddresses.comments);
      return response;
    } catch (e) {
      return e.message;
    }
  }
}
