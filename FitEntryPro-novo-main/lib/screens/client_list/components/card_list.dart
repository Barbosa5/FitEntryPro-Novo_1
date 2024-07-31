import 'package:flutter/material.dart';
import 'package:parking/model/entradas.dart';

class CardList extends StatelessWidget {
  final Entradas entradas;

  const CardList({
      super.key,
      required this.entradas,
    });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Card(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.account_circle,
                size: 34,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Carlos'),
                  Text('Entrada - 18:30')
                ],
              ),
              Icon(
                Icons.delete,
                size: 34,
              )
            ],
          ),
        ),
      )
    );
  }
}