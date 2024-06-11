import 'package:flutter/material.dart';
import 'package:projeto_pet/telas/TelaPet.dart';
import 'package:projeto_pet/telas/TelaTipo.dart';

class TelaPrincipal extends StatelessWidget {
  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('PET SHOP'),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.cyan,
              ),
              child:  Text(
                'Menu Principal',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.list),
              title: Text('Pet'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => TelaPet()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.list),
              title: Text('Tipo'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => TelaTipo()),
                );
              },
            )
          ],
        ),
      ),
      body: Center(
        child: Text('Bem-vindo a tela principal',
          style: TextStyle(color: Colors.blueGrey,fontSize: 20,),
        ),
      ),
    );
  }
}