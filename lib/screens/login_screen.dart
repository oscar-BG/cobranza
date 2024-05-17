import 'package:credito_cobranza/widgets/auth_background.dart';
import 'package:flutter/material.dart';
import 'package:credito_cobranza/ui/input_decorations.dart';
import 'package:credito_cobranza/widgets/card_container.dart';

class LoginScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBackground(
        child: SingleChildScrollView(
          child : Column(
            children: [
              const SizedBox(height: 250),
              CardContainer(
                child: Column(
                  children: [
                    const SizedBox(height: 10,),
                    Text('Inicio de Sesión', style: TextStyle(color: Colors.white, fontSize: 30)),
                    
                    Material(
                      color: Colors.white,
                      child: _LoginForm(),
                    )
                  ],
                ),
              ),
              
            ],
          ),
        ) 
      ),
    );
  }
}

class _LoginForm extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(2, 63, 120, 1),
      child: Form(
        child: Column(
          children: [

            
            TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecorations.authInputDecoration(hintText: 'ejemplo@host.com', labelText: 'Correo electrónico', prefixIcon: Icons.alternate_email),
              validator: (value) {
                String pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                RegExp regExp  = new RegExp(pattern);

                return regExp.hasMatch(value ?? '')
                  ? null
                  : 'Ingrese un correo válido';
              },
            ),

            const SizedBox(height: 30),

            TextFormField(
              autocorrect: false,
              obscureText: true,
              keyboardType: TextInputType.emailAddress,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecorations.authInputDecoration(hintText: 'Contraseña', labelText: 'Ingrese su contraseña', prefixIcon: Icons.lock_outline),
              validator: (value) {
                if(value != null && value.length >= 6) {
                  return null;
                } else {
                  return 'La contraseña debe de ser de 6 caracteres';
                }
              },
            ),

            const SizedBox(height: 30),

            MaterialButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              elevation: 0,
              color: Color.fromRGBO(237, 128, 12, 1),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                child:  Text('Ingresar', style: const TextStyle(color: Colors.white),)
              ),
              onPressed: () {
                
              },
            )

          ],
        ),
      ),
    );
  }
}