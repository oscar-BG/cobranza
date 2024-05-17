import 'package:flutter/material.dart';

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
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              backgroundColor: Colors.blue[500],
              child: const Text('OB'),
            ),
          )
        ],
      ),
      body:  Padding(
        padding: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('¡Bienvendido ....!', style: TextStyle( fontSize: 25, fontWeight: FontWeight.bold, color: Color.fromRGBO(2, 63, 120, 1)),),
            SizedBox(height: 30,),
            Container(
              width: double.infinity,
              color: Color.fromRGBO(2, 63, 120, 1),
              child: DataTable(
                headingTextStyle: TextStyle(color: Colors.white),
                dataTextStyle: TextStyle(color: Colors.white),
                columns: <DataColumn>[
                  DataColumn(label: Expanded(child: Text('Clientres'))),
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
                        CircleAvatar(backgroundImage: NetworkImage('https://www.kindpng.com/picc/m/24-245173_dama-profesor-perfil-la-cabeza-mujeres-mujer-user.png'),),
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
              ),
            ),
            const SizedBox(height: 40,),
            Container(
              width: double.infinity,
              color: Color.fromRGBO(2, 63, 120, 1),
              child: Column(
                children: [
                  TextButton(

                    style: TextButton.styleFrom(
                      backgroundColor: Color.fromRGBO(237, 128, 12, 1),
                      fixedSize: Size(150, 50),  
                    ),
                    onPressed: () { },
                    child: Text('Nueva solicitud', style: TextStyle(color: Colors.white),),
                  ),
                  SizedBox(height: 10,),
                  TextButton(

                    style: TextButton.styleFrom(
                      backgroundColor: Color.fromRGBO(237, 128, 12, 1),
                      fixedSize: Size(150, 50),  
                    ),
                    onPressed: () { },
                    child: Text('Buscar cliente', style: TextStyle(color: Colors.white),),
                  ),
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}