import 'package:flutter/material.dart';

class RevisaoPix extends StatefulWidget {
  const RevisaoPix({super.key});

  @override
  State<RevisaoPix> createState() => _RevisaoPixState();
}

class _RevisaoPixState extends State<RevisaoPix> {
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 236, 9, 0),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        title: Text(
          "Revisão",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Para finalizar, confirme os dados",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Text(
                  "Para",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Guilherme Viana Vilani",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(
                  width: 5,
                ),
              ],
            ),
            Text(
              "CPF: ***.489.031-** - NU PAGAMENTOS - IP",
              style: TextStyle(
                color: Colors.grey.shade800,
              ),
            ),
            Text(
              "Chave: ***.489.031-**",
              style: TextStyle(
                color: Colors.grey.shade800,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(),
            SizedBox(
              height: 10,
            ),
            Text(
              "Valor",
              style: TextStyle(color: Colors.grey.shade800),
            ),
            Text(
              "R\$ 100.000,00",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Forma de pagamento",
              style: TextStyle(color: Colors.grey.shade800),
            ),
            Text(
              "Ag 4317 Cc 16541521561",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Data de envio",
              style: TextStyle(color: Colors.grey.shade800),
            ),
            Text(
              "Hoje - ${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              width: double.maxFinite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Facilite seus envios frequentes",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "Agora você pode programar repetições de transferências que você faz regularmente.",
                    style: TextStyle(
                      color: Colors.grey.shade800,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Divider(),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Repetir Pix",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Switch(
                        value: switchValue,
                        onChanged: (value) {
                          setState(() {
                            switchValue = value;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(5)),
              width: double.maxFinite,
              child: Text(
                "Confira os dados acima antes de concluir a transação. Após a transferência, está ação não pode ser desfeita.",
              ),
            )
          ],
        ),
      ),
    );
  }
}
