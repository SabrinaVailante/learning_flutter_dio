import 'package:flutter/material.dart';

class TelaDeLoginDio extends StatefulWidget {
  const TelaDeLoginDio({super.key});

  @override
  State<TelaDeLoginDio> createState() => _TelaDeLoginDioState();
}

class _TelaDeLoginDioState extends State<TelaDeLoginDio> {

  TextEditingController emailController = TextEditingController(text: "bia");
  TextEditingController senhaController = TextEditingController(text: "ette");

  // String email = "";
  // String senha = "";
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(0, 0, 0, 0),
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints:
                BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 100),
                Row(
                  children: [
                    Expanded(child: Container()),
                    Expanded(
                      flex: 5,
                      child: Image.network(
                          "https://hermes.digitalinnovation.one/assets/diome/logo.png"),
                    ),
                    Expanded(child: Container()),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  "Ja tem cadastro?",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Faça seu login e make the change_",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                const SizedBox(height: 50),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  height: 30,
                  alignment: Alignment.centerLeft,
                  child: TextField(
                    // onChanged: (value) {
                    //   email = value;
                    // },
                    controller: emailController,
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(top: 0),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple),
                      ),
                      prefixIcon: Icon(Icons.person, color: Colors.purple),
                      hintText: "E-mail",
                      hintStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  height: 30,
                  alignment: Alignment.centerLeft,
                  child: TextField(
                    obscureText: isObscureText,
                    // onChanged: (value) {
                    //   senhaController = value;
                    // },
                    controller: senhaController,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(top: 0),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple),
                      ),
                      prefixIcon: Icon(Icons.lock, color: Colors.purple),
                      hintText: "Senha",
                      hintStyle: TextStyle(color: Colors.white),
                      suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              isObscureText = !isObscureText;
                            });

                          },
                          child: Icon(
                              isObscureText
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Colors.white)),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  height: 50,
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: double.infinity,
                    height: double.infinity,
                    child: TextButton(
                      onPressed: () {
                        print(emailController.text);
                        print(senhaController.text);
                      },
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all(
                          const Color.fromRGBO(141, 79, 151, 1),
                        ),
                      ),
                      child: const Text(
                        "ENTRAR",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
                Expanded(child: Container()),
                const Text(
                  "Esqueci minha senha",
                  style: TextStyle(
                      color: Colors.yellow, fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Criar conta",
                  style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 60)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
