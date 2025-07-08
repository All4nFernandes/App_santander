import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  bool cardAberto = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height:
                  cardAberto
                      ? MediaQuery.of(context).size.height * 0.50
                      : MediaQuery.of(context).size.height * 0.36,
              child: Stack(
                children: [
                  Image.asset("fundo_dashboard.png", fit: BoxFit.cover),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 8,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("teste3.png", width: 150),
                        Row(
                          children: [
                            Icon(Icons.search_outlined, color: Colors.white),
                            SizedBox(width: 8),
                            Icon(Icons.message_outlined, color: Colors.white),
                            SizedBox(width: 8),
                            Icon(
                              Icons.notifications_outlined,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 145,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Olá, Allan Fernandes",
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                          Text(
                            "Ag 4333 Cc 014577-8",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.26,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Card(
                        elevation: 10,
                        color: Colors.white,
                        child: Container(
                          padding: EdgeInsets.all(12),
                          width: MediaQuery.of(context).size.width * 0.93,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.monetization_on_outlined,
                                        color: Colors.red,
                                        size: 30,
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        "Saldo disponível",
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ],
                                  ),
                                  IconButton(
                                    icon: Icon(
                                      cardAberto
                                          ? Icons.keyboard_arrow_up
                                          : Icons.keyboard_arrow_down,
                                      size: 30,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        cardAberto = !cardAberto;
                                      });
                                    },
                                  ),
                                ],
                              ),
                              if (cardAberto)
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "R\$ 1.000.000,00",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      "Saldo + Limite: 143,00",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      "Entenda seu limite",
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 16,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                    Divider(),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Ver extrato",
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.red,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
