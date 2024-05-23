import 'package:flutter/material.dart';
import 'package:credito_cobranza/widgets/custom_popup_menu_button.dart';
import 'package:credito_cobranza/widgets/card_container_home.dart';

class ConfigScreen extends StatelessWidget {
  const ConfigScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Axis direction = MediaQuery.of(context).size.width > 650 ? Axis.horizontal : Axis.vertical;
    
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/images/infra.png', width: 100, height: 50, fit: BoxFit.contain,),
        backgroundColor: Color.fromRGBO(237, 128, 12, 1),
        actions: [
          IconButton(
            iconSize: 30,
            icon: const Icon(
              Icons.notifications_active,
              color: Color.fromRGBO(2, 63, 120, 1),
            ),
            onPressed: () {},
          ),
          const SizedBox(width: 10,),
          
          CustomPopupMenuButton(
            onSelected: (String value, BuildContext parentContext) {
              print(value); // Imprimir el valor seleccionado
              // Manejar las opciones seleccionadas
              switch (value) {
                case 'configuracion':
                  break;
                case 'cerrar_sesion':
                  Navigator.pushReplacementNamed(parentContext, 'login');
                  break;
              }
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: CardContainerHome(
          child: Flex(
            direction: direction,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _MenuUser(),
              _MenuCatalogue(),
              _MenuAuditTrail()
            ],
          ),
        ),
      ),

    );
  }
}


class _MenuUser extends StatelessWidget {
  const _MenuUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(237, 128, 12, 1),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 2,
          color: Color.fromRGBO(237, 128, 12, 1),
        )
      ),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: TextButton(
          onPressed: () {
            // Aquí puedes agregar la lógica para redirigir a otra pestaña
          },
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Usuarios', style: TextStyle(color: Colors.white, fontSize: 20)),
              Icon(Icons.person, color: Colors.white, size: 50,),
            ],
          ),
        ),
      ),
    );
  }
}

class _MenuCatalogue extends StatelessWidget {
  const _MenuCatalogue({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(237, 128, 12, 1),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 2,
          color: Color.fromRGBO(237, 128, 12, 1),
        )
      ),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: TextButton(
          onPressed: () {
            // Aquí puedes agregar la lógica para redirigir a otra pestaña
          },
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Catálogos', style: TextStyle(color: Colors.white, fontSize: 20)),
              Icon(Icons.menu_book_outlined, color: Colors.white, size: 50,),
            ],
          ),
        ),
      ),
    );
  }
}

class _MenuAuditTrail extends StatelessWidget {
  const _MenuAuditTrail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(237, 128, 12, 1),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 2,
          color: Color.fromRGBO(237, 128, 12, 1),
        )
      ),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: TextButton(
          onPressed: () {
            // Aquí puedes agregar la lógica para redirigir a otra pestaña
          },
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Audit Trail', style: TextStyle(color: Colors.white, fontSize: 20)),
              Icon(Icons.edit_document, color: Colors.white, size: 50,),
            ],
          ),
        ),
      ),
    );
  }
}
