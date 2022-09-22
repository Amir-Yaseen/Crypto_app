import 'package:crypto_app/model/coin_gecko_model.dart';
import 'package:dio/dio.dart';

class CoinGekoService {
  // CoinGekoService() {
  //   getcoinsdata();
  // }
  static String url =
      "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=true&price_change_percentage=7d";
  static Future<List<CoinGeckoModel>> getcoinsdata() async {
    try {
      Dio _dio = Dio();
      Response response = await _dio.get(url);
      List<CoinGeckoModel> datalist = List.empty(growable: true);
      for (int i = 0; i < response.data.length; i++) {
        datalist.add(CoinGeckoModel.fromJson(response.data[i]));
      }
      return datalist;
    } on DioError catch (e) {
      print(e);
      throw e;
    }
  }
}
