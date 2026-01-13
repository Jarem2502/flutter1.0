import 'package:flutter_application_1/widgets/buttons.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculadora Ponce',
      theme: ThemeData(useMaterial3: true),
      home: const MyHomePage(title: 'Calculadora'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  final TextEditingController _ctrlDisplay = TextEditingController(text:"");
  double aux1 = 0;
  double aux2 = 0;
  String operacion = "";

  void setAux1(String sim) {
    aux1= double.parse(_ctrlDisplay.text);
    operacion = sim;
    _ctrlDisplay.text = "";
  }
  void setAux2() {
    aux2 = double.parse(_ctrlDisplay.text);
    _ctrlDisplay.text = "";
  }
  void calcular() {
    double resultado = 0;
    if ( operacion == "+" ) {
      resultado = aux1 + aux2;
    } else if ( operacion == "-" ){
      resultado = aux1 - aux2;
    } else if ( operacion == "X" ){
      resultado = aux1 * aux2;
    } else if ( operacion == "/" ){
      resultado = aux1 / aux2;
    }
      _ctrlDisplay.text = "${resultado}";
  }

  void _incrementCounter(){
    setState((){
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5), // Fondo claro minimalista
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            // --- AQUÍ ESTÁN TUS TEXTOS "1" Y "2" ESTILIZADOS ---
            // Usamos Expanded para que la pantalla ocupe el espacio de arriba
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(20),
                alignment: Alignment.bottomRight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextField(
                      controller: _ctrlDisplay,
                      decoration: InputDecoration(
                        labelText: ''
                      )
                    ),
                    // Tu segundo texto (ejemplo: resultado principal)
                    // FittedBox evita que el número grande rompa la pantalla
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        "2", 
                        style: const TextStyle(fontSize: 80, fontWeight: FontWeight.bold)
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // --- TUS FILAS DE BOTONES ---
            // Fila de memorias
            Row(
              children: [
                _memBtn("MC"), _memBtn("MR"), _memBtn("M+"), _memBtn("M-"), _memBtn("MS"), _memBtn("M↓"),
              ],
            ),
            
            // Fila 1: Especiales
            Row(
              children: [
                Buttondark(simbolo: "%", onClick: (s) => print("Main: $s")),
                Buttondark(simbolo: "CE", onClick: (s) => print("Main: $s")),
                Buttondark(simbolo: "C", onClick: (s) => print("Main: $s")),
                Buttondark(simbolo: "⌫", onClick: (s) => print("Main: $s")),
              ],
            ),

            // Fila 2: Científicos
            Row(
              children: [
                Buttongray(cientif: "1/x", onClick: (c) => print("Main: $c")),
                Buttongray(cientif: "x2", onClick: (c) => print("Main: $c")),
                Buttongray(cientif: "2/-x", onClick: (c) => print("Main: $c")),
                Buttondark(
                  simbolo: "/",
                  onClick: (s) {
                    setState(() {
                      setAux1("/");
                    });
                  },
                ),
              ],
            ),

            // Fila 3: Números 7-9
            Row(
              children: [
                ButtonLight(
                  numero: "7",
                  onClick: (n) {
                    setState(() {
                      _ctrlDisplay.text = "${_ctrlDisplay.text}7";
                    });
                  },
                ),
                ButtonLight(
                  numero: "8",
                  onClick: (n) {
                    setState(() {
                      _ctrlDisplay.text = "${_ctrlDisplay.text}8";
                    });
                  },
                ),
                ButtonLight(
                  numero: "9",
                  onClick: (n) {
                    setState(() {
                      _ctrlDisplay.text = "${_ctrlDisplay.text}9";
                    });
                  },
                ),
                Buttondark(
                  simbolo: "X",
                  onClick: (s) {
                    setState(() {
                      setAux1("X");
                    });
                  },
                ),
              ],
            ),

            // Fila 4: Números 4-6
            Row(
              children: [
                ButtonLight(
                  numero: "4",
                  onClick: (n) {
                    setState(() {
                      _ctrlDisplay.text = "${_ctrlDisplay.text}4";
                    });
                  },
                ),
                ButtonLight(
                  numero: "5",
                  onClick: (n) {
                    setState(() {
                      _ctrlDisplay.text = "${_ctrlDisplay.text}5";
                    });
                  },
                ),
                ButtonLight(
                  numero: "6",
                  onClick: (n) {
                    setState(() {
                      _ctrlDisplay.text = "${_ctrlDisplay.text}6";
                    });
                  },
                ),
                Buttondark(
                  simbolo: "-",
                  onClick: (s) {
                    setState(() {
                      setAux1("-");
                    });
                  },
                ),
              ],
            ),

            // Fila 5: Números 1-3
            Row(
              children: [
                ButtonLight(
                  numero: "1",
                  onClick: (n) {
                    setState(() {
                      _ctrlDisplay.text = "${_ctrlDisplay.text}1";
                    });
                  },
                ),
                ButtonLight(
                  numero: "2",
                  onClick: (n) {
                    setState(() {
                      _ctrlDisplay.text = "${_ctrlDisplay.text}2";
                    });
                  },
                ),
                ButtonLight(
                  numero: "3",
                  onClick: (n) {
                    setState(() {
                      _ctrlDisplay.text = "${_ctrlDisplay.text}3";
                    });
                  },
                ),
                Buttondark(
                  simbolo: "+",
                  onClick: (s) {
                    setState(() {
                      setAux1("+");
                    });
                  },
                ),
              ],
            ),

            // Fila 6: Parte inferior
            Row(
              children: [
                Buttonblue(pointandmasmenos: "+/-", onClick: (p) => print("Main: $p")),
                ButtonLight(
                  numero: "0",
                  onClick: (n) {
                    setState(() {
                      _ctrlDisplay.text = "${_ctrlDisplay.text}0";
                    });
                  },
                ),
                Buttonblue(pointandmasmenos: ".", onClick: (p) => print("Main: $p")),
                Buttondark(
                  simbolo: "=",
                  onClick: (s) {
                    setState(() {
                      setAux2();
                      calcular();
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 10), // Espacio final para que no pegue al borde
          ],
        ),
      ),
    );
  }

  // Estilo para tus botones de memoria
  Widget _memBtn(String text) {
    return Expanded(
      child: TextButton(
        onPressed: () => print("Memoria: $text"),
        child: Text(text, style: const TextStyle(fontSize: 12, color: Colors.blueGrey)),
      ),
    );
  }
}