import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '../home.dart';
import '../cadastro.dart';

void main() => runApp((const MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  build(context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: const Login());
  }
}

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State createState() => LoginState();
}

class LoginState extends State {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();

  @override
  build(context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 214, 240, 153),
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
                  key: _formKey,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextFormField(
                            validator: (email) {
                              if (email == null || email.isEmpty) {
                                return 'Digite um email válido';
                              }
                              return null;
                            },
                            controller: _emailController,
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                                labelText: 'Email',
                                labelStyle: TextStyle(color: Colors.black),
                                hintText: 'Digite seu email',
                                hintStyle: TextStyle(color: Colors.black),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(255, 229, 99, 255),
                                        width: 3),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(40))),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(255, 229, 99, 255),
                                        width: 3),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(40))))),
                        const SizedBox(height: 10),
                        TextFormField(
                          validator: (senha) {
                            if (senha == null || senha.isEmpty) {
                              return 'Digite uma senha ';
                            }
                            return null;
                          },
                          controller: _senhaController,
                          obscureText: true,
                          decoration: const InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 229, 99, 255),
                                    width: 3),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(40))),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 229, 99, 255),
                                    width: 3),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(40))),
                            labelText: 'Senha',
                            labelStyle: TextStyle(color: Colors.black),
                            hintText: 'Digite Sua Senha',
                            hintStyle: TextStyle(color: Colors.black),
                          ),
                        ),
                        const SizedBox(height: 15),
                        ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {}
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 229, 99, 255),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40)),
                                textStyle: const TextStyle(fontSize: 15)),
                            child: const Text('Conectar')),
                        const SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Account()));
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 229, 99, 255),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40)),
                                textStyle: const TextStyle(fontSize: 15)),
                            child: const Text('Cadastrar'))
                      ]),
                )),
          ),
        )));
  }
}
