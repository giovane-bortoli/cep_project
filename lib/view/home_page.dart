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
        return controller.isLoading //CONDIÇÃO
            ? const Center(child: CircularProgressIndicator()) // TRUE
            : // FALSE

            Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(16),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Search',
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        await controller.searchCepController('92310270');
                      },
                      child: const Text('Search'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        height: 150,
                        width: double.infinity,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            children: const [
                              Text('Rua: '),
                              Text('Bairro: '),
                              Text('Complemento:'),
                              Text('Cidade:'),
                              Text('Estado:'),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
      }),
    );
  }
}
