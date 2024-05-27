import 'package:flutter/material.dart';
import 'package:credito_cobranza/screens/screens.dart';
import 'package:credito_cobranza/widgets/custom_popup_menu_button.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';

class ProfilePage1 extends StatelessWidget {
  const ProfilePage1({Key? key}) : super(key: key);

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
      body: _InformationProfile(),
    );
  }
}

class _InformationProfile extends StatefulWidget {
  const _InformationProfile({super.key});

  @override
  State<_InformationProfile> createState() => __InformationProfileState();
}

class __InformationProfileState extends State<_InformationProfile> {

  final TextEditingController _txtNombre = TextEditingController(text: "Persona 1 ...");
  final TextEditingController _txtRFC = TextEditingController(text: "DSER435RERER");
  final TextEditingController _numCliente = TextEditingController(text: "4354546565");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: BootstrapContainer(
          fluid: true,
          children: [
            Material(
              color: Colors.grey[300],
              child: BootstrapContainer(
                fluid: true,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                      child: BootstrapRow(
                        height: 60,
                        children: [
                          BootstrapCol(
                            sizes: 'col-12 col-sm-12 col-md-12 col-lg-4 col-xl-4',
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              padding: EdgeInsets.all(20),
                              decoration:  BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 2,color: Colors.white),
                                color: Colors.white
                              ),
                              child: const Column(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: NetworkImage('https://gorental.es/wp-content/uploads/2022/01/face_icons-circle-59.png'), 
                                    radius: 70,
                                  ),
                                  SizedBox(height: 20,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text('Solicitante: '),
                                      Text('Persona 1 ...'),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text('RFC: '),
                                      Text('RETDSDY873287876'),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text('Nombre Ejecutivo Integral: '),
                                      Text('Persona 2 ....'),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text('Núm, Nómina Ejecutivo: '),
                                      Text('54656165'),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text('Nombre Gerente de Ventas: '),
                                      Text('Persona 3 ..'),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text('Núm. Nómina Gerente: '),
                                      Text('Persona 3 ..'),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text('Categoría: '),
                                      Text('C'),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text('Calificación: '),
                                      Text('90'),
                                    ],
                                  ),
                                ],
                              )
                            ),
                          ),
                        ),
                        BootstrapCol(
                          sizes: 'col-12 col-sm-12 col-md-12 col-lg-8 col-xl-8',
                          child: Padding(
                            padding: EdgeInsets.all(5),
                            child: Container(
                              padding: EdgeInsets.all(20),
                              decoration:  BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 2,color: Colors.white),
                                color: Colors.white
                              ),
                              child: Column(
                                children: [
                                  Text('Información del cliente', style: TextStyle(fontSize: 20, color: Color.fromRGBO(2, 63, 120, 1)),),
                                  BootstrapContainer(
                                    fluid: true,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: BootstrapRow(
                                          height: 60,
                                          children: [
                                            BootstrapCol(
                                              sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4',
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: TextFormField(
                                                  controller: _txtNombre,
                                                  decoration: InputDecoration(
                                                    labelText: 'Nombre/Razón Social'
                                                  ),

                                                ),
                                              ),
                                            ),
                                            BootstrapCol(
                                              sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4',
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: TextFormField(
                                                  controller: _txtRFC,
                                                  decoration: InputDecoration(
                                                    labelText: 'RFC'
                                                  ),
                                                ),
                                              ),
                                            ),
                                            BootstrapCol(
                                              sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4',
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: TextFormField(
                                                  controller: _numCliente,
                                                  decoration: InputDecoration(
                                                    labelText: 'Número Cliente'
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: BootstrapRow(
                                          height: 60,
                                          children: [
                                            BootstrapCol(
                                              sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4',
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: TextFormField(
                                                  decoration: InputDecoration(
                                                    labelText: 'Fecha Solicitud'
                                                  ),

                                                ),
                                              ),
                                            ),
                                            BootstrapCol(
                                              sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4',
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: TextFormField(
                                                  decoration: InputDecoration(
                                                    labelText: 'Tipo Solicitud'
                                                  ),
                                                ),
                                              ),
                                            ),
                                            BootstrapCol(
                                              sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4',
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: TextFormField(
                                                  decoration: InputDecoration(
                                                    labelText: 'Tipo de Cliente'
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: BootstrapRow(
                                          height: 60,
                                          children: [
                                            BootstrapCol(
                                              sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4',
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: TextFormField(
                                                  decoration: InputDecoration(
                                                    labelText: 'Zona'
                                                  ),

                                                ),
                                              ),
                                            ),
                                            BootstrapCol(
                                              sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4',
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: TextFormField(
                                                  decoration: InputDecoration(
                                                    labelText: 'Sucursal Cabecera'
                                                  ),
                                                ),
                                              ),
                                            ),
                                            BootstrapCol(
                                              sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4',
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: TextFormField(
                                                  decoration: InputDecoration(
                                                    labelText: 'Estatus'
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: BootstrapRow(
                                          height: 60,
                                          children: [
                                            BootstrapCol(
                                              sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4',
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: TextFormField(
                                                  decoration: InputDecoration(
                                                    labelText: 'Giro Empresarial'
                                                  ),

                                                ),
                                              ),
                                            ),
                                            BootstrapCol(
                                              sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4',
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: TextFormField(
                                                  decoration: InputDecoration(
                                                    labelText: 'Cambios en acta constitutiva'
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: BootstrapRow(
                                          height: 60,
                                          children: [
                                            BootstrapCol(
                                              sizes: 'col-12',
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text('Domicilio', style: TextStyle(fontSize: 20, color: Color.fromRGBO(1, 63, 120, 1)),)
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: BootstrapRow(
                                          height: 60,
                                          children: [
                                            BootstrapCol(
                                              sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4',
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: TextFormField(
                                                  decoration: InputDecoration(
                                                    labelText: 'Calle'
                                                  ),

                                                ),
                                              ),
                                            ),
                                            BootstrapCol(
                                              sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4',
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: TextFormField(
                                                  decoration: InputDecoration(
                                                    labelText: 'Núm Interior'
                                                  ),
                                                ),
                                              ),
                                            ),
                                            BootstrapCol(
                                              sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4',
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: TextFormField(
                                                  decoration: InputDecoration(
                                                    labelText: 'Núm Exterior'
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: BootstrapRow(
                                          height: 60,
                                          children: [
                                            BootstrapCol(
                                              sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4',
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: TextFormField(
                                                  decoration: InputDecoration(
                                                    labelText: 'Colonia'
                                                  ),

                                                ),
                                              ),
                                            ),
                                            BootstrapCol(
                                              sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4',
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: TextFormField(
                                                  decoration: InputDecoration(
                                                    labelText: 'Municipio/Alcaldía'
                                                  ),
                                                ),
                                              ),
                                            ),
                                            BootstrapCol(
                                              sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4',
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: TextFormField(
                                                  decoration: InputDecoration(
                                                    labelText: 'Estado'
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: BootstrapRow(
                                          height: 60,
                                          children: [
                                            BootstrapCol(
                                              sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4',
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: TextFormField(
                                                  decoration: InputDecoration(
                                                    labelText: 'País'
                                                  ),

                                                ),
                                              ),
                                            ),
                                            BootstrapCol(
                                              sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4',
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: TextFormField(
                                                  decoration: InputDecoration(
                                                    labelText: 'C.P'
                                                  ),
                                                ),
                                              ),
                                            ),
                                            BootstrapCol(
                                              sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4',
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: TextFormField(
                                                  decoration: InputDecoration(
                                                    labelText: 'Teléfono'
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: BootstrapRow(
                                          height: 60,
                                          children: [
                                            BootstrapCol(
                                              sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4',
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: TextFormField(
                                                  decoration: InputDecoration(
                                                    labelText: 'Fecha Aceptación'
                                                  ),

                                                ),
                                              ),
                                            ),
                                            BootstrapCol(
                                              sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4',
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: TextFormField(
                                                  decoration: InputDecoration(
                                                    labelText: 'Vigencia'
                                                  ),
                                                ),
                                              ),
                                            ),
                                            BootstrapCol(
                                              sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4',
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: TextFormField(
                                                  decoration: InputDecoration(
                                                    labelText: 'Monto Crédito'
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: BootstrapRow(
                                          height: 60,
                                          children: [
                                            BootstrapCol(
                                              sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4',
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: TextFormField(
                                                  decoration: InputDecoration(
                                                    labelText: 'Fecha Pagaré'
                                                  ),

                                                ),
                                              ),
                                            ),
                                            BootstrapCol(
                                              sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4',
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: TextFormField(
                                                  decoration: InputDecoration(
                                                    labelText: 'Vigencia Pagaré'
                                                  ),
                                                ),
                                              ),
                                            ),
                                            BootstrapCol(
                                              sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4',
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: TextFormField(
                                                  decoration: InputDecoration(
                                                    labelText: 'Vigencia Documentos'
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: BootstrapRow(
                                          height: 60,
                                          children: [
                                            BootstrapCol(
                                              sizes: 'col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6',
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Center(
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: const Icon(Icons.save_alt, color: Colors.white,),
                                                    label: const Text('Guardar', style: TextStyle(color: Colors.white), ),
                                                    style: TextButton.styleFrom(
                                                      backgroundColor: const Color.fromRGBO(237, 128, 12, 1),
                                                      fixedSize: const Size(180, 50),
                                                    ),
                                                  ),
                                                )
                                              ),
                                            ),
                                            BootstrapCol(
                                              sizes: 'col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6',
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Center(
                                                  child: TextButton.icon(
                                                    onPressed: () {},
                                                    icon: const Icon(Icons.edit_document, color: Colors.white,),
                                                    label: const Text('Documentos', style: TextStyle(color: Colors.white), ),
                                                    style: TextButton.styleFrom(
                                                      backgroundColor: const Color.fromRGBO(237, 128, 12, 1),
                                                      fixedSize: const Size(180, 50),
                                                    ),
                                                  ),
                                                )
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    
                                    ],
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

