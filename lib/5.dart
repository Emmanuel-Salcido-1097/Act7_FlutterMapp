import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cinco extends StatefulWidget {
  const Cinco({Key? key}) : super(key: key);

  @override
  CincoState createState() => CincoState();
}

class CincoState extends State<Cinco> {
  double _currentValue = 1;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('Ejemplo 5'),
        backgroundColor: CupertinoColors.systemOrange,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            CupertinoIcons.back,
            color: CupertinoColors.black,
          ),
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            Text(
              _currentValue.toStringAsFixed(1), // Mostrar 1 decimal
              style: const TextStyle(fontSize: 30),
            ),
            const SizedBox(height: 50),
            CupertinoSlider(
              value: _currentValue,
              min: 0,
              max: 10,
              divisions: 10,
              onChanged: (selectedValue) {
                setState(() {
                  _currentValue = selectedValue;
                });
              },
            ),
            const SizedBox(height: 20),
            CupertinoButton(
              color: CupertinoColors.activeBlue,
              child: const Text('Regresar'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
