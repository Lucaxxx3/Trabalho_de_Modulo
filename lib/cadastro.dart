import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'main.dart';
import 'Home.dart';

void main() => runApp((const MyApp()));

class Cadastro extends StatelessWidget {
  const Cadastro({super.key});
  @override
  build(context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: const Login());
  }
}

class Account extends StatefulWidget {
  const Account({super.key});
  @override
  State createState() => AccountState();
}

class AccountState extends State {


  Widget fieldBirth() {
    var data = MaskTextInputFormatter(mask: '##/##/####');
    return TextFormField(
        inputFormatters: [data],
        decoration: const InputDecoration(
          labelText: 'Data De Nascimento',
          hintText: '20/02/2000',
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(40))),
        ));
  }

  Widget fieldPhone() {
    var Phone = MaskTextInputFormatter(mask: '(##) #####-####');
    return TextFormField(
      inputFormatters: [Phone],
      decoration: const InputDecoration(
          labelText: 'Numero de celular',
          hintText: '(99) 99999-9999',
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(40)))),
    );
  }

  Widget fieldNome() {
    return TextFormField(
      decoration: const InputDecoration(
          labelText: 'Nome',
          hintText: 'Joao',
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(40)))),
    );
  }

  Widget fieldSobrenome() {
    return TextFormField(
      decoration: const InputDecoration(
          labelText: 'Sobrenome',
          hintText: 'da Silva',
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(40)))),
    );
  }

  Widget fieldEmail() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
          labelText: 'Email',
          hintText: 'Digite seu email',
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(40)))),
    );
  }

  Widget fieldSenha() {
    return TextFormField(
      obscureText: true,
      decoration: const InputDecoration(
          labelText: 'Senha',
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(40)))),
    );
  }

  Widget fieldConfirmar() {
    return TextFormField(
      obscureText: true,
      decoration: const InputDecoration(
          labelText: 'Confirme sua Senha',
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(40)))),
    );
  }

  @override
  build(context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 229, 99, 255),
            title: const Text(
              'Café Miau',
              style: TextStyle(fontSize: 40, fontStyle: FontStyle.italic),
            ),
            centerTitle: true,
            elevation: 50),
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
                          children: [
                            const SizedBox(height: 10),
                            fieldNome(),
                            const SizedBox(height: 10),
                            fieldSobrenome(),
                            const SizedBox(height: 10),
                            fieldSenha(),
                            const SizedBox(height: 10),
                            fieldConfirmar(),
                            const SizedBox(height: 10),
                            fieldEmail(),
                            const SizedBox(height: 10),
                            fieldBirth(),
                            const SizedBox(height: 10),
                            fieldPhone(),
                            const SizedBox(height: 10),
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const MyApp()));
                                },
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(40)),
                                    textStyle: const TextStyle(fontSize: 15)),
                                child: const Text('Criar Conta'))
                          ],
                        )))))));
  }
}
