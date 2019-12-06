import 'package:flutter/material.dart';


class TagManagement {
  int indexList;
  int numElem;
  List tags;


  TagManagement(int size, List tags) {
    this.numElem = size;
    this.tags = tags;
    this.indexList = 0;
  }

  incIndex() {
    this.indexList++;
  }

  getIndex() {
    return indexList;
  }

  getElem() {
    return numElem;
  }

  reduceElem() {
    this.numElem--;
  }

  display() {


  }
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //ACEDER À BASE DE DADOS EM CADA UMA DAS SEGUINTES
    final String _Name = "Test Name";
    final String _Email = "Test Email";
    final String _Phone = "Test Phone";
    final List _Tags = ["Tag1", "Tag2", "Tag3", "Tag4"];
    final int _Points = 10;

    TagManagement tagControl = TagManagement(_Tags.length, _Tags);
    return Scaffold(

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(


            children: <Widget>[

              Container(
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      height: 70,
                    ),
                  ],
                ),
              ),

              Container(
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 20,
                      height: 2,
                    ),
                    new Text(
                      "My Profile",
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),

              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 150,
                      height: 150,
                      child: FittedBox(
                        child: Image.asset('docs/user.jpg'),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),

              Container(
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 25,
                      height: 2,
                    ),

                    new Text(
                      "Name",
                      style: TextStyle(
                        fontSize: 17.0,
                        color: Colors.black87,
                      ),
                    ),

                    SizedBox(
                      width: 30,
                      height: 2,
                    ),

                    Container(
                      color: Colors.blueGrey,
                      padding: EdgeInsets.symmetric(vertical:10.0, horizontal: 105),
                      child: Column(
                        children: <Widget>[
                          Text(
                            //INSERIR DA BASE DE DADOS
                            _Name,
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black87,

                            ),
                          ),
                        ],
                      ),
                    ),




                  ],
                ),

              ),

              SizedBox(
                width: 10,
                height: 20,
              ),

              Container(
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 25,
                      height: 2,
                    ),

                    new Text(
                      "Email",
                      style: TextStyle(
                        fontSize: 17.0,
                        color: Colors.black87,
                      ),
                    ),

                    SizedBox(
                      width: 33,
                      height: 2,
                    ),

                    Container(
                      color: Colors.blueGrey,
                      padding: EdgeInsets.symmetric(vertical:10.0, horizontal: 106.5),
                      child: Column(
                        children: <Widget>[
                          Text(
                            //INSERIR DA BASE DE DADOS
                            _Email,
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black87,

                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),

              SizedBox(
                width: 10,
                height: 20,
              ),


              Container(
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 25,
                      height: 2,
                    ),

                    new Text(
                      "Phone",
                      style: TextStyle(
                        fontSize: 17.0,
                        color: Colors.black87,
                      ),
                    ),

                    SizedBox(
                      width: 27,
                      height: 2,
                    ),

                    Container(
                      color: Colors.blueGrey,
                      padding: EdgeInsets.symmetric(vertical:10.0, horizontal: 104),
                      child: Column(
                        children: <Widget>[
                          Text(
                            //INSERIR DA BASE DE DADOS
                            _Phone,
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black87,

                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),

              SizedBox(
                width: 10,
                height: 20,
              ),

              Container(
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 25,
                      height: 2,
                    ),

                    new Text(
                      "Tags",
                      style: TextStyle(
                        fontSize: 17.0,
                        color: Colors.black87,
                      ),
                    ),

                    SizedBox(
                      width: 38,
                      height: 2,
                    ),
/*
                    tagControl.getElem() >= 3
                        ? Container(
                      child: Row(
                        children: <Widget>[
                          Container(
                            color: Colors.blueGrey,
                            padding: EdgeInsets.symmetric(vertical:10.0, horizontal: 28),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  //INSERIR DA BASE DE DADOS
                                  _Tags.elementAt(tagControl.getIndex()),
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.black87,

                                  ),
                                ),


                              ],

                            ),

                          ),


                          SizedBox(
                            width: 5,
                            height: 2,
                          ),

                          Container(
                            color: Colors.blueGrey,
                            padding: EdgeInsets.symmetric(vertical:10.0, horizontal: 28),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  //INSERIR DA BASE DE DADOS
                                  _Tags.elementAt(tagControl.getIndex()),
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.black87,

                                  ),
                                ),
                                //tagControl.incIndex(),
                                //tagControl.reduceElem(),


                              ],
                            ),
                          ),

                          SizedBox(
                            width: 5,
                            height: 2,
                          ),

                          Container(
                            color: Colors.blueGrey,
                            padding: EdgeInsets.symmetric(vertical:10.0, horizontal: 28),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  //INSERIR DA BASE DE DADOS
                                  _Tags.elementAt(tagControl.getIndex()),
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.black87,

                                  ),
                                ),
                                //tagControl.incIndex(),
                                //tagControl.reduceElem(),

                              ],
                            ),
                          ),



                        ],
                      ),
                    )

                        : tagControl.getElem() == 2
                        ? Container(
                      child: Row(
                        children: <Widget>[
                          Container(
                            color: Colors.blueGrey,
                            padding: EdgeInsets.symmetric(vertical:10.0, horizontal: 28),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  //INSERIR DA BASE DE DADOS
                                  _Tags.elementAt(tagControl.getIndex()),
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.black87,

                                  ),
                                ),
                                //tagControl.incIndex(),
                                //tagControl.reduceElem(),

                              ],
                            ),
                          ),

                          SizedBox(
                            width: 5,
                            height: 2,
                          ),

                          Container(
                            color: Colors.blueGrey,
                            padding: EdgeInsets.symmetric(vertical:10.0, horizontal: 28),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  //INSERIR DA BASE DE DADOS
                                  _Tags.elementAt(tagControl.getIndex()),
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.black87,

                                  ),
                                ),
                                //tagControl.incIndex(),
                                //tagControl.reduceElem(),

                              ],
                            ),
                          )
                        ],
                      ),

                    )



                        : Container(
                      child: Row(
                        children: <Widget>[
                          Container(
                            color: Colors.blueGrey,
                            padding: EdgeInsets.symmetric(vertical:10.0, horizontal: 28),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  //INSERIR DA BASE DE DADOS
                                  _Tags.elementAt(tagControl.getIndex()),
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.black87,

                                  ),
                                ),
                                //tagControl.incIndex(),
                                //tagControl.reduceElem(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

*/
                    Expanded(
                      child: Container(
                        height: 200,
                        
                        child: GridView.count(
                          crossAxisCount: 3,
                          children: _Tags.map((value) {
                            return Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),),
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ),


                  ],
                ),
              ),

              SizedBox(
                width: 10,
                height: 40,
              ),

              Container(
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 20,
                      height: 2,
                    ),
                    new Text(
                      "My Points",
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),

              Container(
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 25,
                      height: 2,
                    ),

                    Text(
                      //INSERIR DA BASE DE DADOS
                      "You have " + _Points.toString() + " points!",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black87,

                      ),
                    ),

                    SizedBox(
                      width: 7,
                      height: 2,
                    ),

                    RaisedButton(
                      color: Colors.yellowAccent,
                      textColor: Colors.white,
                      disabledColor: Color(0xfffaf2cc),
                      //disabledTextColor: Color(0xffff8c1a),
                      disabledTextColor: Color(0xff987d4d),
                      padding: EdgeInsets.all(8.0),
                      splashColor: Colors.blueAccent,

                      //onPressed: (),

                      child: Text(
                        "Manage them!",
                        style: TextStyle(fontSize: 15.0),
                      ),

                    ),





                  ],
                ),
              ),

              SizedBox(
                height: 25,
              ),


              Container(
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width:  40,
                    ),

                ButtonTheme(
                  minWidth: 20,
                  height: 40,

                    child: RaisedButton(
                      color: Colors.yellowAccent,
                      textColor: Colors.white,
                      disabledColor: Color(0xffebcccc),
                      disabledTextColor: Color(0xffa94442),
                      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
                      splashColor: Colors.blueAccent,

                      //onPressed: (),

                      child: Text(
                        "Delete my account",
                        style: TextStyle(fontSize: 15.0),
                      ),

                    ),
                ),

                    SizedBox(
                      height: 2,
                      width: 40,
                    ),


                    ButtonTheme(
                      minWidth: 20,
                      height: 40,

                      child:  RaisedButton(
                        color: Colors.yellowAccent,
                        textColor: Colors.white,
                        disabledColor: Color(0xfffaf2cc),
                        disabledTextColor: Color(0xff987d4d),
                        splashColor: Colors.blueAccent,

                        //onPressed: (),

                        child: Text(
                          "Edit my profile",
                          style: TextStyle(fontSize: 15.0),
                        ),
                      ),

                    )

                  ],
                ),
              ),

              SizedBox(
                height: 20,
              ),










            ],
          ),

        ),

      ),

    );
  }

}