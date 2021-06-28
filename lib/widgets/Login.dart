import 'package:flutter/material.dart';
import 'package:flutter/src/material/text_form_field.dart';

class Login extends StatefulWidget {
  @override
  LoginState createState() {
    return LoginState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class LoginState extends State<Login> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return new Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      backgroundColor: Colors.brown[300],
        body:Center(

           // margin: new EdgeInsets.all(60.0),
            //alignment: Alignment.centerRight,
          child:Container(
              margin: new EdgeInsets.all(60.0),
            //color: Colors.purple,
            width: 500,
            height: 500,
              decoration: new BoxDecoration(

                  color: Colors.brown[400],

                  borderRadius: new BorderRadius.all(new Radius.circular(25.7))
              ),

              child:Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Usuario',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30,),),
          TextFormField(
            maxLength: 30,
            style: TextStyle(fontSize: 20,color: Colors.black.withOpacity(0.6),fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,),
            textAlign: TextAlign.center,

            // The validator receives the tex that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          Text('Contraseña',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30,),),
          TextFormField(
            maxLength: 30,
            style: TextStyle(fontSize: 20,color: Colors.black.withOpacity(0.6),fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,),
            textAlign: TextAlign.center,

            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50.0),
            child: ElevatedButton(
              onPressed: () {
                // Validate returns true if the form is valid, or false otherwise.
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.

                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text('Processing Data')));
                  //Navigator.of(context).pushNamed('/menuPrincipal');
                  Navigator.of(context).pushNamed('/pantalla');

                  //Navigator.of(context).pushNamed('/screen');
                }
              },
              child: Text('Submit',style: TextStyle(fontSize: 20,),)
            ),
          ),
        ],
      ),
    )
    )
        ),
    );
  }
}