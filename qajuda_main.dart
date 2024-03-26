import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Definindo um degradê linear personalizado
  static const LinearGradient myGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xFF1a02e4), Color(0xFF0057cb)],
    stops: [0.0, 0.7],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // Usando um Container para aplicar o degradê linear como fundo
        body: Container(
          decoration: BoxDecoration(
            gradient: myGradient,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 20, // Espaço entre a parte superior da tela e a imagem
                ),
                SizedBox(
                  height: 150,
                  child: Image.network('https://raw.githubusercontent.com/felipexrn/DDM/main/logoqajuda.png'),
                ),
                SizedBox(
                  height: 50, // Espaço entre a imagem e a caixa de busca
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Digite sua busca...',
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Colors.white, // Definindo uma cor de fundo branca para o campo de texto
                      prefixIcon: Icon(Icons.search), // Adicionando o ícone de lupa como prefixo
                    ),
                  ),
                ),
                SizedBox(
                  height: 30, // Espaço entre a caixa de busca e o grid
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20), // Espaço ao redor do GridView
                    child: GridView.count(
                      crossAxisCount: 2,
                      children: List.generate(6, (index) {
                        // 
                        return Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.image),
                              SizedBox(height: 10),
                              Text('Item $index'),
                            ],
                          ),
                        );
                      }),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
