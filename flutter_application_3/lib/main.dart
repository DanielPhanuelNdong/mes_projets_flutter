import 'package:flutter/material.dart';
//import 'package:flutter_neumorphic/flutter_neumorphic.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final formKey = GlobalKey<FormState>(); //key for form
  String name="";
  @override
  Widget build(BuildContext context) {
    final double height= MediaQuery.of(context).size.height;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return  Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: const Color(0xFFffffff),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: Form(
              key: formKey, //key for form
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height:height*0.04),
                  const Text("Here to Get", style: TextStyle(fontSize: 30, color:Color(0xFF363f93)),),
                  const Text("Welcomed !", style: TextStyle(fontSize: 30, color:Color(0xFF363f93)),),
                  SizedBox(height: height*.05,),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Enter your name',
                    ),
                    validator: (value){
                      if(value!.isEmpty || !RegExp(r'^[a-z A-Z]+$').hasMatch(value)){
                        return 'Enter correct name';
                      }else{
                        return null;
                      }
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Enter your number',
                    ),
                    validator: (value){
                      if(value!.isEmpty || !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\S\./0-9]+$').hasMatch(value)){
                        return 'Enter correct number';
                      }else{
                        return null;
                      }
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Enter your email',
                    ),
                    validator: (value){
                      if(value!.isEmpty || !RegExp(r'^[\w-\.]+@([\w-]+\.)[\w-]{2,4}$').hasMatch(value)){
                        return 'Enter correct email';
                      }else{
                        return null;
                      }
                    },
                  ),
                  SizedBox(height: height*.05,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Sign Up', style: TextStyle(fontSize: 22, color: Colors.blue),),
                      GestureDetector(
                        onTap: () {
                          if(formKey.currentState!.validate()){
                            //final Snackbar = SnackBar(content: Text('Submitting Form'));
                            //_scaffoldKey.currentState!.showSnackBar(Snackbar);
                          }
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(Icons.arrow_right, size: 55, color: Colors.white,),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        )
    );
  }


}