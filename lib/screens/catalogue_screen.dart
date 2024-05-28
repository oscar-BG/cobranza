import 'package:flutter/material.dart';
import 'package:credito_cobranza/widgets/card_container_home.dart';
import 'package:credito_cobranza/screens/screens.dart';
import 'package:credito_cobranza/widgets/custom_popup_menu_button.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:credito_cobranza/constants/style.dart';

class CatalogueScreen extends StatelessWidget {
  const CatalogueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Axis direction = MediaQuery.of(context).size.width > 1186 ? Axis.horizontal : Axis.vertical;
    print(MediaQuery.of(context).size.width);
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
      body: CardCatalogue(),
    );
  }
}


class CardCatalogue extends StatefulWidget {
  @override
  _CardCatalogueState createState() => _CardCatalogueState();
}

class _CardCatalogueState extends State<CardCatalogue> {


 
  @override
  Widget build(BuildContext context) {
    AppScale _scale = AppScale(context);

    //double height = MediaQuery.of(context).size.height;

    //sm for small screens > 575px and < 768px
    // md for medium screens > 767px and < 992px
    // lg for large screens > 991px and < 1200px
    // xl for extra large screens > 1199px   

    return Scaffold(
      body: SingleChildScrollView(
        child: BootstrapContainer(
          fluid: true,
        children: [
          Material(
            color: Colors.white,
              child: BootstrapContainer(
                fluid: true,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: BootstrapRow(
                      height: _scale.labelDim * 0.2,
                      children: <BootstrapCol>[
                        BootstrapCol(
                          sizes: 'col-12',
                          child: Row(
                            children: [
                              Text('Catalogos', style: TextStyle(color: Color.fromRGBO(2, 63, 120, 1), fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                            ],
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
                          sizes: 'col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6',
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: _CardTypeClient()
                          ),
                        ),
                        BootstrapCol(
                          sizes: 'col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6',
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: _CardStatusProceedings(),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: BootstrapRow(
                      height: 60, //es obligatorio poner una altura al container
                      children: [
                        BootstrapCol(
                          sizes: 'col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12',
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: _CardZone()
                          ),
                        ),
                        
                        
                      ],
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
      ),
    );
  }
}



class _CardZone extends StatelessWidget {
  const _CardZone({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: 300),
      child: Container(
        decoration: _createCardShape(),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Zona y Sucursales', style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold, color: Color.fromRGBO(2, 63, 120, 1)),),
              SizedBox(height: 20,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(            
                  headingTextStyle: const TextStyle(color: Colors.black),
                  dataTextStyle: const TextStyle(color: Colors.black),
                  columns: const <DataColumn>[
                    DataColumn(label: Expanded(child: Text('Zona'))),
                    DataColumn(label: Expanded(child: Text('Sucursal'),)),
                    DataColumn(label: Expanded(child: Text('Acciones'),)),
                  ],
                  rows: <DataRow>[
                    DataRow(cells: <DataCell>[
                      DataCell(Text('Zona 1')),
                      DataCell(Text('Sucursal 1')),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _CardStatusProceedings extends StatelessWidget {
  const _CardStatusProceedings({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: 300),
      child: Container(
        decoration: _createCardShape(),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Estatus de Expediente', style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold, color: Color.fromRGBO(2, 63, 120, 1)),),
              SizedBox(height: 20,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(            
                  headingTextStyle: const TextStyle(color: Colors.black),
                  dataTextStyle: const TextStyle(color: Colors.black),
                  columns: const <DataColumn>[
                    DataColumn(label: Expanded(child: Text('Estatus'))),
                    DataColumn(label: Expanded(child: Text('Acciones'),)),
                  ],
                  rows: <DataRow>[
                    DataRow(cells: <DataCell>[
                      DataCell(Text('Cerrado')),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _CardTypeClient extends StatelessWidget {
  const _CardTypeClient({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: 300),
      child: Container(
        decoration: _createCardShape(),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Tipos Clientes', style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold, color: Color.fromRGBO(2, 63, 120, 1)),),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(            
                  headingTextStyle: const TextStyle(color: Colors.black),
                  dataTextStyle: const TextStyle(color: Colors.black),
                  columns: const <DataColumn>[
                    DataColumn(label: Expanded(child: Text('Estatus'))),
                    DataColumn(label: Expanded(child: Text('Acciones'),)),
                  ],
                  rows: <DataRow>[
                    DataRow(cells: <DataCell>[
                      DataCell(Text('Persona fisica')),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}

BoxDecoration _createCardShape() => BoxDecoration(
  color: Colors.grey[300],
  borderRadius: BorderRadius.circular(25),
  boxShadow: const [
      BoxShadow(
        color: Colors.black12,
        blurRadius: 15,
        offset: Offset(0,5),
      )
    ]
);