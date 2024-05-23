import 'package:flutter/material.dart';
import 'package:credito_cobranza/screens/screens.dart';
import 'package:credito_cobranza/widgets/custom_popup_menu_button.dart';
import 'package:credito_cobranza/widgets/card_container_home.dart';
import 'package:credito_cobranza/ui/input_decorations_search.dart';

class UserManagerScreen extends StatelessWidget {
  const UserManagerScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                  final route = MaterialPageRoute(builder: (context) => const ConfigScreen());
                  Navigator.push(context, route);
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
        padding: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
        child: Column(
          children: [
            Text('Usuarios', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Color.fromRGBO(2, 63, 120, 1)),),
            SizedBox(height: 30,),
            TextButton.icon(
              onPressed: () => _dialogFormAddUser(context),
              icon: Icon(Icons.playlist_add_rounded, color: Colors.white),
              label: Text('Agregar Usuarios', style: TextStyle(color: Colors.white)),
              style: TextButton.styleFrom(
                backgroundColor: const Color.fromRGBO(237, 128, 12, 1),
                fixedSize: const Size(180, 50),
              ),
            ),
            const SizedBox(height: 50,),
            
            CardContainerHome(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  headingTextStyle: const TextStyle(color: Colors.white),
                  dataTextStyle: const TextStyle(color: Colors.white),
                  columns: const <DataColumn>[
                    DataColumn(label: Expanded(child: Text('Usuario'))),
                    DataColumn(label: Expanded(child: Text('Nombre'),)),
                    DataColumn(label: Expanded(child: Text('Tipo de Usuario'),)),
                    DataColumn(label: Expanded(child: Text('Zona'),)),
                    DataColumn(label: Expanded(child: Text('Estado'),)),
                    DataColumn(label: Text('Acciones'))
                  ],
                  rows:  <DataRow>[
                    DataRow(cells: <DataCell>[
                      DataCell( Text('user03243')),
                      DataCell( Text('Usuario 1')),
                      DataCell( Text('Administrador')),
                      DataCell( Text('Zona 1')),
                      DataCell( Text('Puebla')),
                      DataCell(Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.edit, color: Colors.cyan),
                            onPressed: () {
                              // Lógica para editar el usuario
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.delete, color: Colors.red),
                            onPressed: () {
                              // Lógica para eliminar el usuario
                            },
                          ),
                        ],
                      ))
                    ])
                  ],
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}

Future<void> _dialogFormAddUser(BuildContext context) {
  return showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Agregar nuevo usuario'),
        content: Form(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                autofocus: true,
                autocorrect: false,
                keyboardType: TextInputType.name,
                decoration: InputDecorationsSearch.authInputDecoration(hintText: 'Usuario', prefixIcon: Icons.person),
                style: const TextStyle(color: Colors.black),
                validator: (value) {
                  // print(value);
                },
              ),
              const SizedBox(height: 10,),
              TextFormField(
                autofocus: true,
                autocorrect: false,
                keyboardType: TextInputType.name,
                decoration: InputDecorationsSearch.authInputDecoration(hintText: 'Nombre', prefixIcon: Icons.person),
                style: const TextStyle(color: Colors.black),
                validator: (value) {
                  // print(value);
                },
              ),
              const SizedBox(height: 10,),
              DropdownButtonFormField(
                items: const [
                  DropdownMenuItem(value: 'zona1', child: Text('User 1'),),
                  DropdownMenuItem(value: 'zona2', child: Text('User 2'),),
                  DropdownMenuItem(value: 'zona3', child: Text('User 3'),),
                ],
                decoration: InputDecorationsSearch.authInputDecoration(hintText: 'Tipo de Usuario', prefixIcon: Icons.group_sharp),
                onChanged: (value) {},
              ),
              const SizedBox(height: 10,),
              DropdownButtonFormField(
                items: const [
                  DropdownMenuItem(value: 'zona1', child: Text('Zona 1'),),
                  DropdownMenuItem(value: 'zona2', child: Text('Zona 2'),),
                  DropdownMenuItem(value: 'zona3', child: Text('Zona 3'),),
                ],
                decoration: InputDecorationsSearch.authInputDecoration(hintText: 'Zona', prefixIcon: Icons.person_pin_circle),
                onChanged: (value) {},
              ),
              const SizedBox(height: 10,),
              DropdownButtonFormField(
                items: const [
                  DropdownMenuItem(value: 'Estado1', child: Text('Estado 1'),),
                  DropdownMenuItem(value: 'Estado2', child: Text('Estado 2'),),
                  DropdownMenuItem(value: 'Estado3', child: Text('Estado 3'),),
                ],
                decoration: InputDecorationsSearch.authInputDecoration(hintText: 'Estado', prefixIcon: Icons.map),
                onChanged: (value) {},
              ),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton.icon(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.close, color: Colors.white,),
            label: const Text('Cerrar', style: TextStyle(color: Colors.white), ),
            style: TextButton.styleFrom(
              backgroundColor: const Color.fromRGBO(237, 128, 12, 1),
              fixedSize: const Size(180, 50),
            ),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.save_alt, color: Colors.white,),
            label: const Text('Guardar', style: TextStyle(color: Colors.white), ),
            style: TextButton.styleFrom(
              backgroundColor: const Color.fromRGBO(237, 128, 12, 1),
              fixedSize: const Size(180, 50),
            ),
          ),
        ],
      );
    }
  );
}