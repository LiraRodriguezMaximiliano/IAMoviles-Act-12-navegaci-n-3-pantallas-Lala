import 'package:flutter/material.dart';
// IMPORTANTE: Asegúrate de que estos nombres coincidan con tus archivos

class PaginaUno extends StatelessWidget {
  const PaginaUno({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LALA', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.blue,
        centerTitle: true,
        // El icono del menú aparecerá automáticamente a la derecha por el endDrawer
      ),
      // Menú a la derecha
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('Menú LALA', style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
            ListTile(
              leading: const Icon(Icons.shopping_cart, color: Colors.blue),
              title: const Text('Productos Lácteos'),
              onTap: () {
                Navigator.pop(context); // Cierra el menú antes de navegar
                Navigator.pushNamed(context, '/productos');
              },
            ),
            const ListTile(leading: Icon(Icons.fastfood), title: Text('Productos No Lácteos')),
            const ListTile(leading: Icon(Icons.menu_book), title: Text('Recetas')),
            const ListTile(leading: Icon(Icons.rate_review), title: Text('Reseñas')),
            const ListTile(leading: Icon(Icons.shopping_basket), title: Text('Carrito')),
            const ListTile(leading: Icon(Icons.person), title: Text('Perfil')),
            const ListTile(leading: Icon(Icons.local_shipping), title: Text('Mis Pedidos')),
          ],
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Bienvenido a Lala',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.blue),
              ),
              const SizedBox(height: 20),
              Image.network(
                'https://raw.githubusercontent.com/LiraRodriguezMaximiliano/imagenes-para-flutter-6I-11-02-26/refs/heads/main/Chayanne.jpg',
                height: 180,
                errorBuilder: (context, error, stackTrace) => const Icon(Icons.image, size: 100),
              ),
              const SizedBox(height: 40),
              // BOTONES CUADRADOS
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Botón Iniciar Sesión (Azul)
                  Container(
                    width: 140,
                    height: 140,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: InkWell( // Usamos InkWell para que el cuadro sea cliqueable
                      onTap: () {}, 
                      child: const Center(
                        child: Text(
                          'Iniciar\nSesión',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  // Botón Registrarse (Rojo)
                  Container(
                    width: 140,
                    height: 140,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: InkWell(
                      onTap: () {},
                      child: const Center(
                        child: Text(
                          'Registrarse',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.red,
        child: const Center(
          child: Text(
            '© 2026 Maximiliano Lira',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}