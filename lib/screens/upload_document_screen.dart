import 'package:flutter/material.dart';
import 'package:credito_cobranza/screens/config_screen.dart';
import 'package:credito_cobranza/widgets/custom_popup_menu_button.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';

class UploadDocumentScreen extends StatelessWidget {
  const UploadDocumentScreen({super.key});

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
      body: _UploadDocument(),
    );
  }
}

class _UploadDocument extends StatefulWidget {
  const _UploadDocument({super.key});

  @override
  State<_UploadDocument> createState() => __UploadDocumentState();
}

class __UploadDocumentState extends State<_UploadDocument> {
  @override
  Widget build(BuildContext context) {
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
                    padding: EdgeInsets.all(8.0),
                    child: BootstrapRow(
                      height: 60,
                      children: [
                        BootstrapCol(
                          sizes: 'col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6',
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Container(
                              padding: EdgeInsets.all(20),
                              decoration:  BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 2,color: Colors.white),
                                color: Colors.grey[300]
                              ),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: DataTable(
                                  columns: const <DataColumn>[
                                    DataColumn(label: Expanded(child: Text('Documentos'))),
                                    DataColumn(label: Expanded(child: Text('Subir')))
                                  ],
                                  rows: const <DataRow>[
                                    DataRow(cells: <DataCell> [
                                      DataCell(Text('Solicitud original de crédito firmada cliente')),
                                      DataCell(Icon(Icons.check_circle, color: Colors.green, size: 35,))
                                    ]),
                                    DataRow(cells: <DataCell> [
                                      DataCell(Text('Referencias comerciales')),
                                      DataCell(Icon(Icons.file_upload_rounded, color: Colors.blue, size: 35,))
                                    ]),
                                    DataRow(cells: <DataCell> [
                                      DataCell(Text('Autorización de consulta en Buró de crédito original firmada por el cliente')),
                                      DataCell(Icon(Icons.file_upload_rounded, color: Colors.blue, size: 35,))
                                    ]),
                                    DataRow(cells: <DataCell> [
                                      DataCell(Text('Autorización de consulta en Buró de crédito original firmada por el aval')),
                                      DataCell(Icon(Icons.check_circle, color: Colors.green, size: 35,))
                                    ]),
                                    DataRow(cells: <DataCell> [
                                      DataCell(Text('Opinión de cumplimiento positiva vigente')),
                                      DataCell(Icon(Icons.file_upload_rounded, color: Colors.blue, size: 35,))
                                    ]),
                                    DataRow(cells: <DataCell> [
                                      DataCell(Text('Comprobante de Domicilio no mayor a 3  meses')),
                                      DataCell(Icon(Icons.check_circle, color: Colors.green, size: 35,))
                                    ])
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        BootstrapCol(
                          sizes: 'col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6',
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Container(
                              padding: EdgeInsets.all(20),
                              decoration:  BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 2,color: Colors.white),
                                color: Colors.grey[300]
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    width: double.infinity,
                                    child: const Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.zoom_in, color: Colors.blue, size: 30,),
                                        SizedBox(width: 10,),
                                        Icon(Icons.zoom_out, color: Colors.blue, size: 30,),
                                        SizedBox(width: 10,),
                                        Icon(Icons.rotate_90_degrees_ccw_outlined, color: Colors.blue, size: 30,),
                                        SizedBox(width: 10,),
                                        Icon(Icons.rotate_90_degrees_cw_outlined, color: Colors.blue, size: 30,)
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    height: 500,
                                    child: Center(
                                      child: Text('Document'),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}