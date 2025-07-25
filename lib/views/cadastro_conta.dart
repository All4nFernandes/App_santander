import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:app_santander/controllers/request.dart';

class CadastroConta extends StatefulWidget {
  const CadastroConta({super.key});

  @override
  State<CadastroConta> createState() => _CadastroContaState();
}

class _CadastroContaState extends State<CadastroConta> {
  TextEditingController nomeController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();
  TextEditingController telefoneController = TextEditingController();
  TextEditingController cpfController = TextEditingController();

  Request request = Request();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: nomeController,
            decoration: InputDecoration(hintText: "Nome"),
          ),
          TextField(
            controller: emailController,
            decoration: InputDecoration(hintText: "Email"),
          ),
          TextField(
            controller: senhaController,
            decoration: InputDecoration(hintText: "Senha"),
          ),
          TextField(
            controller: telefoneController,
            decoration: InputDecoration(hintText: "Telefone"),
          ),
          TextField(
            controller: cpfController,
            decoration: InputDecoration(hintText: "CPF"),
          ),
          ElevatedButton(
            onPressed: () async {
              request.methodRequest("usuarios", "POST", body: {
                "nome": nomeController.text,
                "email": emailController.text,
                "senha": senhaController.text,
                "telefone": telefoneController.text,
                "cpf": cpfController.text
              });
            },
            child: Text("Cadastrar"),
          )
        ],
      ),
    );
  }
}
