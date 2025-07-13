import 'package:flutter/material.dart';
import 'package:padel_app/views/screens/home_page.dart';
import 'package:padel_app/views/screens/register_page.dart';
import 'package:padel_app/views/widgets/InputWidget.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double widthSize = MediaQuery.of(context).size.width;
    double heightSize = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: heightSize,
        width: widthSize,
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color(0xf5f5f5),
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
              Center(child: Image.asset('assets/images/logo.jpg')),

              SizedBox(height: 10),
              Container(
                child: Text(
                  "Iniciar sesión",
                  style: GoogleFonts.montserrat(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 30),
              _FormInputs(),
              SizedBox(height: 30),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(color: Colors.grey),
                    ),
                    onPressed: () {},
                    label: const Text("Google"),
                    icon: const Icon(Icons.g_mobiledata_rounded),
                  ),
                ),
              ),

              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(color: Colors.grey),
                    ),
                    onPressed: () {},
                    label: const Text("Apple"),
                    icon: const Icon(Icons.apple_outlined),
                  ),
                ),
              ),

              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "¿Aun no tienes cuenta?",
                    style: TextStyle(fontSize: 15),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => RegisterPage()),
                        ),
                      );
                    },
                    child: const Text(
                      'Registrate',
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _FormInputs extends StatefulWidget {
  @override
  State<_FormInputs> createState() => _FormInputsState();
}

class _FormInputsState extends State<_FormInputs> {
  bool _obscureText = true;
  bool _viewPass = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 30, left: 30),
              child: CustomInputField(
                fieldKey: const ValueKey('email'),
                hintText: 'Correo electrónico',
                icon: Icons.email,
                inputType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingresa tu correo';
                  }
                  return null;
                },
                onSaved: (value) {},
              ),
            ),
            const SizedBox(height: 30),
            Container(
              margin: const EdgeInsets.only(right: 30, left: 30),
              child: CustomInputField(
                obscureText: _obscureText,
                fieldKey: const ValueKey('email'),
                hintText: 'Contraseña',
                icon: Icons.email,
                inputType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingresa una contraseña';
                  }
                  return null;
                },
                onSaved: (value) {},
              ),
            ),
            const SizedBox(height: 30),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xFF00E676)),
                ),
                onPressed: () {
                  //if (!loginForm.isValidForm()) return;
                  //Navigator.pushReplacement(
                  //context,
                  //MaterialPageRoute(builder: ((context) => HomePage())),
                  //);
                },
                child: const Text(
                  'Ingresar',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  InputDecoration inputNumber() => const InputDecoration(
    hintText: '9610000000',
    hintStyle: TextStyle(color: Colors.white),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white, width: 2),
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    labelText: 'Telefono',
    labelStyle: TextStyle(color: Colors.white),
    suffixIcon: IconButton(
      icon: Icon(Icons.phone_android_outlined, color: Colors.white),
      onPressed: null,
    ),
  );

  InputDecoration inputPass() => InputDecoration(
    hintText: '********',
    hintStyle: const TextStyle(color: Colors.white),
    enabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white, width: 2),
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    labelText: 'Contraseña',
    labelStyle: const TextStyle(color: Colors.white),
    suffixIcon: IconButton(
      icon: Icon(
        _obscureText ? Icons.visibility : Icons.visibility_off_outlined,
        color: Colors.white,
      ),
      onPressed: _toggle,
    ),
  );
}
