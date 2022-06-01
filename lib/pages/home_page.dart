import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static final id = 'home_page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.black.withOpacity(0.8),
              Colors.black.withOpacity(0.6),
              Colors.black.withOpacity(0.5),
              Colors.black.withOpacity(0.3),
            ]
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(height: 40,),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("Sign Up",style: TextStyle(color: Colors.white,fontSize: 40),),
                  SizedBox(height: 10,),
                  Text("Welcome",style: TextStyle(color: Colors.white,fontSize: 20),),
                  SizedBox(height: 20,),
                ],
              ),
            ),

            // #expanded
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50)),
                  color: Colors.white,
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: [
                        SizedBox(height: 40,),
                        // #fullname #email #phone #password
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(171, 171, 171, 7),blurRadius: 20,offset: Offset(0,10)),
                            ],
                          ),

                          //#fullname #email #phone #password
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 10,top: 5,bottom: 5),
                                decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey.shade300))
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Fullname',
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none
                                  ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(left: 10,top: 5,bottom: 5),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey.shade300))
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: 'Email',
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                  ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(left: 10,top: 5,bottom: 5),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey.shade300))
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: 'Phone',
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                  ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(left: 10,top: 5,bottom: 5),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: 'Password',
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 30,),

                        // #signUp
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 55),
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.grey.shade700
                          ),
                          child: Center(
                            child: Text("SignUp",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                          ),
                        ),
                        SizedBox(height: 25,),

                        Text("Sign Up with SNS",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                        SizedBox(height: 25,),

                        // #facebook #google #apple
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 45,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.blue,
                                ),
                                child: Center(
                                  child: Text("Facebook",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                ),
                              ),
                            ),

                            SizedBox(width: 7,),

                            Expanded(
                              child: Container(
                                height: 45,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.red,
                                ),
                                child: Center(
                                  child: Text("Google",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                ),
                              ),
                            ),

                            SizedBox(width: 7,),

                            Expanded(
                              child: Container(
                                height: 45,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.black,
                                ),
                                child: Center(
                                  child: Text("Apple",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
