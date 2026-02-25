import 'package:flutter/material.dart';

class PaginaTres extends StatelessWidget {
  const PaginaTres({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Leche LALA', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: const Color(0xFFB71C1C), // Rojo / Guinda
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
      ),
      body: SingleChildScrollView( // Para evitar errores de espacio en pantallas pequeñas
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // --- SECCIÓN SUPERIOR: DESCRIPCIÓN Y PRECIO ---
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // DESCRIPCIÓN A LA IZQUIERDA
                  const Expanded(
                    flex: 2,
                    child: Text(
                      'Leche Entera LALA: 100% pura de vaca, ultrapasteurizada para mantener su frescura y sabor natural.',
                      style: TextStyle(fontSize: 16, height: 1.4),
                    ),
                  ),
                  const SizedBox(width: 15),
                  // PRECIO A LA DERECHA
                  const Expanded(
                    flex: 1,
                    child: Text(
                      '\$25.50',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // --- IMAGEN ABAJO DE LA DESCRIPCIÓN ---
              Center(
                child: Image.network(
                  "https://raw.githubusercontent.com/LiraRodriguezMaximiliano/imagenes-para-flutter-6I-11-02-26/refs/heads/main/L1.png",
                  height: 250,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 20),

              // --- BOTONES NO FUNCIONALES ---
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.red, foregroundColor: Colors.white),
                      onPressed: null, // Deshabilitado
                      child: const Text('Añadir al carro'),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.green, foregroundColor: Colors.white),
                      onPressed: null, // Deshabilitado
                      child: const Text('Comprar'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),

              // --- SECCIÓN DE RESEÑAS ---
              const Divider(),
              const Text(
                'Reseñas',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15),
              // Tarjeta de reseña de usuario
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Un usuario',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const SizedBox(height: 5),
                    // 5 Estrellas
                    Row(
                      children: List.generate(5, (index) => const Icon(Icons.star, color: Colors.amber, size: 20)),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Gran producto',
                      style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: TextButton(
                  onPressed: () => Navigator.popUntil(context, ModalRoute.withName('/')),
                  child: const Text("Volver al Inicio"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}