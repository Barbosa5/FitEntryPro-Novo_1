import 'package:flutter/material.dart';
import 'package:parking/utils/timeFormat.dart';

class Entradas{
  int? idade;
  String name;
  TimeOfDay entryTime;

  Entradas({
    required this.idade,
    required this.name,
    required this.entryTime,
  });

  Map<String, Object?> toMap() => {
    'idade' : idade,
    'name' :name,
    'entryTime' : fromTimeOfDay(entryTime)
  };

  factory Entradas.fromMap(Map<String, Object?> map) => Entradas(
    idade: map['idade'] as int,
    name: map['name'] as String,
    entryTime: toTimeOfDay(map['entryTime'] as String)
  );
}