import 'package:flutter/material.dart';
import 'package:leaningflutter/funcionalidades/views/dados_cadastrais.dart';
import 'package:leaningflutter/funcionalidades/views/pagina_dois.dart';
import 'package:leaningflutter/funcionalidades/views/pagina_tres.dart';
import 'package:leaningflutter/funcionalidades/views/pagina_um.dart';

class PaginaPrincipal extends StatefulWidget {
  const PaginaPrincipal({super.key});

  @override
  State<PaginaPrincipal> createState() => _PaginaPrincipalState();
}

class _PaginaPrincipalState extends State<PaginaPrincipal> {
  int posicaoPagina = 0;
  PageController controlePagina = PageController(initialPage: 0);

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
                                  // texto: "Meus Dados",
                                  // dados: ["Nome", "CPF", "idade"],
                                )));
                  }),
              const Divider(color: Colors.deepOrangeAccent),
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
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: controlePagina,
              onPageChanged: (value) {
                print(value);
                setState(() {
                  posicaoPagina = value;
                });
              },
              scrollDirection: Axis.vertical,
              children: [
                PaginaUm(),
                PaginaDois(),
                PaginaTres(),
                Container(color: Colors.pink),
              ],
            ),
          ),
          BottomNavigationBar(
            onTap: (value) {
              print(value);
              controlePagina.jumpToPage(value);
            },
            currentIndex: posicaoPagina,
            items: const [
              BottomNavigationBarItem(
                  label: "1",
                  icon: Icon(Icons.home),
                  backgroundColor: Colors.cyan),
              BottomNavigationBarItem(
                  label: "2",
                  icon: Icon(Icons.add),
                  backgroundColor: Colors.cyan),
              BottomNavigationBarItem(
                  label: "3",
                  icon: Icon(Icons.person),
                  backgroundColor: Colors.cyan),
              BottomNavigationBarItem(
                  label: "4",
                  icon: Icon(Icons.tag_faces_sharp),
                  backgroundColor: Colors.cyan),
            ],
          )
        ],
      ),
    );
  }
}
