import 'package:flutter/material.dart';

class CustomPopupMenuButton extends StatelessWidget {
  final Function(String, BuildContext) onSelected; // Función que acepta el valor y el contexto

  const CustomPopupMenuButton({
    Key? key,
    required this.onSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      color: Color.fromRGBO(2, 63, 120, 1),
      itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
        const PopupMenuItem<String>(
          value: 'configuracion',
          child: Row(
            children: [
              Icon(Icons.settings, color: Colors.white),
              SizedBox(width: 10),
              Text(
                'Configuración',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        const PopupMenuItem<String>(
          value: 'cerrar_sesion',
          child: Row(
            children: [
              Icon(Icons.logout, color: Colors.white),
              SizedBox(width: 10),
              Text(
                'Cerrar sesión',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
      onSelected: (String value) => onSelected(value, context), // Pasar el contexto del widget
      onOpened: () {},
      child: Padding(
        padding: const EdgeInsets.only(right: 10.0),
        child: CircleAvatar(
          backgroundColor: Colors.blue[500],
          child: const Text('OB'),
        ),
      ),
    );
  }
}
