import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final Map<String, dynamic> item; // Garantindo que 'item' seja um Map

  const DetailsPage({Key? key, required this.item}) : super(key: key); // Construtor espera 'item' como parâmetro

  @override
  Widget build(BuildContext context) {
    // Acessando os valores de 'item'
    final titulo = item['titulo'] as String;
    final descricao = item['descricao'] as String;

    return Scaffold(
      appBar: AppBar(
        title: Text(titulo),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          descricao,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
