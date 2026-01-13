import 'package:flutter/material.dart';

// --- BOTÓN PARA NÚMEROS (CLARO) ---
class ButtonLight extends StatelessWidget {
  final String numero;
  final void Function(String) onClick;

  const ButtonLight({super.key, required this.numero, required this.onClick});
  
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(6), // Espaciado entre botones
        child: ElevatedButton(
          onPressed: () {
            print("click $numero"); // Mantenemos tu print
            onClick(numero);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)), // Bordes redondeados
            padding: const EdgeInsets.symmetric(vertical: 22),
            elevation: 2, // Sombra suave
          ),
          child: Text(numero, style: const TextStyle(fontSize: 26, fontWeight: FontWeight.w400)),
        ),
      ),
    );
  }
}

// --- BOTÓN PARA OPERACIONES (OSCURO) ---
class Buttondark extends StatelessWidget {
  final String simbolo;
  final void Function(String) onClick;
  const Buttondark({super.key, required this.simbolo, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(6),
        child: ElevatedButton(
          onPressed: () {
            print("click $simbolo"); // Mantenemos tu print
            onClick(simbolo);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF2D2D2D), // Gris muy oscuro
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            padding: const EdgeInsets.symmetric(vertical: 22),
          ),
          child: Text(simbolo, style: const TextStyle(fontSize: 26, color: Colors.orangeAccent)), // Operadores resaltados
        ),
      ),
    );
  }
}

// --- BOTÓN PARA FUNCIONES CIENTÍFICAS (GRIS) ---
class Buttongray extends StatelessWidget {
  final String cientif;
  final void Function(String) onClick;
  const Buttongray({super.key, required this.cientif, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(6),
        child: ElevatedButton(
          onPressed: () {
            print("click $cientif"); // Mantenemos tu print
            onClick(cientif);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFA5A5A5), // Gris medio
            foregroundColor: Colors.black,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            padding: const EdgeInsets.symmetric(vertical: 18),
          ),
          child: Text(cientif, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}

// --- BOTÓN ESPECIAL (AZULADO / OTROS) ---
class Buttonblue extends StatelessWidget {
  final String pointandmasmenos;
  final void Function(String) onClick;
  const Buttonblue({super.key, required this.pointandmasmenos, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(6),
        child: ElevatedButton(
          onPressed: () {
            print("click $pointandmasmenos"); // Mantenemos tu print
            onClick(pointandmasmenos);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFB0BEC5), // Azul grisáceo suave
            foregroundColor: Colors.black,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            padding: const EdgeInsets.symmetric(vertical: 22),
          ),
          child: Text(pointandmasmenos, style: const TextStyle(fontSize: 24)),
        ),
      ),
    );
  }
}