import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:padel_app/views/widgets/buttomCircular.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double widthSize = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.only(left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                _bienvenida(widthSize),
                SizedBox(height: 30),
                _optionsMenu(widthSize),
                SizedBox(height: 30),
                _rankingUser(widthSize),
                SizedBox(height: 30),
                _eventsUser(widthSize),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container _eventsUser(double widthSize) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.purpleAccent,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(
            radius: 40, // Tamaño del círculo
            backgroundImage: AssetImage('assets/images/pelota-padel.png'),
          ),
          Column(
            children: [
              Text(
                "Tienes una reserva",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Text(
                "Hoy, 19:00 - Cancha 2",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container _rankingUser(double widthSize) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      width: widthSize,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Igsinea"),
          Column(
            children: [
              Text(
                "Tienes una reserva",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Text(
                "Hoy, 19:00 - Cancha 2",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
          Text("Boton"),
        ],
      ),
    );
  }

  Container _optionsMenu(double widthSize) {
    return Container(
      height: 120, // 👈 Altura fija para el ListView horizontal
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          RoundIconButton(
            onPressed: () {
              print("Boton circular");
            },
            text: "Reserva",
            image: AssetImage('assets/images/calendario.png'),
          ),
          RoundIconButton(
            onPressed: () {
              print("Boton circular");
            },
            text: "Clases",
            image: AssetImage('assets/images/calendario.png'),
          ),
          RoundIconButton(
            onPressed: () {
              print("Boton circular");
            },
            text: "Eventos",
            image: AssetImage('assets/images/calendario.png'),
          ),
          RoundIconButton(
            onPressed: () {
              print("Boton circular");
            },
            text: "Eventos",
            image: AssetImage('assets/images/calendario.png'),
          ),
          RoundIconButton(
            onPressed: () {
              print("Boton circular");
            },
            text: "Eventos",
            image: AssetImage('assets/images/calendario.png'),
          ),
          RoundIconButton(
            onPressed: () {
              print("Boton circular");
            },
            text: "Eventos",
            image: AssetImage('assets/images/calendario.png'),
          ),
        ],
      ),
    );
  }

  Container _bienvenida(double widthSize) {
    return Container(
      width: widthSize,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    "¡Hola, Carlos!",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Listo para jugar hoy?",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              CircleAvatar(
                radius: 40, // Tamaño del círculo
                backgroundImage: NetworkImage(
                  'https://www.google.com/url?sa=i&url=https%3A%2F%2Fes.123rf.com%2Fphoto_91942350_dise%25C3%25B1o-gr%25C3%25A1fico-del-ejemplo-del-vector-del-icono-del-avatar-del-perfil-del-hombre-de-negocios.html&psig=AOvVaw3ZM9ujxnLKFgO4NRDgwqf-&ust=1752549638536000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCOjs4quyu44DFQAAAAAdAAAAABAf',
                ),
              ),
            ],
          ),
          Row(children: [Text("Habilidades")]),
        ],
      ),
    );
  }
}
