import 'package:flutter/material.dart';

class PaginaDos extends StatelessWidget {
  const PaginaDos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5DC),
      appBar: AppBar(
        title: const Text('Productos Lácteos', style: TextStyle(color: Color(0xFF00008B))),
        backgroundColor: const Color(0xFFD2B48C),
        iconTheme: const IconThemeData(color: Color(0xFF00008B)),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // PRODUCTO FUNCIONAL: LECHE
          _crearTarjetaProducto(
            context, 
            "Leche Entera LALA", 
            "https://raw.githubusercontent.com/LiraRodriguezMaximiliano/imagenes-para-flutter-6I-11-02-26/refs/heads/main/L1.png", 
            "\$25.50", 
            true
          ),
          // PRODUCTOS NO FUNCIONALES
          _crearTarjetaProducto(
            context, 
            "Yogurt Lala Fresa", 
            "https://raw.githubusercontent.com/LiraRodriguezMaximiliano/imagenes-para-flutter-6I-11-02-26/refs/heads/main/Yogurt.png", 
            "\$18.00", 
            false
          ),
          _crearTarjetaProducto(
            context, 
            "Queso Panela Lala", 
            "https://raw.githubusercontent.com/LiraRodriguezMaximiliano/imagenes-para-flutter-6I-11-02-26/refs/heads/main/Queso.png", 
            "\$65.00", 
            false
          ),
        ],
      ),
    );
  }

  Widget _crearTarjetaProducto(BuildContext context, String nombre, String url, String precio, bool esFuncional) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.only(bottom: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(nombre, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF00008B))),
            const SizedBox(height: 10),
            Image.network(url, height: 200, fit: BoxFit.contain),
            const SizedBox(height: 10),
            Text(precio, style: const TextStyle(fontSize: 18, color: Colors.green, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: esFuncional ? const Color(0xFF00008B) : Colors.grey,
                foregroundColor: Colors.white,
              ),
              onPressed: esFuncional ? () => Navigator.pushNamed(context, '/detalle') : null,
              child: Text(esFuncional ? 'Ver producto' : 'Agotado'),
            ),
          ],
        ),
      ),
    );
  }
}