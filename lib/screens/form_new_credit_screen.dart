import 'package:flutter/material.dart';

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
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              SizedBox(height: 10,),
              Text('Información del cliente', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Color.fromRGBO(2, 63, 120, 1)),)
            ],
          ),
        ),
      )
    );
  }
}