import 'package:flutter/material.dart';

AppBar customAppBar(String title, BuildContext context) {
  return AppBar(
    title: Text(title),
    actions: [
      IconButton(
        onPressed: () {
          Navigator.pushNamed(context, 'client_list');
        },
        icon: const Icon(Icons.account_circle),
        tooltip: 'Entradas',
      ),
      IconButton(
        onPressed: () {
          Navigator.pushNamed(context, 'planos');
        },
        icon: const Icon(Icons.attach_money),
        tooltip: 'Planos',
      ),
      PopupMenuButton(
        tooltip: 'Menu do App',
        itemBuilder: (context) => [
          const PopupMenuItem(
            child: Text('Meu perfil'),
          ),
          const PopupMenuItem(
            child: Text('Configurações'),
          ),
        ],
      ),
    ],
  );
}
