import 'package:credito_cobranza/widgets/card_container_home.dart';
import 'package:flutter/material.dart';
import 'package:credito_cobranza/ui/input_decorations_search.dart';

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
      body:  SingleChildScrollView (
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(        
            children: [
              SizedBox(height: 10),
              Text('Buscar clientes', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Color.fromRGBO(2, 63, 120, 1)),),
              Material(
                color: Colors.grey[300],
                child: _FormSearch(),
              ),
              SizedBox(height: 10),
              Material(
                color: Colors.grey[300],
                child: _TableClient(),
              )
            ],
          ), 
        ) 
      ),
    );
  }
}

class _FormSearch extends StatelessWidget {
  const _FormSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        child:  Column(
          children: [

            TextFormField(
              autofocus: true,
              autocorrect: false,
              keyboardType: TextInputType.name,
              decoration: InputDecorationsSearch.authInputDecoration(hintText: 'Nombre/Razón Social', prefixIcon: Icons.person),
              style: const TextStyle(color: Colors.black),
              validator: (value) {
                // print(value);
              },
            ),
            SizedBox(height: 10,),

            TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.text,
              decoration: InputDecorationsSearch.authInputDecoration(hintText: 'RFC', prefixIcon: Icons.person),
              style: const TextStyle(color: Colors.black),
              validator: (value) {
                // print(value);
              },
            ),
            SizedBox(height: 10,),

            DropdownButtonFormField(
              items: const [
                DropdownMenuItem(value: 'zona1', child: Text('Item 1'),),
                DropdownMenuItem(value: 'zona2', child: Text('Item 2'),),
                DropdownMenuItem(value: 'zona3', child: Text('Item 3'),),
              ],
              decoration: InputDecorationsSearch.authInputDecoration(hintText: 'Zona', prefixIcon: Icons.person_pin_circle),
              onChanged: (value) {},
            ),

            SizedBox(height: 10,),

            DropdownButtonFormField(
              items: const [
                DropdownMenuItem(value: 'item1', child: Text('item 1'),),
                DropdownMenuItem(value: 'item2', child: Text('item 2'),),
                DropdownMenuItem(value: 'item3', child: Text('item 3'),),
              ],
              decoration: InputDecorationsSearch.authInputDecoration(hintText: 'Sucursal Cabecera', prefixIcon: Icons.factory),
              onChanged: (value) {},
            ),

            SizedBox(height: 10,),

            DropdownButtonFormField(
              items: const [
                DropdownMenuItem(value: 'item1', child: Text('item 1'),),
                DropdownMenuItem(value: 'item2', child: Text('item 2'),),
                DropdownMenuItem(value: 'item3', child: Text('item 3'),),
              ],
              decoration: InputDecorationsSearch.authInputDecoration(hintText: 'Estatus', prefixIcon: Icons.article_sharp),
              onChanged: (value) {},
            ),

            SizedBox(height: 10,),

            DropdownButtonFormField(
              items: const [
                DropdownMenuItem(value: 'item1', child: Text('item 1'),),
                DropdownMenuItem(value: 'item2', child: Text('item 2'),),
                DropdownMenuItem(value: 'item3', child: Text('item 3'),),
              ],
              decoration: InputDecorationsSearch.authInputDecoration(hintText: 'Tipo de Cliente', prefixIcon: Icons.group_rounded),
              onChanged: (value) {},
            ),

            SizedBox(height: 10,),

            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.search, color: Colors.white,),
              label: const Text('Buscar cliente', style: TextStyle(color: Colors.white), ),
              style: TextButton.styleFrom(
                backgroundColor: const Color.fromRGBO(237, 128, 12, 1),
                fixedSize: const Size(180, 50),
              ),
            ),

          ],
        ),
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
              DataCell( Text('SDTRRTF')),
              DataCell( Text('PERSON 1')),
              DataCell( Text('Tipo 1')),
              DataCell( Text('Zona 1')),
              DataCell( Text('Sucursal 1')),
              DataCell( Text('Success')),
              DataCell(
                TextButton.icon(
                  onPressed: () {                    
                  },
                  icon: Icon( Icons.edit_document, color: Colors.white,),
                  label: Text('Ver', style: TextStyle(color: Colors.white),),
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