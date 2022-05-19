import 'dart:developer';
import 'package:cep_project/model/address_model.dart';
import 'package:dio/dio.dart';

class SearchCepClient {
  final client = Dio();

  Future<AddressModel> searchCep(String cep) async {
    try {
      final response = await client.get('https://viacep.com.br/ws/$cep/json/');
      inspect(response.data);
      return AddressModel.fromJson(response.data);
    } catch (e) {
      throw e;
    }
  }
}
