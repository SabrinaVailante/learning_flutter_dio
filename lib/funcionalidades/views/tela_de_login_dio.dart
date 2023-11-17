import 'package:flutter/material.dart';

class TelaDeLoginDio extends StatefulWidget {
  const TelaDeLoginDio({super.key});

  @override
  State<TelaDeLoginDio> createState() => _TelaDeLoginDioState();
}

class _TelaDeLoginDioState extends State<TelaDeLoginDio> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: const Color.fromRGBO(0, 248, 181, 0.50),
            body: Container(
              color: Colors.black,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  Row(
                    children: [
                      Expanded(child: Container()),
                      Expanded(
                          flex: 5,
                          child: Image.network(
                            "https://hermes.digitalinnovation.one/assets/diome/logo.png",
                          )),
                      Expanded(child: Container()),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text("Ja tem cadastro?", style: TextStyle(color:Colors.white, fontSize: 30, fontWeight:FontWeight.w700),),
                  const SizedBox(height: 10),
                  Text("Faça seu login e make the change_", style: TextStyle(color:Colors.white, fontSize: 18, ),),
                  const SizedBox(height: 50),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    height: 30,
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: const [
                        Expanded(flex: 2, child: Text("Informe seu e-mail: ", style: TextStyle(color: Colors.white),)),
                        Expanded(flex: 3, child: Text("Email", style: TextStyle(color: Colors.white),))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    height: 30,
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: const [
                        Expanded(
                          flex: 2,
                          child: Text("Informe sua senha:",style: TextStyle(color: Colors.white),
                        ),
                        ),
                        Expanded(flex: 3, child: Text("Senha", style: TextStyle(color: Colors.white),))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    color: Colors.green,
                    height: 30,
                    alignment: Alignment.center,
                    child: Text("Login"),
                  ),
                  Expanded(child: Container()),
                  Text("Esqueci minha senha", style: TextStyle(color: Colors.yellow, fontWeight: FontWeight.w400),),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Criar conta", style: TextStyle(color: Colors.green,fontWeight: FontWeight.w400),),
                  SizedBox(
                    height: 60,
                  )
                ],
              ),
            )));
  }
}
