import 'package:flutter/material.dart';
import 'package:trabalho1/TelaMostrar.dart';
import 'package:trabalho1/widgetDatos.dart';

class Telaregister extends StatefulWidget {
  const Telaregister({super.key});

  @override
  State<Telaregister> createState() => _registroAulnoState();
}

class _registroAulnoState extends State<Telaregister>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  var _hidetext = true;
  final _controller1 = TextEditingController();
  final _controller2 = TextEditingController();
  final _controller3 = TextEditingController();
  final _controller4 = TextEditingController();
  final _controller5 = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 34, 32, 32),
      appBar: AppBar(
        title: const Text(
          "Registro de Aluno",
          style: TextStyle(color: Colors.blue),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: Container(
        child: Column(
          children: [
            Image.asset("../lib/assets/user.png", width: 200, height: 400),
            Widgetdatos(
              controller: _controller1,
              label: "Nome:",
              hint: "Digite seu nome",
              icon: Icons.person,
            ),

            Widgetdatos(
              controller: _controller2,
              label: "Telefone:",
              hint: "Digite seu Telefone",
              icon: Icons.phone,
            ),

            Widgetdatos(
              controller: _controller3,
              label: "Gmail:",
              hint: "Digite seu Gmail",
              icon: Icons.email,
            ),

            Widgetdatos(
              controller: _controller4,
              label: "Senha:",
              hint: "Digite sua senha",
              icon: Icons.lock,
              obscureText: _hidetext,
              toggleObscure: () {
                setState(() {
                  _hidetext = !_hidetext;
                });
              },
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Telamostrar(
                          nome: _controller1.text,
                          telefone: _controller2.text,
                          gmail: _controller3.text,
                          senha: _controller4.text,
                        );
                      },
                    ),
                  );
                },
                child: const Text("Enviar"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
