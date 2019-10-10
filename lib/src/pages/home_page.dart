import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final fontSize = TextStyle(fontSize: 23, fontWeight: FontWeight.bold);
  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );
  int bottomSelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Hero(tag: 'appBar', child: Text('CostosApp')),
            Expanded(
              child: Container(),
            ),
            Icon(Icons.search),
          ],
        ),
        backgroundColor: Colors.indigoAccent,
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: (index) {
          pageChanged(index);
        },
        children: <Widget>[
          _listView(context),
          _listView2(context),
          _listView3(context),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.indigoAccent,
        unselectedItemColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(MaterialCommunityIcons.chef_hat),
            title: Text('Platos'),
          ),
          BottomNavigationBarItem(
            icon: Icon(MaterialCommunityIcons.food_variant),
            title: Text('Productos'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('Cuenta'),
          ),
        ],
        currentIndex: bottomSelectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: (index) {
          bottomTapped(index);
      },
      ),
    );
  }

  void bottomTapped(int index) {
    setState(() {
      bottomSelectedIndex = index;
      pageController.animateToPage(index,
          duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  void pageChanged(int index) {
    setState(() {
      bottomSelectedIndex = index;
    });
  }

  Widget _listView(context) {
    return Scaffold(
      floatingActionButton: _fab1(context),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: <Widget>[
          _card1(context),
          SizedBox(
            height: 10,
          ),
          _card2(context),
          SizedBox(
            height: 10,
          ),
          _card3(),
          SizedBox(
            height: 10,
          ),
          _card4(),
          SizedBox(
            height: 10,
          ),
          _card5(),
        ],
      ),
    );
  }

  Widget _fab1(context) {
    return FloatingActionButton(
      backgroundColor: Colors.indigo,
      child: Icon(Icons.add),
      onPressed: () => Navigator.pushReplacementNamed(context, 'crearPlato'),
    );
  }

  Widget _listView2(context) {
    return Scaffold(
      floatingActionButton: _fab(context),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: <Widget>[
          _producto6(context),
          SizedBox(
            height: 10,
          ),
          _producto7(context),
          SizedBox(
            height: 10,
          ),
          _producto3(context),
          SizedBox(
            height: 10,
          ),
          _producto4(context),
          SizedBox(
            height: 10,
          ),
          _producto5(context),
          SizedBox(
            height: 10,
          ),
          _producto1(context),
          SizedBox(
            height: 10,
          ),
          _producto2(context),
          SizedBox(
            height: 10,
          ),
          _producto8(context),
        ],
      ),
    );
  }

  Widget _fab(context) {
    return FloatingActionButton(
        backgroundColor: Colors.indigo,
        child: Icon(Icons.add),
        onPressed: () {
          showDialog(
            context: context,
            barrierDismissible: true,
            builder: (context) {
              return AlertDialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                title: Text('Agregando un Producto nuevo'),
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
                    TextField(
                      //autofocus: true,
                      textCapitalization: TextCapitalization.sentences,

                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        hintText: 'Precio',
                        labelText: 'Precio',
                      ),
                      onChanged: (valor) {},
                    ),
                    MaterialButton(
                      color: Colors.indigo,
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.image, color: Colors.white),
                          Expanded(child: Container()),
                          Text('Cargar Imagen',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20)),
                          SizedBox(
                            width: 15,
                          )
                        ],
                      ),
                      onPressed: () {},
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
        });
  }

  Widget _listView3(context) {
    return ListView(
      children: <Widget>[
        Card(
            child: ListTile(
          leading: Icon(Icons.mail),
          title: Text('Ejemplo@gmail.com'),
        )),
        Card(
            child: ListTile(
          leading: Icon(Icons.arrow_forward_ios),
          title: Text('Cerrar Sesión'),
        ))
      ],
    );
  }

  Widget _producto1(context) {
    final card = Container(
        child: Stack(
      children: <Widget>[
        Container(height: 120, child: Image.asset('assets/acelga.jpg')),
        Positioned(
          left: 200,
          top: 30,
          child: Container(
              width: 100,
              height: 80,
              child: Text(
                'Acelga',
                style: fontSize,
                maxLines: 2,
              )),
        ),
        Positioned(
          left: 200,
          bottom: 10,
          child: Container(
              child: Text(
            '\$150 x Kg',
            style: TextStyle(
                fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold),
          )),
        ),
      ],
    ));
    return InkWell(
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10.0,
                    spreadRadius: 2.0,
                    offset: Offset(2.0, 10.0))
              ]),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: card,
          ),
        ),
        onTap: () {});
  }

  Widget _producto2(context) {
    final card = Container(
        child: Stack(
      children: <Widget>[
        Container(
            padding: EdgeInsets.only(left: 20),
            height: 120,
            child: Image.asset('assets/lechuga.jpg')),
        Positioned(
          left: 200,
          top: 30,
          child: Container(
              width: 100,
              height: 80,
              child: Text(
                'Lechuga',
                style: fontSize,
                maxLines: 2,
              )),
        ),
        Positioned(
          left: 200,
          bottom: 10,
          child: Container(
              child: Text(
            '\$130 x Kg',
            style: TextStyle(
                fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold),
          )),
        ),
      ],
    ));
    return InkWell(
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10.0,
                    spreadRadius: 2.0,
                    offset: Offset(2.0, 10.0))
              ]),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: card,
          ),
        ),
        onTap: () {});
  }

  Widget _producto3(context) {
    final card = Container(
        child: Stack(
      children: <Widget>[
        Container(
            padding: EdgeInsets.only(left: 20),
            height: 120,
            child: Image.asset('assets/papas.jpg')),
        Positioned(
          left: 200,
          top: 30,
          child: Container(
              width: 100,
              height: 80,
              child: Text(
                'Papa',
                style: fontSize,
                maxLines: 2,
              )),
        ),
        Positioned(
          left: 200,
          bottom: 10,
          child: Container(
              child: Text(
            '\$40 x Kg',
            style: TextStyle(
                fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold),
          )),
        ),
      ],
    ));
    return InkWell(
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10.0,
                    spreadRadius: 2.0,
                    offset: Offset(2.0, 10.0))
              ]),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: card,
          ),
        ),
        onTap: () {});
  }

  Widget _producto4(context) {
    final card = Container(
        child: Stack(
      children: <Widget>[
        Container(
            padding: EdgeInsets.only(left: 20),
            height: 120,
            child: Image.asset('assets/cebolla.jpg')),
        Positioned(
          left: 200,
          top: 30,
          child: Container(
              width: 100,
              height: 80,
              child: Text(
                'Cebolla',
                style: fontSize,
                maxLines: 2,
              )),
        ),
        Positioned(
          left: 200,
          bottom: 10,
          child: Container(
              child: Text(
            '\$40 x Kg',
            style: TextStyle(
                fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold),
          )),
        ),
      ],
    ));
    return InkWell(
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10.0,
                    spreadRadius: 2.0,
                    offset: Offset(2.0, 10.0))
              ]),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: card,
          ),
        ),
        onTap: () {});
  }

  Widget _producto5(context) {
    final card = Container(
        child: Stack(
      children: <Widget>[
        Container(
            padding: EdgeInsets.only(left: 20),
            height: 120,
            child: Image.asset('assets/batata.jpg')),
        Positioned(
          left: 200,
          top: 30,
          child: Container(
              width: 100,
              height: 80,
              child: Text(
                'Batata',
                style: fontSize,
                maxLines: 2,
              )),
        ),
        Positioned(
          left: 200,
          bottom: 10,
          child: Container(
              child: Text(
            '\$60 x Kg',
            style: TextStyle(
                fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold),
          )),
        ),
      ],
    ));
    return InkWell(
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10.0,
                    spreadRadius: 2.0,
                    offset: Offset(2.0, 10.0))
              ]),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: card,
          ),
        ),
        onTap: () {});
  }


   Widget _producto6(context) {
    final card = Container(
        child: Stack(
      children: <Widget>[
        Container(height: 120, child: Image.asset('assets/medallon_carne.jpg')),
        Positioned(
          left: 200,
          top: 30,
          child: Container(
              width: 100,
              height: 80,
              child: Text(
                'Medallon de Carne',
                style: fontSize,
                maxLines: 2,
              )),
        ),
        Positioned(
          left: 200,
          bottom: 10,
          child: Container(
              child: Text(
            '\$280 x Kg',
            style: TextStyle(
                fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold),
          )),
        ),
      ],
    ));
    return InkWell(
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10.0,
                    spreadRadius: 2.0,
                    offset: Offset(2.0, 10.0))
              ]),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: card,
          ),
        ),
        onTap: () {});
  }


 Widget _producto7(context) {
    final card = Container(
        child: Stack(
      children: <Widget>[
        Container(height: 120, child: Image.asset('assets/cheddar.jpg')),
        Positioned(
          left: 200,
          top: 30,
          child: Container(
              width: 100,
              height: 80,
              child: Text(
                'Cheddar',
                style: fontSize,
                maxLines: 2,
              )),
        ),
        Positioned(
          left: 200,
          bottom: 10,
          child: Container(
              child: Text(
            '\$500 x Kg',
            style: TextStyle(
                fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold),
          )),
        ),
      ],
    ));
    return InkWell(
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10.0,
                    spreadRadius: 2.0,
                    offset: Offset(2.0, 10.0))
              ]),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: card,
          ),
        ),
        onTap: () {});
  }

 Widget _producto8(context) {
    final card = Container(
        child: Stack(
      children: <Widget>[
        Container(height: 120, child: Image.asset('assets/tomate.jpg')),
        Positioned(
          left: 200,
          top: 30,
          child: Container(
              width: 100,
              height: 80,
              child: Text(
                'Acelga',
                style: fontSize,
                maxLines: 2,
              )),
        ),
        Positioned(
          left: 200,
          bottom: 10,
          child: Container(
              child: Text(
            '\$150 x Kg',
            style: TextStyle(
                fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold),
          )),
        ),
      ],
    ));
    return InkWell(
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10.0,
                    spreadRadius: 2.0,
                    offset: Offset(2.0, 10.0))
              ]),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: card,
          ),
        ),
        onTap: () {});
  }

  Widget _card1(context) {
    final card = Container(
      child: Row(
        children: <Widget>[
          Container(
              height: 120,
              child: Hero(
                  tag: 'pechuga', child: Image.asset('assets/pechuga.jpg'))),
          SizedBox(
            width: 20,
          ),
          Column(
            children: <Widget>[
              Container(
                  width: 100,
                  height: 80,
                  child: Text(
                    'Pechuga al Gril',
                    style: fontSize,
                    maxLines: 2,
                  )),
              Container(
                  child: Text(
                'costo \$100',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
              )),
            ],
          )
        ],
      ),
    );
    return InkWell(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10.0,
                  spreadRadius: 2.0,
                  offset: Offset(2.0, 10.0))
            ]),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: card,
        ),
      ),
      onTap: () => Navigator.pushReplacementNamed(context, 'cordero'),
    );
  }

  Widget _card2(BuildContext context) {
    final card = Container(
      child: Row(
        children: <Widget>[
          Container(height: 120, child: Image.asset('assets/burger.jpg')),
          SizedBox(
            width: 20,
          ),
          Column(
            children: <Widget>[
              Container(
                  width: 100,
                  height: 80,
                  child: Text(
                    'Burger Completa',
                    style: fontSize,
                    maxLines: 3,
                  )),
              Container(
                  child: Text(
                'costo \$120',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
              )),
            ],
          )
        ],
      ),
    );
    return InkWell(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10.0,
                  spreadRadius: 2.0,
                  offset: Offset(2.0, 10.0))
            ]),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: card,
        ),
      ),
      onTap: () => Navigator.pushReplacementNamed(context, 'burger'),
    );
  }

  Widget _card3() {
    final card = Container(
      child: Row(
        children: <Widget>[
          Container(height: 120, child: Image.asset('assets/8267117_orig.jpg')),
          SizedBox(
            width: 20,
          ),
          Column(
            children: <Widget>[
              Container(
                  width: 100,
                  height: 80,
                  child: Text(
                    'Salmon Grillado',
                    style: fontSize,
                    maxLines: 2,
                  )),
              Container(
                  child: Text(
                'costo \$200',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
              )),
            ],
          )
        ],
      ),
    );
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                spreadRadius: 2.0,
                offset: Offset(2.0, 10.0))
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: card,
      ),
    );
  }

  Widget _card4() {
    final card = Container(
      child: Row(
        children: <Widget>[
          Container(height: 120, child: Image.asset('assets/big.jpg')),
          SizedBox(
            width: 20,
          ),
          Column(
            children: <Widget>[
              Container(
                  width: 100,
                  height: 80,
                  child: Text(
                    'Sushi Bs.As',
                    style: fontSize,
                    maxLines: 2,
                  )),
              Container(
                  child: Text(
                'costo \$200',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
              )),
            ],
          )
        ],
      ),
    );
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                spreadRadius: 2.0,
                offset: Offset(2.0, 10.0))
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: card,
      ),
    );
  }

  Widget _card5() {
    final card = Container(
      child: Row(
        children: <Widget>[
          Container(height: 120, child: Image.asset('assets/images.jpg')),
          SizedBox(
            width: 20,
          ),
          Column(
            children: <Widget>[
              Container(
                  width: 100,
                  height: 80,
                  child: Text(
                    'Filet Merluza',
                    style: fontSize,
                    maxLines: 2,
                  )),
              Container(
                  child: Text(
                'costo \$130',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
              )),
            ],
          )
        ],
      ),
    );
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                spreadRadius: 2.0,
                offset: Offset(2.0, 10.0))
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: card,
      ),
    );
  }
}
