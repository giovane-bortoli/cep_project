import 'package:cep_project/model/address_model.dart';
import 'package:cep_project/service/search_cep_client.dart';
import 'package:mobx/mobx.dart';
part 'controller.g.dart';

class Controller = _ControllerBase with _$Controller;

abstract class _ControllerBase with Store {
  final SearchCepClient searchCepService = SearchCepClient();

  @observable
  bool isLoading = false;

  @action
  void setLoading(bool value) {
    isLoading = value;
  }

  @action
  Future<AddressModel> searchCepController(String cep) async {
    try {
      setLoading(true);
      final result = await searchCepService.searchCep(cep);
      setLoading(false);
      return result;
    } catch (_) {
      setLoading(false);
      throw 'erro';
    }
  }
}
