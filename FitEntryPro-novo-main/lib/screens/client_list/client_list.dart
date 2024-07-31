import 'package:flutter/material.dart';
import 'package:parking/screens/client_list/components/card_list.dart';
import 'package:parking/screens/shared/custom_appbar.dart';
import 'package:parking/model/entradas.dart';

class ClientList extends StatefulWidget {
  const ClientList({super.key});

  @override
  State<ClientList> createState() => _ClientListState();
}

class _ClientListState extends State<ClientList> {
  @override
  Widget build(BuildContext context) {
    var entradas = Entradas(
      idade: 25, 
      name: 'Carlos', 
      entryTime: TimeOfDay.now(),
    );

    return Scaffold(
      appBar: customAppBar('Lista de Entradas', context),
      floatingActionButton: FloatingActionButton(onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 7,
                itemBuilder: (context, index) => CardList(
                  entradas: entradas,
                ),
              ),
            ),
          ]
        )
      )
    );
  }
}