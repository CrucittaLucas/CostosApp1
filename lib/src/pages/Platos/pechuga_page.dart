import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class PechugaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.indigo,
          child: Icon(MaterialCommunityIcons.square_edit_outline, size: 30),
          onPressed: () {},
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.indigoAccent,
          child: Container(
            height: 50,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            Stack(children: <Widget>[
              Container(
                  height: 300,
                  child: Hero(
                    tag: 'pechuga',
                    child: Image.asset('assets/pechuga.jpg', fit: BoxFit.cover),
                  )),
              Positioned(
                bottom: 0,
                child: Container(
                  color: Colors.white54,
                  height: 100,
                  width: 380,
                ),
              ),
              SafeArea(
                  child: IconButton(
                color: Colors.white,
                icon: Icon(Icons.arrow_back),
                onPressed: () =>
                    Navigator.pushReplacementNamed(context, 'home'),
              )),
              Positioned(
                  left: 15,
                  bottom: 20,
                  child: Container(
                    width: 340,
                    child: Text(
                      'Pechuga al Grill c/Vegetales',
                      style: TextStyle(color: Colors.black, fontSize: 30,shadows: <Shadow>[
                        Shadow(
                          offset: Offset(1.5 , 1.5),
                          blurRadius: 1,
                          color: Colors.grey
                        )
                      ]),
                      maxLines: 2,
                    ),
                  )),
            ]),
            Container(
              color: Colors.grey[200],
              width: double.infinity,
              padding: EdgeInsets.only(left: 15, top: 10, bottom: 10),
              child: Row(
                children: <Widget>[
                  Text(
                    'Ingredientes',
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                  Expanded(child: Container()),
                  Text(
                    'Costo \$100',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        shadows: <Shadow>[
                          Shadow(
                              offset: Offset(0.3,0.3),
                              
                              color: Colors.black)
                        ]),
                  ),
                  SizedBox(width: 10)
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
              height: _screenSize.height * 0.3,
              child: PageView(
                controller:
                    PageController(initialPage: 1, viewportFraction: 0.3),
                children: <Widget>[
                  _fotoProducto1(),
                  _fotoProducto2(),
                  _fotoProducto3(),
                  _fotoProducto4(),
                  _fotoProducto5(),
                ],
              ),
            )
          ],
        ));
  }

  Widget _fotoProducto1() {
    return Container(
      margin: EdgeInsets.only(right: 15),
      child: Column(
        children: <Widget>[
          Image.asset('assets/pechuga_cruda.jpg', height: 100),
          Text('Cebolla'),
          Text('x 100gr')
        ],
      ),
    );
  }

  Widget _fotoProducto2() {
    return Container(
      margin: EdgeInsets.only(right: 15),
      child: Column(
        children: <Widget>[
          Image.asset('assets/perejil.jpg', height: 100),
          Text('Perejil'),
          Text('x 50gr')
        ],
      ),
    );
  }

  Widget _fotoProducto3() {
    return Container(
      margin: EdgeInsets.only(right: 15),
      child: Column(
        children: <Widget>[
          Image.asset('assets/tomate.jpg', height: 100),
          Text('Tomate'),
          Text('x 200gr')
        ],
      ),
    );
  }

  Widget _fotoProducto4() {
    return Container(
      margin: EdgeInsets.only(right: 15),
      child: Column(
        children: <Widget>[
          Image.asset('assets/calabaza.jpg', height: 100),
          Text('Calabaza'),
          Text('x 200gr')
        ],
      ),
    );
  }

  Widget _fotoProducto5() {
    return Container(
      margin: EdgeInsets.only(right: 15),
      child: Column(
        children: <Widget>[
          Image.asset('assets/batata.jpg', height: 100),
          Text('Batata'),
          Text('x 150gr')
        ],
      ),
    );
  }
}
