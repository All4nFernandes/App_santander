import 'package:flutter/material.dart';

class Pix1 extends StatefulWidget {
  const Pix1({super.key});

  @override
  State<Pix1> createState() => _Pix1State();
}

class _Pix1State extends State<Pix1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pix",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 256, 9, 0),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 12.0, right: 12.0, top: 14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Para quem você vai transferir?",
              style: TextStyle(fontSize: 20),
            ),
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(5)),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Nome, Chave ou Pix copia e cola"),
              ),
            ),
            Text("Celular, CPF/CNPJ, e-mail, chave aleatoria...")
            SizedBox(width: 16,)
          ],
        ),
      ),
    );
  }
}
