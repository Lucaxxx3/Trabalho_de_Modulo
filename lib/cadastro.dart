import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'main.dart';

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
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _secondController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmController = TextEditingController();
  final _emailController = TextEditingController();
  final _birthController = TextEditingController();
  final _phoneController = TextEditingController();

  Widget fieldBirth() {
    var data = MaskTextInputFormatter(mask: '##/##/####');
    return TextFormField(
        validator: (birth) {
          if (birth == null || birth.isEmpty) {
            return 'Digite uma senha ';
          }
          return null;
        },
        controller: _birthController,
        inputFormatters: [data],
        maxLength: 8,
        decoration: const InputDecoration(
          labelText: 'Data De Nascimento',
          labelStyle: TextStyle(color: Colors.pink),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Color.fromARGB(255, 229, 99, 255), width: 3),
              borderRadius: BorderRadius.all(Radius.circular(40))),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Color.fromARGB(255, 229, 99, 255), width: 3),
              borderRadius: BorderRadius.all(Radius.circular(40))),
        ));
  }

  Widget fieldPhone() {
    var phone = MaskTextInputFormatter(mask: '(##) #####-####');
    return TextFormField(
      validator: (phone) {
        if (phone == null || phone.isEmpty) {
          return 'Digite uma senha ';
        }
        return null;
      },
      controller: _phoneController,
      inputFormatters: [phone],
      maxLength: 11,
      decoration: const InputDecoration(
          labelText: 'Numero de celular',
          labelStyle: TextStyle(color: Colors.pink),
          hintText: '(99) 99999-9999',
          hintStyle: TextStyle(color: Colors.pink),
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

  Widget fieldNome() {
    return TextFormField(
      validator: (name) {
        if (name == null || name.isEmpty) {
          return 'Digite uma senha ';
        }
        return null;
      },
      controller: _nameController,
      decoration: const InputDecoration(
          labelText: 'Nome',
          labelStyle: TextStyle(color: Colors.pink),
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

  Widget fieldSobrenome() {
    return TextFormField(
      validator: (second) {
        if (second == null || second.isEmpty) {
          return 'Digite uma senha ';
        }
        return null;
      },
      controller: _secondController,
      decoration: const InputDecoration(
          labelText: 'Sobrenome',
          labelStyle: TextStyle(color: Colors.pink),
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

  Widget fieldEmail() {
    return TextFormField(
      validator: (email) {
        if (email == null || email.isEmpty) {
          return 'Digite uma senha ';
        }
        return null;
      },
      controller: _emailController,
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
          labelText: 'Email',
          labelStyle: TextStyle(color: Colors.pink),
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

  Widget fieldSenha() {
    return TextFormField(
      validator: (senha) {
        if (senha == null || senha.isEmpty) {
          return 'Digite uma senha ';
        }
        return null;
      },
      controller: _passwordController,
      obscureText: true,
      decoration: const InputDecoration(
          labelText: 'Senha',
          labelStyle: TextStyle(color: Colors.pink),
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

  Widget fieldConfirmar() {
    return TextFormField(
      validator: (confirm) {
        if (confirm == null || confirm.isEmpty) {
          return 'Digite uma senha ';
        }
        return null;
      },
      controller: _confirmController,
      obscureText: true,
      decoration: const InputDecoration(
          labelText: 'Confirme sua Senha',
          labelStyle: TextStyle(color: Colors.pink),
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
            title: const Text('Café Miau',
                style: TextStyle(fontSize: 40, fontStyle: FontStyle.italic)),
            centerTitle: true,
            elevation: 10),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              const UserAccountsDrawerHeader(
                  accountName: Text('Lucas Silva'),
                  accountEmail: Text('Lucas.Silva@gmail.com')),
              ListTile(
                leading: const Icon(Icons.login, size: 15),
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
                                const SizedBox(height: 5),
                                fieldPhone(),
                                const SizedBox(height: 10),
                                ElevatedButton(
                                    onPressed: () {
                                      if (_formKey.currentState!.validate()) {}
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const MyApp()));
                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color.fromARGB(
                                            255, 229, 99, 255),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(40)),
                                        textStyle:
                                            const TextStyle(fontSize: 15)),
                                    child: const Text('Criar Conta'))
                              ],
                            )))))));
  }
}
