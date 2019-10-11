import 'package:flutter/material.dart';

class CrearPlatoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigo,
        child: Icon(Icons.add, size: 30),
        onPressed: () {
          showDialog(
            context: context,
            barrierDismissible: true,
            builder: (context) {
              return AlertDialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                title: Text('Agregando un Ingrediente al Plato'),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    TextField(
                      //autofocus: true,
                      textCapitalization: TextCapitalization.sentences,

                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        hintText: 'Nombre del Producto',
                        labelText: 'Nombre del Producto',
                      ),
                      onChanged: (valor) {},
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextField(
                      //autofocus: true,
                      textCapitalization: TextCapitalization.sentences,

                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        hintText: 'Cantidad/Unidades',
                        labelText: 'Cantidad/Unidades',
                      ),
                      onChanged: (valor) {},
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
                actions: <Widget>[
                  FlatButton(
                    child: Text('Cancelar'),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  FlatButton(
                    child: Text('Agregar'),
                    onPressed: () {},
                  )
                ],
              );
            },
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.indigoAccent,
        child: Container(
          height: 50,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image.asset('assets/cocinero1.jpg'),
              SafeArea(
                child: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () =>
                      Navigator.pushReplacementNamed(context, 'home'),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            //autofocus: true,
            textCapitalization: TextCapitalization.sentences,

            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
              hintText: 'Nombre del Plato',
              labelText: 'Nombre del Plato',
            ),
            onChanged: (valor) {},
          ),
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
                  'Costo \$0',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      shadows: <Shadow>[
                        Shadow(offset: Offset(0.3, 0.3), color: Colors.black)
                      ]),
                ),
                SizedBox(width: 10)
              ],
            ),
          ),
          SizedBox(height: 40),
          Container(
            padding: EdgeInsets.only(top: 20),
            height: _screenSize.height * 0.3,
            child: PageView(
              controller: PageController(initialPage: 1, viewportFraction: 0.35),
              children: <Widget>[
                _fotoProducto3(),
                _fotoProducto3(),
                _fotoProducto3(),
              ],
            ),
          )
        ],
      ),
    );
  }

  // Widget _fotoProducto1() {
  //   return Container(
  //     margin: EdgeInsets.only(right: 15),
  //     child: Column(
  //       children: <Widget>[
  //         Image.asset('assets/pan_burger.jpg', height: 100),
  //         Text('Pan'),
  //         Text('x 100gr')
  //       ],
  //     ),
  //   );
  // }

  // Widget _fotoProducto2() {
  //   return Container(
  //     margin: EdgeInsets.only(right: 15),
  //     child: Column(
  //       children: <Widget>[
  //         Image.asset('assets/medallon_carne.jpg', height: 100),
  //         Text('carne'),
  //         Text('x 200gr')
  //       ],
  //     ),
  //   );
  // }

  Widget _fotoProducto3() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        margin: EdgeInsets.only(right: 3,left: 3),
          color: Colors.grey[200],
          child: Center(
              child: Icon(
            Icons.add,
          ))),
    );
  }
}
