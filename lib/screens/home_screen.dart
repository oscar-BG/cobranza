import 'package:flutter/material.dart';
import 'package:credito_cobranza/screens/screens.dart';
import 'package:credito_cobranza/widgets/card_container_home.dart';
import 'package:credito_cobranza/widgets/custom_popup_menu_button.dart';
import 'package:credito_cobranza/constants/style.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
      body: MenuOptionHome(),
    );
  }
}

class MenuOptionHome extends StatefulWidget {
  @override
  _MenuOptionHomeState createState() => _MenuOptionHomeState();
}

class _MenuOptionHomeState extends State<MenuOptionHome> {


 
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
                              const Text('¡Bienvenido ....!', style: TextStyle( fontSize: 25, fontWeight: FontWeight.bold, color: Color.fromRGBO(2, 63, 120, 1)),),
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
                            child: _TableClient()
                          ),
                        ),
                        BootstrapCol(
                          sizes: 'col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6',
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: _MenuOption()
                          ),
                        )
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

class _MenuOption extends StatelessWidget {
  const _MenuOption({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CardContainerHome(
      child: Column(
        children: [
          TextButton.icon(
            onPressed: () {
              final route = MaterialPageRoute(builder: (context) => FormNewCreditScreen());
              Navigator.push(context, route);
            },
            icon: const Icon(Icons.playlist_add_outlined, color: Colors.white,),
            label: const Text('Nueva solicitud', style: TextStyle(color: Colors.white),),
            style: TextButton.styleFrom(
              backgroundColor: const Color.fromRGBO(237, 128, 12, 1),
              fixedSize: const Size(180, 50)
            ),
          ),
          const SizedBox(height: 10,),
          TextButton.icon(
            onPressed: () {
              final route = MaterialPageRoute(builder: (context) => const SearchClientScreen());
              Navigator.push(context, route);
            },
            icon: const Icon(Icons.search, color: Colors.white,),
            label: const Text('Buscar cliente', style: TextStyle(color: Colors.white), ),
            style: TextButton.styleFrom(
              backgroundColor: const Color.fromRGBO(237, 128, 12, 1),
              fixedSize: const Size(180, 50),
            ),
          ),
          const SizedBox(height: 10,),
    
        ],
      ),
    );
  }
}

class _TableClient extends StatelessWidget {
  const _TableClient({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CardContainerHome(
      child: SingleChildScrollView (
        scrollDirection: Axis.horizontal,
        child: DataTable(
          headingTextStyle: const TextStyle(color: Colors.white),
          dataTextStyle: const TextStyle(color: Colors.white),
          columns: const <DataColumn>[
            DataColumn(label: Expanded(child: Text('Clientes'))),
            DataColumn(label: Expanded(child: Text('Ciudad'),)),
          ],
          rows:  <DataRow> [
            DataRow(cells: <DataCell>[
              DataCell(Row(
                children: [
                  CircleAvatar(backgroundColor: Colors.blue[500], child: const Text('JM'),),
                  const SizedBox(width: 8),
                  const Text('José Martinez Robledo'),
                ],
              )),
              const DataCell(Text('Puebla, México'))
            ]),
            const DataRow(cells: <DataCell>[
              DataCell( Row(
                children: [
                  CircleAvatar(backgroundImage: NetworkImage('https://www.kindpng.com/picc/m/24-245173_dama-profesor-perfil-la-cabeza-mujeres-mujer-user.png'), ),
                  SizedBox(width: 8,),
                  Text('Angela Gómez Pelaes')
                ],
              )),
              DataCell(Text('CDMX, México'))
            ]),
            const DataRow(cells: <DataCell>[
              DataCell( Row(
                children: [
                  CircleAvatar(backgroundImage: NetworkImage('https://gorental.es/wp-content/uploads/2022/01/face_icons-circle-59.png'),),
                  SizedBox(width: 8,),
                  Text('Miguel Pérez Gutierrez')
                ],
              )),
              DataCell(Text('CDMX, México'))
            ]),
          ],
        )
      ) 
    );
  }
}