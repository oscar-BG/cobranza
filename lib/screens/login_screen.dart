import 'package:flutter/material.dart';
import 'package:credito_cobranza/ui/input_decorations.dart';
import 'package:credito_cobranza/widgets/card_container.dart';

class LoginScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const SizedBox(height: 250),
          CardContainer(
            child: Column(
              children: [
                Text('Inicio de Sesión', style: Theme.of(context).textTheme.headlineMedium,),
                Material(
                  child: _LoginForm(),
                )
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}

class _LoginForm extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        child: Column(
          children: [

            TextFormField(
              autocorrect: false,
              decoration: InputDecorations.authInputDecoration(hintText: 'ejemplo@host.com', labelText: 'Correo electrónico', prefixIcon: Icons.alternate_email),
              keyboardType: TextInputType.emailAddress,
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
              color: Colors.deepPurple,
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