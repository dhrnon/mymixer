import 'dart:convert';

import 'package:dio/dio.dart';
import 'wyre_quote.dart';

class WyreApi {
  WyreApi({required this.dio});

  final Dio dio;

  Future<Map<String, double>> getRate() async {
    final response = await dio.get<String>('/v3/rates');
    final jsonMap = jsonDecode(response.data!) as Map;
    final data = <String, double>{};
    jsonMap.forEach((key, value) {
      data[key.toString()] = double.tryParse(value.toString()) ?? -1;
    });
    return data;
  }

  Future<String?> createOrderReservation(Map<String, dynamic> data) async {
    final response = await dio.post<String>('/v3/orders/reserve', data: data);
    final jsonMap = jsonDecode(response.data!) as Map;
    return jsonMap['url'].toString();
  }

  Future<WyreQuote> getOrderReservationQuote(Map<String, dynamic> data) async {
    final response = await dio
        .post<Map<String, dynamic>>('/v3/orders/quote/partner', data: data);
    return WyreQuote.fromJson(response.data!);
  }

  Future<List<String>> getSupportedCountries() async {
    final response = await dio.get<String>('/v3/widget/supportedCountries');
    final json = jsonDecode(response.data!) as Iterable;
    return List<String>.from(json);
  }
}
