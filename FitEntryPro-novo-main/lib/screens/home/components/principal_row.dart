import 'package:flutter/material.dart';

class PrincipalRow extends StatelessWidget {
  const PrincipalRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.person_outline,
          size: 70,
          ),
        SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '15',
              style: TextStyle(
                fontSize: 37,
              ),
            ),
            Text(
              'Entradas',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            Text(
              'Autorizadas',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
