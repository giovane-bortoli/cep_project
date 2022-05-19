import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../controller/controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Controller controller = Controller();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Observer(builder: (context) {
        if (controller.isLoading) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: TextFormField(
                    maxLength: 8,
                    decoration: const InputDecoration(
                      labelText: 'Search',
                    ),
                    onChanged: (String value) {
                      controller.setSearchText(value);
                    },
                    initialValue: controller.searchText,
                  ),
                ),
                ElevatedButton(
                  onPressed: () async {
                    await controller.searchCepController(controller.searchText);
                  },
                  child: const Text('Search'),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    width: double.infinity,
                    child: Card(
                      elevation: 16.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: EdgeInsets.all(32),
                        child: !controller.isFound
                            ? const Text('Cep inválido!')
                            : Column(
                                children: [
                                  Text(
                                      'CEP: ${controller.addressResult?.cep ?? ''}'),
                                  Text(
                                      'Logradouro: ${controller.addressResult?.logradouro ?? ''}'),
                                  Text(
                                      'Complemento: ${controller.addressResult?.complemento ?? ''}'),
                                  Text(
                                      'Bairro: ${controller.addressResult?.bairro ?? ''}'),
                                  Text(
                                      'Localidade: ${controller.addressResult?.localidade ?? ''}'),
                                  Text(
                                      'Estado: ${controller.addressResult?.uf ?? ''}'),
                                ],
                              ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }
      }),
    );
  }
}
