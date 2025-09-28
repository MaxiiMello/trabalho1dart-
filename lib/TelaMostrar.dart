import 'package:flutter/material.dart';

class Telamostrar extends StatelessWidget {
  final String nome;
  final String telefone;
  final String gmail;
  final String senha;
  
  const Telamostrar({
    super.key,
    required this.nome,
    required this.telefone,
    required this.gmail,
    required this.senha,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 34, 32, 32),
      appBar: AppBar(
        title: const Text(
          "Dados do Aluno",
          style: TextStyle(color: Colors.blue),
          ),
          centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      body: Center(
        child: Card(
          color: Colors.grey[800],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          margin: const EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min, // hace que el card se ajuste al contenido
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Nome: $nome", style: const TextStyle(color: Colors.white, fontSize: 16)),
                const SizedBox(height: 10),
                Text("Telefone: $telefone", style: const TextStyle(color: Colors.white, fontSize: 16)),
                const SizedBox(height: 10),
                Text("Email: $gmail", style: const TextStyle(color: Colors.white, fontSize: 16)),
                const SizedBox(height: 10),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text("Voltar"),
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
