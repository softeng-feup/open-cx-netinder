import 'package:NeTinder/TagDisplay.dart';
import 'package:NeTinder/addTag.dart';
import 'package:NeTinder/matches.dart';
import 'package:flutter/material.dart';
import 'package:NeTinder/ApiConnection.dart';

class Profile extends StatefulWidget {
  final UserAuth auth;

  const Profile({Key key, this.auth}) : super(key: key);

  @override
  State<StatefulWidget> createState() => ProfileState(auth);
}

class ProfileState extends State<Profile> {
  final UserAuth auth;
  Future<User> user;

  ProfileState(this.auth);

  @override
  void initState() {
    super.initState();

    user = ApiConnection.getUserInformation(auth);
  }

  @override
  Widget build(BuildContext context) {
    String _Phone = "Not Found";
    List _Tags = [];
    int _Points = 0;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff987d4d),
        title: Text("My Profile"),
      ),
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
                      width: 33,
                      height: 2,
                    ),

                    Container(
                      color: Colors.blueGrey,
                      width: 2 * MediaQuery.of(context).copyWith().size.width/3,
                      padding: EdgeInsets.symmetric(vertical:10.0, horizontal: 10),
                      child: Column(
                        children: <Widget>[
                          FutureBuilder<User>(
                            future: user,
                            builder: (context, snapshot) {
                              if (snapshot.hasData) {
                                return Text(
                                  snapshot.data.fullname,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.black87,
                                  ),
                                );
                              }
                              else if (snapshot.hasError) {
                                return Text(
                                  "Not Found",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.black87,
                                  ),
                                );
                              }
                              else {
                                return CircularProgressIndicator();
                              }
                            },
                          )
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
                      width: 2 * MediaQuery.of(context).copyWith().size.width/3,
                      padding: EdgeInsets.symmetric(vertical:10.0, horizontal: 10),
                      child: Column(
                        children: <Widget>[
                          FutureBuilder<User>(
                            future: user,
                            builder: (context, snapshot) {
                              if (snapshot.hasData) {
                                return Text(
                                  snapshot.data.email,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.black87,
                                  ),
                                );
                              }
                              else if (snapshot.hasError) {
                                return Text(
                                  "Not Found",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.black87,
                                  ),
                                );
                              }
                              else {
                                return CircularProgressIndicator();
                              }
                            },
                          )
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
                      width: 2 * MediaQuery.of(context).copyWith().size.width/3,
                      padding: EdgeInsets.symmetric(vertical:10.0, horizontal: 10),
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
                      width: 25,
                      height: 2,
                    ),

                    Expanded(
                      child: Container(
                        height: 200,
                        margin: EdgeInsets.all(0),
                        padding: EdgeInsets.all(0),

                        child: FutureBuilder<User> (
                          future: user,
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              if (snapshot.data.tags.length == 0) {
                                return Container(
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                  ),
                                  child: ButtonTheme(
                                    minWidth: 2 * MediaQuery.of(context).copyWith().size.width/3,
                                    child: RaisedButton (
                                      color: Color(0xfffaf2cc),
                                      textColor: Color(0xff987d4d),
                                      padding: EdgeInsets.all(8.0),
                                      splashColor: Colors.blueAccent,
                                      child: Text("Add tags!"),
                                      onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => AddTag()));
                                      },
                                ),
                                  ),
                                );
                              }
                              else {
                                return Container(
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                  ),
                                  child: TagDisplay(tags: snapshot.data.tags,),
                                );
                              }
                            }
                            else if (snapshot.hasError) {
                              return new Text("Could not get Tags!");
                            }
                            else {
                              return CircularProgressIndicator();
                            }
                          },
                        )
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

                    FutureBuilder<User>(
                      future: user,
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return RaisedButton(
                            color: Color(0xfffaf2cc),
                            textColor: Color(0xff987d4d),
                            disabledColor: Color(0xfffaf2cc),
                            //disabledTextColor: Color(0xffff8c1a),
                            disabledTextColor: Color(0xff987d4d),
                            padding: EdgeInsets.all(8.0),
                            splashColor: Colors.blueAccent,

                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => MatchPage(userId: snapshot.data.userID,)));
                            },
                            child: Text(
                              "Get Some!",
                              style: TextStyle(fontSize: 15.0),
                            ),
                          );
                        }
                        else {
                          return RaisedButton(
                            color: Color(0xfffaf2cc),
                            textColor: Color(0xff987d4d),
                            disabledColor: Colors.grey,
                            disabledTextColor: Colors.black,
                            padding: EdgeInsets.all(8.0),
                            splashColor: Colors.blueAccent,
                            child: Text(
                              "Get Some!",
                              style: TextStyle(fontSize: 15.0),
                            ),
                          );
                        }
                      },
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