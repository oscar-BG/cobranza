import 'package:flutter/material.dart';
import 'package:credito_cobranza/widgets/custom_popup_menu_button.dart';
import 'package:credito_cobranza/screens/screens.dart';

class AuditTrailScreen extends StatelessWidget {
  const AuditTrailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/images/infra.png', width: 100, height: 50, fit: BoxFit.contain,),
        backgroundColor: const Color.fromRGBO(237, 128, 12, 1),
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
      body: ResponsiveGrid(),
    );
  }
}



class ResponsiveGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Este es un tituulo', style: TextStyle(fontSize: 30)),
          Expanded(
            child: LayoutBuilder(
              builder: (context, constraints) {
                // Determina el número de columnas basado en el ancho disponible
                int crossAxisCount = constraints.maxWidth > 600 ? 2 : 1;
            
                return GridView.count(
                  crossAxisCount: crossAxisCount,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                  children: [
                    _GridItem(index: 0),
                    _GridItem(index: 1),
                    _GridItem(index: 2),
                    _GridItem(index: 3),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _GridItem extends StatelessWidget {
  final int index;

  const _GridItem({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Text(
          'Item ${index + 1}',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

