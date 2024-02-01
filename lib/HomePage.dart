import 'package:flutter/material.dart';
import 'package:price_bitcoin/BitcoinPage.dart';
import 'package:price_bitcoin/EthereumPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(5),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("imagens/logo2.png", height: 350, width: 350,),
              const Text(
                "Valores de cada moeda digital",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    //Bitcoin
                    GestureDetector(
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const BitcoinPage()));
                        },
                        child: Column(
                          children: <Widget>[
                            Image.asset("imagens/Bitcoin.png", width: 80, height: 80,),
                            const Text(
                              "Bitcoin",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )
                    ),
                    //Ethereum
                    GestureDetector(
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const EthereumPage()));
                        },
                        child: Column(
                          children: <Widget>[
                            Image.asset("imagens/Ethereum.png", width: 80, height: 80,),
                            const Text(
                              "Ethereum",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )
                    ),
                  ],
                ) ,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
