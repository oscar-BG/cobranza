import 'package:flutter/material.dart';
import 'package:credito_cobranza/screens/screens.dart';
import 'package:credito_cobranza/widgets/custom_popup_menu_button.dart';
import 'package:credito_cobranza/widgets/card_container_home.dart';

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
              onPressed: () {},
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