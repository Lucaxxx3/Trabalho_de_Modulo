import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'main.dart';

void main() => runApp((const MyApp()));

class Pagar extends StatelessWidget {
  const Pagar({super.key});
  @override
  build(context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: const Login());
  }
}

class Pagamento extends StatefulWidget {
  const Pagamento({super.key});
  @override
  State createState() => Metodo();
}

class Metodo extends State {

  Widget fieldNum() {
    var numero = MaskTextInputFormatter(mask: '#### #### #### ####') ;
    return TextFormField(
      inputFormatters: [numero],
      decoration: const InputDecoration(
          labelText: 'Número do Cartão',
          labelStyle: TextStyle(color: Colors.pink),
          hintText: '0000 0000 0000 0000',
          hintStyle: TextStyle(color: Colors.pinkAccent),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Color.fromARGB(255, 229, 99, 255), width: 3),
              borderRadius: BorderRadius.all(Radius.circular(40))),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Color.fromARGB(255, 229, 99, 255), width: 3),
              borderRadius: BorderRadius.all(Radius.circular(40)))),
    );
  }
  
  Widget fieldCVV() {
    var codigo = MaskTextInputFormatter(mask: '###') ;
    return TextFormField(
      inputFormatters: [codigo],
      decoration: const InputDecoration(
          labelText: 'CVV',
          labelStyle: TextStyle(color: Colors.pink),
          hintText: 'insira os 3 números atrás do cartão',
          hintStyle: TextStyle(color: Colors.pinkAccent),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Color.fromARGB(255, 229, 99, 255), width: 3),
              borderRadius: BorderRadius.all(Radius.circular(40))),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Color.fromARGB(255, 229, 99, 255), width: 3),
              borderRadius: BorderRadius.all(Radius.circular(40)))),
    );
  }

  Widget fieldTitular() {
    return TextFormField(
      decoration: const InputDecoration(
          labelText: 'Nome do titular do cartão',
          labelStyle: TextStyle(color: Colors.pink),
          hintText: 'Insira o nome como está no cartão',
          hintStyle: TextStyle(color: Colors.pinkAccent),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Color.fromARGB(255, 229, 99, 255), width: 3),
              borderRadius: BorderRadius.all(Radius.circular(40))),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Color.fromARGB(255, 229, 99, 255), width: 3),
              borderRadius: BorderRadius.all(Radius.circular(40)))),
    );
  }

  Widget fieldValidade() {
    var validade = MaskTextInputFormatter(mask: '##/##') ;
    return TextFormField(
      inputFormatters: [validade],
      decoration: const InputDecoration(
          labelText: 'Data de Validade do cartão',
          labelStyle: TextStyle(color: Colors.pink),
          hintText: 'Mês/Ano',
          hintStyle: TextStyle(color: Colors.pinkAccent),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Color.fromARGB(255, 229, 99, 255), width: 3),
              borderRadius: BorderRadius.all(Radius.circular(40))),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Color.fromARGB(255, 229, 99, 255), width: 3),
              borderRadius: BorderRadius.all(Radius.circular(40)))),
    );
  }

  Widget fieldCPF() {
    var cpf = MaskTextInputFormatter(mask: '###.###.###-##') ;
    return TextFormField(
      inputFormatters: [cpf],
      decoration: const InputDecoration(
          labelText: 'CPF do titular',
          labelStyle: TextStyle(color: Colors.pink),
          hintText: '000.000.000-00',
          hintStyle: TextStyle(color: Colors.pinkAccent),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Color.fromARGB(255, 229, 99, 255), width: 3),
              borderRadius: BorderRadius.all(Radius.circular(40))),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Color.fromARGB(255, 229, 99, 255), width: 3),
              borderRadius: BorderRadius.all(Radius.circular(40)))),
    );
  }

  @override
  build(context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 235, 148),
        appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 229, 99, 255),
            title: const Text(
              'Café Miau',
              style: TextStyle(fontSize: 40, fontStyle: FontStyle.italic),
            ),
            centerTitle: true,
            elevation: 10),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              const UserAccountsDrawerHeader(
                  accountName: Text('Lucas Silva'),
                  accountEmail: Text('Lucas.Silva@gmail.com')),
              ListTile(
                leading: const Icon(Icons.home, size: 15),
                title: const Text('Página Inicial'),
                onTap: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
        body: Center(
            child: SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                          children:[
                            const SizedBox(height: 10),
                            fieldNum(),
                            const SizedBox(height: 10),
                            fieldCVV(),
                            const SizedBox(height: 10),
                            fieldValidade(),
                            const SizedBox(height: 10),
                            fieldTitular(),
                            const SizedBox(height: 10),
                            fieldCPF(),
                          ]
                  )))))
    ));
  }
}
