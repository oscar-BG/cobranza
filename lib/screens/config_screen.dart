import 'package:flutter/material.dart';
import 'package:credito_cobranza/widgets/custom_popup_menu_button.dart';
import 'package:credito_cobranza/widgets/card_container_home.dart';
import 'package:credito_cobranza/screens/screens.dart';
import 'package:credito_cobranza/constants/style.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';


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
      body: DashboardPage()

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
            final route = MaterialPageRoute(builder: (context) => const UserManagerScreen());
            Navigator.push(context, route);
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
            final route = MaterialPageRoute(builder: (context) => const CatalogueScreen());
            Navigator.push(context, route);
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
            final route = MaterialPageRoute(builder: (context) => const AuditTrailScreen());
            Navigator.push(context, route);
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
class _PersonMoral extends StatelessWidget {
  const _PersonMoral({super.key});

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
          onPressed: () {},
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Persona Moral', style: TextStyle(color: Colors.white, fontSize: 20)),
              Icon(Icons.person_sharp, color: Colors.white, size: 50,),
            ],
          ),
        ),
      ),
    );
  }
}
class _PersonFisical extends StatelessWidget {
  const _PersonFisical({super.key});

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
          onPressed: () {},
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Persona Física', style: TextStyle(color: Colors.white, fontSize: 20)),
              Icon(Icons.person_sharp, color: Colors.white, size: 50,),
            ],
          ),
        ),
      ),
    );
  }
}
class _Grupo extends StatelessWidget {
  const _Grupo({super.key});

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
          },
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Gobierno/INFRA', style: TextStyle(color: Colors.white, fontSize: 20)),
              Icon(Icons.factory, color: Colors.white, size: 50,),
            ],
          ),
        ),
      ),
    );
  }
}


class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {


 
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
          decoration: BoxDecoration(color: Colors.blue),      
        children: [
          Material(
            color: Colors.grey[300],
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
                          child: Text('Audit Trail', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Color.fromRGBO(2, 63, 120, 1)),),
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
                          sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4',
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: _MenuUser()
                          ),
                        ),
                        BootstrapCol(
                          sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4',
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: _MenuCatalogue()
                          ),
                        ),
                        BootstrapCol(
                          sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4',
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: _MenuAuditTrail()
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: BootstrapRow(
                      height: _scale.labelDim * 0.2,
                      children: <BootstrapCol>[
                        BootstrapCol(
                          sizes: 'col-12',
                          child: Text('Tipos de Documentos', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Color.fromRGBO(2, 63, 120, 1)),),
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
                          sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4',
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: _PersonMoral()
                          ),
                        ),
                        BootstrapCol(
                          sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4',
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: _PersonFisical()
                          ),
                        ),
                        BootstrapCol(
                          sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4',
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: _Grupo()
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