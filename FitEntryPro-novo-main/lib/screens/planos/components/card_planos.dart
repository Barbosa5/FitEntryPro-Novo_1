import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:parking/model/entradas.dart';

class CardPlanos extends StatelessWidget {
  final Entradas entradas;

  const CardPlanos({
    super.key,
    required this.entradas,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Icon(
                Icons.account_circle,
                size: 90,
              ),
              Container(
                width: 190,
                height: 110,
                padding: const EdgeInsets.symmetric(
                    vertical: 2.0), // Espaço interno do container
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white, // Cor da borda
                    width: 2.0, // Largura da borda
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15.0), // Bordas arredondadas
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Nome:',
                                style: TextStyle(
                                  fontSize: 8,
                                ),
                              ),
                              Text(
                                'Carlos',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Idade:',
                                style: TextStyle(
                                  fontSize: 8,
                                ),
                              ),
                              Text(
                                '27',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 25),
                          Row(
                            children: [
                              Text(
                                'Tipo de plano:',
                                style: TextStyle(
                                  fontSize: 8,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Mensal - R\$100,00',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(height: 5),
                          Icon(
                            Icons.mode_edit,
                            size: 24,
                          ),
                          SizedBox(height: 25),
                          Icon(
                            Icons.delete,
                            size: 24,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
