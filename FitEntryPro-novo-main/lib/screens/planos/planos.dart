import 'package:flutter/material.dart';
import 'package:parking/model/entradas.dart';
import 'package:parking/screens/planos/components/card_planos.dart';
import 'package:parking/screens/shared/custom_appbar.dart';

class Planos extends StatefulWidget {
  const Planos({super.key});

  @override
  State<Planos> createState() => _PlanosState();
}

class _PlanosState extends State<Planos> {
  @override
  Widget build(BuildContext context) {
    var entradas = Entradas(
      idade: 25, 
      name: 'Carlos', 
      entryTime: TimeOfDay.now(),
    );

    return Scaffold(
      appBar: customAppBar('Planos', context),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 24),
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) => CardPlanos(
                  entradas: entradas,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
