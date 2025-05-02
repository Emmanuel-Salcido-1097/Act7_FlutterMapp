import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cuatro extends StatelessWidget {
  const Cuatro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('Ejemplo 4'),
        backgroundColor: CupertinoColors.systemOrange,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CupertinoActivityIndicator(radius: 50),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Regresar'),
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Colors.blue, // Color de fondo (anteriormente 'primary')
                foregroundColor:
                    Colors.white, // Color del texto (anteriormente 'onPrimary')
              ),
            ),
          ],
        ),
      ),
    );
  }
}
