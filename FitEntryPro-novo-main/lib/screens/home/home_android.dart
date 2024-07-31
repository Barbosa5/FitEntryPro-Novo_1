import 'package:flutter/material.dart';
import 'package:parking/model/entradas.dart';
import 'package:parking/screens/home/components/card_entradas.dart';
import 'package:parking/screens/home/components/principal_row.dart';
import 'package:parking/screens/shared/custom_appbar.dart';

class HomeAndroid extends StatelessWidget {
  const HomeAndroid({super.key});

  @override
  Widget build(BuildContext context) {
    var entradas = Entradas(
      idade: 25, 
      name: 'Carlos', 
      entryTime: TimeOfDay.now(),
    );

    return Scaffold(
      appBar: customAppBar('FitEntryPro', context),
      floatingActionButton: FloatingActionButton(
        onPressed: () {Navigator.pushNamed(context, 'nova_entrada');
        },
        child: const Icon(
          Icons.add
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const PrincipalRow(),
            const SizedBox(height: 24),
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) => CardEntradas(
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
