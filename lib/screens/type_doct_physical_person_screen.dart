import 'package:flutter/material.dart';
import 'package:credito_cobranza/widgets/card_container_home.dart';
import 'package:credito_cobranza/widgets/custom_popup_menu_button.dart';
import 'package:credito_cobranza/screens/screens.dart';
import 'package:credito_cobranza/ui/checkbox_decorations.dart';

class TypeDoctPhysicalPersonScreen extends StatelessWidget {
  const TypeDoctPhysicalPersonScreen({super.key});

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
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Documentos para personas físicas', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Color.fromRGBO(2, 63, 120, 1)),),
              SizedBox(height: 20),
              _documetn()
            ],
          ),
        ),
      )
    );
  }
}

class _documetn extends StatelessWidget {
  const _documetn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CardContainerHome(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          headingTextStyle: const TextStyle(color: Colors.white),
          dataTextStyle: const TextStyle(color: Colors.white),
          columns: const <DataColumn>[
            DataColumn(label: Expanded(child: Text('Documento'))),
            DataColumn(label: Expanded(child: Text('A'))),
            DataColumn(label: Expanded(child: Text('B'))),
            DataColumn(label: Expanded(child: Text('C'))),
          ],
          rows: <DataRow>[
            DataRow(cells: <DataCell>[
              DataCell(Text('Solicitud Original de Crédito Firmada por el Cliente'),),
              DataCell(CheckboxExample()),
              DataCell(CheckboxExample()),
              DataCell(CheckboxExample()),
            ]),
            DataRow(cells: <DataCell>[
              DataCell(Text('Referencias Comerciales')),
              DataCell(CheckboxExample()),
              DataCell(CheckboxExample()),
              DataCell(CheckboxExample()),
            ]),
            DataRow(cells: <DataCell>[
              DataCell(Text('Poder Notarial')),
              DataCell(CheckboxExample()),
              DataCell(CheckboxExample()),
              DataCell(CheckboxExample()),
            ]),
            DataRow(cells: <DataCell>[
              DataCell(Text('Estados Financieros')),
              DataCell(CheckboxExample()),
              DataCell(CheckboxExample()),
              DataCell(CheckboxExample()),
            ]),
          ],
        ),
      ),
    );
  }
}