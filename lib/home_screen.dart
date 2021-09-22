import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color mainColor = const Color(0xFF6D7FFE);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        toolbarHeight: 0,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue[700],
        selectedFontSize: 13,
        unselectedFontSize: 13,
        iconSize: 30,
        currentIndex: 3,
        selectedIconTheme: IconThemeData(color: mainColor),
        selectedLabelStyle: TextStyle(color: mainColor),
        items: const [
          BottomNavigationBarItem(
            label: "Explorar",
            icon: Icon(Icons.home_outlined),
          ),
          BottomNavigationBarItem(
              label: "Cerca a mi",
              icon: Icon(
                Icons.map_outlined,
              )),
          BottomNavigationBarItem(
            label: "Carrito",
            icon: Icon(Icons.shopping_cart_outlined),
          ),
          BottomNavigationBarItem(
            label: "Perfil",
            icon: Icon(Icons.account_circle_outlined),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 100),
                  decoration: BoxDecoration(
                    color: mainColor,
                    // boxShadow: [BoxShadow(blurRadius: 40.0)],
                    borderRadius: BorderRadius.vertical(
                        bottom: Radius.elliptical(
                            MediaQuery.of(context).size.width - 20, 80.0)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      bottom: 100,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                            child: MaterialButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Icon(Icons.exit_to_app, color: Colors.white),
                              Text(
                                ' Cerrar Sesión',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        )),
                        Expanded(
                            child: MaterialButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Icon(Icons.edit, color: Colors.white),
                              Text(
                                'Editar',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        )),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: (MediaQuery.of(context).size.width / 2 - 60),
                  top: 100,
                  child: CircleAvatar(
                    maxRadius: 60,
                    child: Image.asset('assets/images/avatar-6.png'),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                    'Nombre completo',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    'Nicolás Rojas Niño',
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                    'Correo electrónico',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    'nicolas@imagineapps.co',
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                    'Celular',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    '3225401166',
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Términos y condiciones'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Color(0xFFCAD0EA),
                child: Row(children: [
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Mi lista de deseos',
                        overflow: TextOverflow.clip,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                        child: Image.asset('assets/images/profile-orders.png'),
                        width: 100),
                  )
                ]),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Color(0xFFCAD0EA),
                child: Row(children: [
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Mi métodos de pago',
                        overflow: TextOverflow.clip,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                        child: Image.asset(
                            'assets/images/profile-payment-methods.png'),
                        width: 100),
                  )
                ]),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
