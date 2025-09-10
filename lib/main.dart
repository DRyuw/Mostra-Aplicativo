import 'package:flutter/material.dart';
import 'data.dart'; // Certifique-se de que os dados estão corretamente configurados.

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Filmes e Jogos',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filmes e Jogos'),
      ),
      body: ListView.builder(
        itemCount: conteudos.length,
        itemBuilder: (context, index) {
          final item = conteudos[index];
          final titulo = item['titulo'] as String;
          final tipo = item['tipo'] as String;
          final imagem = item['imagem'] as String; // Verifique se as imagens estão no local correto
          final descricao = item['descricao'] as String;

          return Card(
            child: ListTile(
              leading: Image.asset(imagem, width: 50, height: 50, fit: BoxFit.cover),
              title: Text(titulo),
              subtitle: Text(tipo),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text(titulo),
                      content: Text(descricao),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop(); // Fecha o AlertDialog
                          },
                          child: Text('Fechar'),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }
}