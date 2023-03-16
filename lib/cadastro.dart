import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
        home: const Home());
  }
}

class Account extends StatefulWidget {
  const Account({super.key});
  @override
  State createState() => AccountState();
}

class AccountState extends State {
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
                onTap: (){
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
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: const InputDecoration(
                                  labelText: 'Email',
                                  hintText: 'Digite seu email',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(40)))),
                            ),
                            TextFormField(
                              decoration: const InputDecoration(
                                  labelText: 'Nome',
                                  hintText: 'Joao',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(40)))),
                            ),
                            TextFormField(
                              decoration: const InputDecoration(
                                  labelText: 'Sobrenome',
                                  hintText: 'da Silva',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(40)))),
                            ),
                            TextFormField(
                              obscureText: true,
                              decoration: const InputDecoration(
                                  labelText: 'Senha',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(40)))),
                            ),
                            TextFormField(
                              obscureText: true,
                              decoration: const InputDecoration(
                                  labelText: 'Confirme sua Senha',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(40)))),
                            ),
                          ],
                        ))))));
  }
}
