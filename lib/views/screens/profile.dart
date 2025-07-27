import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Perfil")),
        body: Center(child: Text("PAGINA DE PERFIL")),
      ),
    );
  }
}
