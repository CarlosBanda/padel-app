import 'package:flutter/material.dart';

class ComunityPage extends StatelessWidget {
  const ComunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Comunidad")),
        body: Center(child: Text("Pagina de comunidad")),
      ),
    );
  }
}
