import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  const ContadorPage({super.key});

  @override
  State<ContadorPage> createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = const TextStyle(fontSize: 20);
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            Text('Número de clics: ', style: _estiloTexto),
            Text('$_conteo', style: _estiloTexto),
          ])),
      floatingActionButton: _crearBotones(),
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        const SizedBox(width: 30.0),
        FloatingActionButton(
          onPressed: _reset,
          child: const Icon(Icons.exposure_zero),
        ),
        const Expanded(child: SizedBox()),
        FloatingActionButton(
          onPressed: _sustraer,
          child: const Icon(Icons.remove),
        ),
        const SizedBox(width: 10.0),
        FloatingActionButton(
          onPressed: _agregar,
          child: const Icon(Icons.add),
        ),
      ],
    );
  }

  void _reset() {
    setState(() => _conteo = 0);
  }

  void _sustraer() {
    setState(() {
      if (_conteo > 0) {
        _conteo--;
      }
    });
  }

  void _agregar() {
    setState(() => _conteo++);
  }
}
