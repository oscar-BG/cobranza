import 'package:flutter/material.dart';
import 'package:credito_cobranza/ui/input_decorations_search.dart';

class FormNewCreditScreen extends StatefulWidget {
  const FormNewCreditScreen({super.key});

  @override
  State<FormNewCreditScreen> createState() => _FormNewCreditScreenState();
}

class _FormNewCreditScreenState extends State<FormNewCreditScreen> {
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              SizedBox(height: 10,),
              Text('Información del cliente', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Color.fromRGBO(2, 63, 120, 1)),),

              Material(
                color: Colors.grey[300],
                child: _FormClient(),
              ),
              SizedBox(height: 20,),
              Material(
                color: Colors.grey[300],
                child: _FormCredit(),
              )
            ],
          ),
        ),
      )
    );
  }
}

class _FormClient extends StatefulWidget {
  const _FormClient({super.key});

  @override
  State<_FormClient> createState() => _FormClientState();
}

class _FormClientState extends State<_FormClient> {
  String? _selectTypeCredit;
  String? _selectLetterDocument;
  String? _selectConstitutiveActs;

  @override
  Widget build(BuildContext context) {
    return  Form(
      child: Column(
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

          const SizedBox(height: 10,),

          TextFormField(
            autocorrect: false,
            keyboardType: TextInputType.text,
            decoration: InputDecorationsSearch.authInputDecoration(hintText: 'RFC', prefixIcon: Icons.person),
            style: const TextStyle(color: Colors.black),
            validator: (value) {
              // print(value);
            },
          ),
           const SizedBox(height: 10,),
    
          DropdownButtonFormField(
            items: const [
              DropdownMenuItem(value: 'zona1', child: Text('Item 1'),),
              DropdownMenuItem(value: 'zona2', child: Text('Item 2'),),
              DropdownMenuItem(value: 'zona3', child: Text('Item 3'),),
            ],
            decoration: InputDecorationsSearch.authInputDecoration(hintText: 'Zona', prefixIcon: Icons.person_pin_circle),
            onChanged: (value) {},
          ),

          const SizedBox(height: 10,),
    
          DropdownButtonFormField(
            items: const [
              DropdownMenuItem(value: 'item1', child: Text('item 1'),),
              DropdownMenuItem(value: 'item2', child: Text('item 2'),),
              DropdownMenuItem(value: 'item3', child: Text('item 3'),),
            ],
            decoration: InputDecorationsSearch.authInputDecoration(hintText: 'Sucursal Cabecera', prefixIcon: Icons.factory),
            onChanged: (value) {},
          ),

          const SizedBox(height: 10,),

          DropdownButtonFormField(
            items: const [
              DropdownMenuItem(value: 'item1', child: Text('item 1'),),
              DropdownMenuItem(value: 'item2', child: Text('item 2'),),
              DropdownMenuItem(value: 'item3', child: Text('item 3'),),
            ],
            decoration: InputDecorationsSearch.authInputDecoration(hintText: 'Tipo de Cliente', prefixIcon: Icons.group_rounded),
            onChanged: (value) {},
          ),
    
          const SizedBox(height: 10,),

          Text('Tipo de Solicitud', style: TextStyle(fontSize: 20),),
          Column(
            children: [
              RadioListTile(
                title: Text('Nuevo Crédito'),
                value: 'opcion1',
                groupValue: _selectTypeCredit,
                onChanged: (value) {
                  setState(() {
                    _selectTypeCredit = value;
                  });
                },
              ),
              RadioListTile<String>(
                title: const Text('Aumento Línea Crédito'),
                value: 'opcion2',
                groupValue: _selectTypeCredit,
                onChanged: (value) {
                  setState(() {
                    _selectTypeCredit = value;
                  });
                },
              ),
              RadioListTile<String>(
                title: const Text('Renovación Línea Crédito'),
                value: 'opcion3',
                groupValue: _selectTypeCredit,
                onChanged: (value) {
                  setState(() {
                    _selectTypeCredit = value;
                  });
                },
              ),
            ],
          ),
          const Text('Cuenta con carta de excepción para entregar documentos', style: TextStyle(fontSize: 20),),
          Column(
            children: [
              RadioListTile(
                title: Text('Si'),
                value: 'opcion1',
                groupValue: _selectLetterDocument,
                onChanged: (value) {
                  setState(() {
                    _selectLetterDocument = value;
                  });
                },
              ),
              RadioListTile<String>(
                title: const Text('No'),
                value: 'opcion2',
                groupValue: _selectLetterDocument,
                onChanged: (value) {
                  setState(() {
                    _selectLetterDocument = value;
                  });
                },
              ),
            ],
          ),

          const SizedBox(height: 10,),

          DropdownButtonFormField(
            items: const [
              DropdownMenuItem(value: 'item1', child: Text('item 1'),),
              DropdownMenuItem(value: 'item2', child: Text('item 2'),),
              DropdownMenuItem(value: 'item3', child: Text('item 3'),),
            ],
            decoration: InputDecorationsSearch.authInputDecoration(hintText: '¿Cuales?', prefixIcon: Icons.article_sharp),
            onChanged: (value) {},
          ),
          const SizedBox(height: 10,),
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.save_alt, color: Colors.white,),
            label: const Text('Agregar', style: TextStyle(color: Colors.white), ),
            style: TextButton.styleFrom(
              backgroundColor: const Color.fromRGBO(237, 128, 12, 1),
              fixedSize: const Size(180, 50),
            ),
          ),
        ],
      ),
    );
  }
}


class _FormCredit extends StatefulWidget {
  const _FormCredit({super.key});

  @override
  State<_FormCredit> createState() => __FormCreditState();
}

class __FormCreditState extends State<_FormCredit> {
  final TextEditingController _dateController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (pickedDate != null) {
      setState(() {
        _dateController.text = "${pickedDate.toLocal()}".split(' ')[0]; // Formatting the date
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Text('Crédito', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Color.fromRGBO(2, 63, 120, 1)),),
          const SizedBox(height: 10,),
          TextFormField(
            controller: _dateController,
            decoration: InputDecorationsSearch.authInputDecoration(
              hintText: 'Fecha de Solicitud',
              prefixIcon: Icons.calendar_today,
            ),
            readOnly: true,
            onTap: () => _selectDate(context),
          ),
          const SizedBox(height: 10,),
          TextFormField(
            autocorrect: false,
            keyboardType: TextInputType.text,
            decoration: InputDecorationsSearch.authInputDecoration(hintText: 'Núm. Cliente', prefixIcon: Icons.person),
            style: const TextStyle(color: Colors.black),
            validator: (value) {
              // print(value);
            },
          ),
          const SizedBox(height: 10,),

          DropdownButtonFormField(
            items: const [
              DropdownMenuItem(value: 'zona1', child: Text('Item 1'),),
              DropdownMenuItem(value: 'zona2', child: Text('Item 2'),),
              DropdownMenuItem(value: 'zona3', child: Text('Item 3'),),
            ],
            decoration: InputDecorationsSearch.authInputDecoration(hintText: 'Sector', prefixIcon: Icons.person_pin_circle),
            onChanged: (value) {},
          ),

          const SizedBox(height: 10,),

          TextFormField(
            autocorrect: false,
            keyboardType: TextInputType.text,
            decoration: InputDecorationsSearch.authInputDecoration(hintText: 'Giro Empresarial', prefixIcon: Icons.business),
            style: const TextStyle(color: Colors.black),
            validator: (value) {
              // print(value);
            },
          ),
          const SizedBox(height: 10,),
          Text('Domicilio', style: TextStyle(fontSize: 20),),
          const SizedBox(height: 10,),

          TextFormField(
            autocorrect: false,
            keyboardType: TextInputType.text,
            decoration: InputDecorationsSearch.authInputDecoration(hintText: 'Calle', prefixIcon: Icons.streetview),
            style: const TextStyle(color: Colors.black),
            validator: (value) {
              // print(value);
            },
          ),

          const SizedBox(height: 10,),

          TextFormField(
            autocorrect: false,
            keyboardType: TextInputType.text,
            decoration: InputDecorationsSearch.authInputDecoration(hintText: 'Alcaldía o Municipio', prefixIcon: Icons.house),
            style: const TextStyle(color: Colors.black),
            validator: (value) {
              // print(value);
            },
          ),

          const SizedBox(height: 10,),

          TextFormField(
            autocorrect: false,
            keyboardType: TextInputType.text,
            decoration: InputDecorationsSearch.authInputDecoration(hintText: 'Colonia', prefixIcon: Icons.house),
            style: const TextStyle(color: Colors.black),
            validator: (value) {
              // print(value);
            },
          ),

          const SizedBox(height: 10,),

          TextFormField(
            autocorrect: false,
            keyboardType: TextInputType.text,
            decoration: InputDecorationsSearch.authInputDecoration(hintText: 'Núm. Exterior', prefixIcon: Icons.house),
            style: const TextStyle(color: Colors.black),
            validator: (value) {
              // print(value);
            },
          ),

          const SizedBox(height: 10,),

          TextFormField(
            autocorrect: false,
            keyboardType: TextInputType.text,
            decoration: InputDecorationsSearch.authInputDecoration(hintText: 'Núm. Interior', prefixIcon: Icons.house),
            style: const TextStyle(color: Colors.black),
            validator: (value) {
              // print(value);
            },
          ),

          const SizedBox(height: 10,),

          TextFormField(
            autocorrect: false,
            keyboardType: TextInputType.text,
            decoration: InputDecorationsSearch.authInputDecoration(hintText: 'C.P', prefixIcon: Icons.house),
            style: const TextStyle(color: Colors.black),
            validator: (value) {
              // print(value);
            },
          ),

          const SizedBox(height: 10,),
          DropdownButtonFormField(
            items: const [
              DropdownMenuItem(value: 'item1', child: Text('item 1'),),
              DropdownMenuItem(value: 'item2', child: Text('item 2'),),
              DropdownMenuItem(value: 'item3', child: Text('item 3'),),
            ],
            decoration: InputDecorationsSearch.authInputDecoration(hintText: 'Estado', prefixIcon: Icons.map),
            onChanged: (value) {},
          ),

          const SizedBox(height: 10,),
          DropdownButtonFormField(
            items: const [
              DropdownMenuItem(value: 'item1', child: Text('item 1'),),
              DropdownMenuItem(value: 'item2', child: Text('item 2'),),
              DropdownMenuItem(value: 'item3', child: Text('item 3'),),
            ],
            decoration: InputDecorationsSearch.authInputDecoration(hintText: 'País', prefixIcon: Icons.map),
            onChanged: (value) {},
          ),
          
          const SizedBox(height: 20),

          Text('Solicitante', style: TextStyle(fontSize: 20),),

          const SizedBox(height: 10,),
          TextFormField(
            autocorrect: false,
            keyboardType: TextInputType.text,
            decoration: InputDecorationsSearch.authInputDecoration(hintText: 'Nombre Solicitante', prefixIcon: Icons.person),
            style: const TextStyle(color: Colors.black),
            validator: (value) {
              // print(value);
            },
          ),
          const SizedBox(height: 10,),
          TextFormField(
            autocorrect: false,
            keyboardType: TextInputType.text,
            decoration: InputDecorationsSearch.authInputDecoration(hintText: 'Nombre Ejecutivo Integral', prefixIcon: Icons.person),
            style: const TextStyle(color: Colors.black),
            validator: (value) {
              // print(value);
            },
          ),
          const SizedBox(height: 10,),
          TextFormField(
            autocorrect: false,
            keyboardType: TextInputType.text,
            decoration: InputDecorationsSearch.authInputDecoration(hintText: 'Núm. Nómina Ejecutivo', prefixIcon: Icons.person),
            style: const TextStyle(color: Colors.black),
            validator: (value) {
              // print(value);
            },
          ),
          const SizedBox(height: 10,),
          TextFormField(
            autocorrect: false,
            keyboardType: TextInputType.text,
            decoration: InputDecorationsSearch.authInputDecoration(hintText: 'Nombre Gerente de Ventas', prefixIcon: Icons.person),
            style: const TextStyle(color: Colors.black),
            validator: (value) {
              // print(value);
            },
          ),
          const SizedBox(height: 10,),
          TextFormField(
            autocorrect: false,
            keyboardType: TextInputType.text,
            decoration: InputDecorationsSearch.authInputDecoration(hintText: 'Núm. Nómina Gerente', prefixIcon: Icons.person),
            style: const TextStyle(color: Colors.black),
            validator: (value) {
              // print(value);
            },
          ),

          const SizedBox(height: 10,),
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.save_alt, color: Colors.white,),
            label: const Text('Guardar', style: TextStyle(color: Colors.white), ),
            style: TextButton.styleFrom(
              backgroundColor: const Color.fromRGBO(237, 128, 12, 1),
              fixedSize: const Size(180, 50),
            ),
          ),
        ],
      ),
    );
  }
}