import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
debugShowCheckedModeBanner: false,
  home: MyApp()
  ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 12,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('mParivahan',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            Text(
              'A step to virtualization',
              style: TextStyle(fontSize: 12),
            )
          ],
        ),
        actions: <Widget>[
          Icon(Icons.airport_shuttle),
          Padding(
            padding: EdgeInsets.all(5),
          ),
          Icon(Icons.notifications)
        ],
      ),
      drawer: Drawer(),
      body: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(scrollDirection: Axis.vertical,
      child: Column(
        children: <Widget>[
           //searchbar
          Container(
          
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                      Image.asset('assets/main.jpeg'),
                          Container(
                            height :50,
                        child: Card(   
                    child:Row(
                           children: <Widget>[
                             Container(
                              child:  Icon(Icons.message),),
                             Container(
                               child: 
                             Text('RC'),
                             padding: EdgeInsets.all(3),),
                           
                         Container(
                           
                           height:50,
                            width: 2,
                            color: Colors.black,

                         ),
                          Container(
                              child:  Icon(Icons.message),),
                             Container(
                               child: 
                             Text('DL'),
                             padding: EdgeInsets.all(3),),
                           
                         Container(
                           
                           height:50 ,
                            width: 2,
                            color: Colors.black,

                         ),
                         Expanded(
                           child: TextFormField(
                             decoration: InputDecoration(
                               hintText: 'Enter vehicle number to get details',
                               hintStyle: TextStyle(fontSize: 12)
                             ),
                           )
                         ),
                         Container(
                           height: 50,
                           color: Colors.blue,
                          child: Icon(Icons.search,color: Colors.white,),
                         )
                           ]
                    ),
                   ), 
                    
                          ),
          
              
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 200.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'mParivahan',
                            style: TextStyle(fontSize: 18),
                          ),
                          Text('Get RC/DL Details | Create Virtual RC/DL'),
                          RaisedButton(
                            onPressed: () {},
                            child: Text('Share Now'),
                            textColor: Colors.white,
                            color: Colors.blueAccent,
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  //second
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10),
                      ),
                      Text(
                        'mParivahan Services',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      Container(
                        height: 140.0,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Container(
                                    child: Card(
                                  child: Image.asset('t.jpg'),
                                )),
                                Text('Traffic Status')
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Container(
                                  child: Card(
                                    child: Image.asset('rto1.jpg'),
                                  ),
                                ),
                                Text('Nearest RTO')
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Container(
                                  child: Card(
                                    child: Image.asset('drive.jpg'),
                                  ),
                                ),
                                Text('DL Mock Test')
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.black12,
                  height: 5,
                ),
                Container(
                  //third
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.all(10)),
                      Text(
                        'RC Information',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      Container(
                        height: 150.0,
                        color: Colors.white,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(15),
                                  child: Card(
                                    child: Icon(Icons.message,
                                        color: Colors.blueAccent, size: 40),
                                  ),
                                ),
                                Text('Temporary \n Registration',
                                    textAlign: TextAlign.center),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(15),
                                  child: Card(
                                    child: Icon(Icons.language,
                                        color: Colors.blueAccent, size: 40),
                                  ),
                                ),
                                Text('Permanent \n Registration',
                                    textAlign: TextAlign.center),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(15),
                                  child: Card(
                                    child: Icon(Icons.contact_mail,
                                        color: Colors.blueAccent, size: 40),
                                  ),
                                ),
                                Text('Renewal of \n Registration',
                                    textAlign: TextAlign.center),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(15),
                                  child: Card(
                                    child: Icon(Icons.content_copy,
                                        color: Colors.blueAccent, size: 40),
                                  ),
                                ),
                                Text('Duplicate \n RC',
                                    textAlign: TextAlign.center),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(15),
                                  child: Card(
                                    child: Icon(Icons.content_copy,
                                        color: Colors.blueAccent, size: 40),
                                  ),
                                ),
                                Text('No Objection \n Certificate',
                                    textAlign: TextAlign.center),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(15),
                                  child: Card(
                                    child: Icon(Icons.group,
                                        color: Colors.blueAccent, size: 40),
                                  ),
                                ),
                                Text('HP \n Endorsement',
                                    textAlign: TextAlign.center),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(15),
                                  child: Card(
                                    child: Icon(Icons.event_busy,
                                        color: Colors.blueAccent, size: 40),
                                  ),
                                ),
                                Text('HP \n Termination',
                                    textAlign: TextAlign.center),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(15),
                                  child: Card(
                                    child: Icon(Icons.description,
                                        color: Colors.blueAccent, size: 40),
                                  ),
                                ),
                                Text('Address \n Change',
                                    textAlign: TextAlign.center),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(15),
                                  child: Card(
                                    child: Icon(Icons.content_copy,
                                        color: Colors.blueAccent, size: 40),
                                  ),
                                ),
                                Text('Reassignment \n Of Vehicle',
                                    textAlign: TextAlign.center),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(15),
                                  child: Card(
                                    child: Icon(Icons.content_copy,
                                        color: Colors.blueAccent, size: 40),
                                  ),
                                ),
                                Text('Trade \n Certificate',
                                    textAlign: TextAlign.center),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(15),
                                  child: Card(
                                    child: Icon(Icons.content_copy,
                                        color: Colors.blueAccent, size: 40),
                                  ),
                                ),
                                Text('Certificate \n Issues',
                                    textAlign: TextAlign.center),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(15),
                                  child: Card(
                                    child: Icon(Icons.receipt,
                                        color: Colors.blueAccent, size: 40),
                                  ),
                                ),
                                Text('Ownership \n Transfer',
                                    textAlign: TextAlign.center),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(15),
                                  child: Card(
                                    child: Icon(Icons.directions_car,
                                        color: Colors.blueAccent, size: 40),
                                  ),
                                ),
                                Text('Diplomatic \n Vehicles',
                                    textAlign: TextAlign.center),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(15),
                                  child: Card(
                                    child: Icon(Icons.content_copy,
                                        color: Colors.blueAccent, size: 40),
                                  ),
                                ),
                                Text('Registration \n Display',
                                    textAlign: TextAlign.center),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  color: Colors.black12,
                  height: 5,
                ),
                Container(
                  //third
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.all(10)),
                      Text(
                        'DL Information',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      Container(
                        height: 150.0,
                        color: Colors.white,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(15),
                                  child: Card(
                                    child: Icon(Icons.forum,
                                        color: Colors.blueAccent, size: 40),
                                  ),
                                ),
                                Text('Learner \n DL',
                                    textAlign: TextAlign.center),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(15),
                                  child: Card(
                                    child: Icon(Icons.message,
                                        color: Colors.blueAccent, size: 40),
                                  ),
                                ),
                                Text('Permanent \n DL',
                                    textAlign: TextAlign.center),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(15),
                                  child: Card(
                                    child: Icon(Icons.receipt,
                                        color: Colors.blueAccent, size: 40),
                                  ),
                                ),
                                Text('Renewable of \n DL',
                                    textAlign: TextAlign.center),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(15),
                                  child: Card(
                                    child: Icon(Icons.forum,
                                        color: Colors.blueAccent, size: 40),
                                  ),
                                ),
                                Text('Duplicate \n DL',
                                    textAlign: TextAlign.center),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(15),
                                  child: Card(
                                    child: Icon(Icons.message,
                                        color: Colors.blueAccent, size: 40),
                                  ),
                                ),
                                Text('Addition of \n Class',
                                    textAlign: TextAlign.center),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(15),
                                  child: Card(
                                    child: Icon(Icons.receipt,
                                        color: Colors.blueAccent, size: 40),
                                  ),
                                ),
                                Text('International \n Driving Permit',
                                    textAlign: TextAlign.center),
                              ],
                            ),
                             //whole body
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                      Container(
                 color: Colors.black12, 
                 height: 5,
                ),
                Container(
                  //second
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.all(10),),
                      Text(
                        'How to use',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      Container(
                        height: 140.0,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            children: <Widget>[
                          Column(
                        children: <Widget>[
                          Container(
                          child: Card(
                        child: Image.asset('t.jpg'),
                          )),
                          Text('Why mParivahan')
                        ],
                    ),
                    Column(
                        children: <Widget>[
                          Container(
                        child: Card(
                          child: Image.asset('rto1.jpg'),
                        ),
                          ),
                          Text('How to use')
                        ],
                    ), 
                    
                
              ],
            ),
          ),
        ],
      ),
                ),
                  Container(
                 color: Colors.black12, 
                 height: 5,),
                  Container(
                  child:Stack(children: <Widget>[
                  Image.asset('assets/gl.jpg'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                     children: <Widget>[
                       
                      Container(
                        padding: EdgeInsets.all(30),
                        child:Column(children: <Widget>[
                          Container(child: 
                    Icon(Icons.add_circle_outline,size: 60,color: Colors.red,)),
                    Container(child: Text('10 Golden Rules',
                    style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blue),
                    
                    ))
                    ],
                      ),)
                     ],
                  )
                  ],
                  )
                  )
                ]
                )
                )
                ]
                )
                );

              
    
  }
}
