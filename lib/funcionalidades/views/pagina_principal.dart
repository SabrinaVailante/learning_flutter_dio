import 'package:flutter/material.dart';
import 'package:leaningflutter/funcionalidades/views/dados_cadastrais.dart';

class PaginaPrincipal extends StatefulWidget {
  const PaginaPrincipal({super.key});

  @override
  State<PaginaPrincipal> createState() => _PaginaPrincipalState();
}

class _PaginaPrincipalState extends State<PaginaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Pagina Principal")),
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                  child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      width: double.infinity,
                      child: Text("Dados Cadastrais")),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DadosCadastrais(
                                  texto: "Meus Dados",
                                  dados: ["Nome", "CPF", "idade"],
                                )));
                  }),
              Divider(color: Colors.deepOrangeAccent),
              InkWell(
                  child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      width: double.infinity,
                      child: Text("Termos de Uso")),
                  onTap: () {}),
              Divider(color: Colors.deepOrangeAccent),
              InkWell(
                  child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      width: double.infinity,
                      child: Text("configurações")),
                  onTap: () {}),
              Divider(color: Colors.deepOrangeAccent),
            ],
          ),
        ),
      ),
    );
  }
}
