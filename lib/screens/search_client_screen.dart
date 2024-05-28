import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';

import 'package:credito_cobranza/ui/input_decorations_search.dart';
import 'package:credito_cobranza/widgets/card_container_home.dart';
import 'package:credito_cobranza/widgets/custom_popup_menu_button.dart';
import 'package:credito_cobranza/screens/screens.dart';
import 'package:credito_cobranza/constants/style.dart';

class SearchClientScreen extends StatefulWidget {
  const SearchClientScreen({super.key});

  @override
  State<SearchClientScreen> createState() => _SearchClientScreenState();
}

class _SearchClientScreenState extends State<SearchClientScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/images/infra.png', width: 100, height: 50, fit: BoxFit.contain,),
        backgroundColor: const Color.fromRGBO(237, 128, 12, 1),
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
      body:  ClientPage()
    );
  }
}


class ClientPage extends StatefulWidget {
  @override
  _ClientPageState createState() => _ClientPageState();
}

class _ClientPageState extends State<ClientPage> {
  
  @override
  Widget build(BuildContext context) {
    AppScale _scale = AppScale(context);
    //double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          children: [
          Container(
          padding: const EdgeInsets.all(20.0),
          child: Material(
            color: Colors.white,
            child: BootstrapContainer(
              fluid: true,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: BootstrapRow(
                    height: 60, //es obligatorio poner una altura al container
                    children: [
                      BootstrapCol(
                        sizes: 'col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12',
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                         child: Center(
                           child: const Text('Buscar clientes', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Color.fromRGBO(2, 63, 120, 1)),),
                         ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: BootstrapRow(
                    height: 60, //es obligatorio poner una altura al container
                    children: [
                      BootstrapCol(
                        sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3',
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            autofocus: true,
                            autocorrect: false,
                            keyboardType: TextInputType.name,
                            decoration: InputDecorationsSearch.authInputDecoration(hintText: 'Nombre/Razón Social', prefixIcon: Icons.person),
                            style: const TextStyle(color: Colors.black),
                            validator: (value) {
                              // print(value);
                            },
                          ),
                        ),
                      ),
                      BootstrapCol(
                        sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3',
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            autocorrect: false,
                            keyboardType: TextInputType.text,
                            decoration: InputDecorationsSearch.authInputDecoration(hintText: 'RFC', prefixIcon: Icons.person),
                            style: const TextStyle(color: Colors.black),
                            validator: (value) {
                              // print(value);
                            },
                          ),
                        ),
                      ),
                      BootstrapCol(
                        sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3',
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: DropdownButtonFormField(
                            items: const [
                              DropdownMenuItem(value: 'zona1', child: Text('Item 1'),),
                              DropdownMenuItem(value: 'zona2', child: Text('Item 2'),),
                              DropdownMenuItem(value: 'zona3', child: Text('Item 3'),),
                            ],
                            decoration: InputDecorationsSearch.authInputDecoration(hintText: 'Zona', prefixIcon: Icons.person_pin_circle),
                            onChanged: (value) {},
                          ),
                        ),
                      ),
                      BootstrapCol(
                        sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3',
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: DropdownButtonFormField(
                            items: const [
                              DropdownMenuItem(value: 'item1', child: Text('item 1'),),
                              DropdownMenuItem(value: 'item2', child: Text('item 2'),),
                              DropdownMenuItem(value: 'item3', child: Text('item 3'),),
                            ],
                            decoration: InputDecorationsSearch.authInputDecoration(hintText: 'Sucursal Cabecera', prefixIcon: Icons.factory),
                            onChanged: (value) {},
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: BootstrapRow(
                    height: 60, //es obligatorio poner una altura al container
                    children: [
                      BootstrapCol(
                        sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3',
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: DropdownButtonFormField(
                            items: const [
                              DropdownMenuItem(value: 'item1', child: Text('item 1'),),
                              DropdownMenuItem(value: 'item2', child: Text('item 2'),),
                              DropdownMenuItem(value: 'item3', child: Text('item 3'),),
                            ],
                            decoration: InputDecorationsSearch.authInputDecoration(hintText: 'Estatus', prefixIcon: Icons.article_sharp),
                            onChanged: (value) {},
                          ),
                        ),
                      ),
                      BootstrapCol(
                        sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3',
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: DropdownButtonFormField(
                            items: const [
                              DropdownMenuItem(value: 'item1', child: Text('item 1'),),
                              DropdownMenuItem(value: 'item2', child: Text('item 2'),),
                              DropdownMenuItem(value: 'item3', child: Text('item 3'),),
                            ],
                            decoration: InputDecorationsSearch.authInputDecoration(hintText: 'Tipo de Cliente', prefixIcon: Icons.group_rounded),
                            onChanged: (value) {},
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: BootstrapRow(
                    height: 60, //es obligatorio poner una altura al container
                    children: [
                      BootstrapCol(
                        sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-12',
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Center(
                            child: TextButton.icon(
                              onPressed: () {},
                              icon: const Icon(Icons.search, color: Colors.white,),
                              label: const Text('Buscar cliente', style: TextStyle(color: Colors.white), ),
                              style: TextButton.styleFrom(
                                backgroundColor: const Color.fromRGBO(237, 128, 12, 1),
                                fixedSize: const Size(180, 50),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                _TableClient()
              ],
            ),
          ),
        ),
      ],
      ),
    );
  }
}

class _TableClient extends StatelessWidget {
  const _TableClient({super.key});

  @override
  Widget build(BuildContext context) {
    return CardContainerHome(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          headingTextStyle: const TextStyle(color: Colors.white),
          dataTextStyle: const TextStyle(color: Colors.white),
          columns: const <DataColumn>[
            DataColumn(label: Expanded(child: Text('RFC'))),
            DataColumn(label: Expanded(child: Text('Nombre'))),
            DataColumn(label: Expanded(child: Text('Tipo Cliente'))),
            DataColumn(label: Expanded(child: Text('Zona 1'))),
            DataColumn(label: Expanded(child: Text('Sucursal'))),
            DataColumn(label: Expanded(child: Text('Estatus'))),
            DataColumn(label: Expanded(child: Text('Expediente'))),
          ],
          rows:  <DataRow>[
            DataRow(cells: <DataCell>[
              const DataCell( Text('SDTRRTF')),
              const DataCell( Text('PERSON 1')),
              const DataCell( Text('Tipo 1')),
              const DataCell( Text('Zona 1')),
              const DataCell( Text('Sucursal 1')),
              const DataCell( Text('Success')),
              DataCell(
                TextButton.icon(
                  onPressed: () {       
                    final route = MaterialPageRoute(builder: (context) => const ProfilePage1());
                    Navigator.push(context, route);             
                  },
                  icon: const Icon( Icons.edit_document, color: Colors.white,),
                  label: const Text('Ver', style: TextStyle(color: Colors.white),),
                  style: TextButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(237, 128, 12, 1),
                      fixedSize: const Size(100, 30),
                  ),
                )
              ),
            ])
          ],
        ),
      ),
    );
  }
}