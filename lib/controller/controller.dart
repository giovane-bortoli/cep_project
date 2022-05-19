import 'package:mobx/mobx.dart';

import 'package:cep_project/model/address_model.dart';
import 'package:cep_project/service/search_cep_client.dart';

part 'controller.g.dart';

class Controller = _ControllerBase with _$Controller;

abstract class _ControllerBase with Store {
  final SearchCepClient searchCepService = SearchCepClient();

  @observable
  String searchText = '';

  @observable
  AddressModel? addressResult;

  @observable
  bool isLoading = false;

  @computed
  bool get isFound => addressResult != null;

  @action
  void setSearchText(String value) {
    searchText = value;
  }

  @action
  void setLoading(bool value) {
    isLoading = value;
  }

  @action
  Future<AddressModel?> searchCepController(String cep) async {
    try {
      setLoading(true);
      addressResult = await searchCepService.searchCep(cep);
      setLoading(false);
      return addressResult;
    } catch (_) {
      addressResult = null;
      setLoading(false);
      // throw 'erro';
    }
  }
}
