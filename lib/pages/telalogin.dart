import 'package:flutter/material.dart';

class Telalogin extends StatelessWidget{
  
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text(
        "login",
      ),
      backgroundColor: Colors.grey,
      ),
      body: Padding(
        padding:EdgeInsets.all(16.0),
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
                border: OutlineInputBorder()
              ),
            ),

            SizedBox(height: 16),


            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Senha",
                border: OutlineInputBorder()
              ),
            ),
            
            SizedBox(height: 16),

            ElevatedButton(onPressed: (){

            },
            child: Text(
              "Entrar"
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white
            ),
            )
          ],
        ) 
      )
    );
  }

}