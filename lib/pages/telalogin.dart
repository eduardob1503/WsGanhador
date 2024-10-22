import 'package:flutter/material.dart';

class TelaLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Tela Login"),
          backgroundColor: Colors.grey,
        ),
        body: Mensagem1(),
      ),
    );
  }
}

class Mensagem1 extends StatefulWidget {
  @override
  _Mensagem1State createState() => _Mensagem1State();
}

class _Mensagem1State extends State<Mensagem1> {
  @override
  void initState() {
    super.initState();
    _showBiometricDialog();
  }

  void _showBiometricDialog() {
    Future.delayed(Duration.zero, () {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Autenticação Biométrica"),
            content: Text("Por favor, autentique-se usando biometria."),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Fecha o diálogo
                  // Aqui você pode adicionar lógica após a autenticação
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Autenticação realizada com sucesso!')),
                  );
                },
                child: Text("Confirmar"),
              ),
            ],
          );
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            height: 200,
            width: 200,
            "https://png.pngtree.com/png-vector/20210604/ourmid/pngtree-gray-network-placeholder-png-image_3416659.jpg",
          ),
          SizedBox(height: 32),
          TextFormField(
            decoration: InputDecoration(
              labelText: "Email",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 16),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Senha",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              // Lógica de login aqui
            },
            child: Text("Entrar"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
