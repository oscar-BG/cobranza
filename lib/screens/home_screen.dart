import 'package:flutter/material.dart';
import 'package:credito_cobranza/screens/screens.dart';
import 'package:credito_cobranza/widgets/card_container_home.dart';
import 'package:credito_cobranza/widgets/custom_popup_menu_button.dart';

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
                  break;
                case 'cerrar_sesion':
                  Navigator.pushReplacementNamed(parentContext, 'login');
                  break;
              }
            },
          ),
        ],
      ),
      body:  Padding(
        padding: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text('¡Bienvendido ....!', style: TextStyle( fontSize: 25, fontWeight: FontWeight.bold, color: Color.fromRGBO(2, 63, 120, 1)),),
            const SizedBox(height: 30,),
            CardContainerHome(
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
            ),
            const SizedBox(height: 40,),
            CardContainerHome(
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
            )
          ],
        ),
      )
    );
  }
}