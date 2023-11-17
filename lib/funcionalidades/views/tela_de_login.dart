import 'package:flutter/material.dart';

class TelaDeLogin extends StatefulWidget {
  const TelaDeLogin({super.key});

  @override
  State<TelaDeLogin> createState() => _TelaDeLoginState();
}

class _TelaDeLoginState extends State<TelaDeLogin> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: const Color.fromRGBO(0, 248, 181, 0.50),
            body: Container(
              color: Colors.white,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    color: Colors.amber,
                    child: const Icon(
                      Icons.person,
                      size: 140,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    color: Colors.green,
                    height: 30,
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: const [
                        Expanded(flex: 2, child: Text("Informe seu e-mail: ")),
                        Expanded(flex: 3, child: Text("Email"))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    color: Colors.green,
                    height: 30,
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: const [
                        Expanded(
                          flex: 2,
                          child: Text("Informe sua senha:"),
                        ),
                        Expanded(flex: 3, child: Text("Senha"))
                      ],
                    ),
                  ),
                  Expanded(child: Container()),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    color: Colors.green,
                    height: 30,
                    alignment: Alignment.center,
                    child: Text("Login"),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    color: Colors.greenAccent,
                    height: 30,
                    alignment: Alignment.center,
                    child: Text("Cadastro"),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            )));
  }
}
