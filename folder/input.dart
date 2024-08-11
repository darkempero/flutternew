 import 'package:flutter/material.dart';
 import 'package:http/http.dart' as http;
 import 'dart:convert';

class loading_screen extends StatefulWidget {
  const loading_screen({super.key});

  @override
  State<loading_screen> createState() => _loading_screenState();
}

class _loading_screenState extends State<loading_screen> {
  final phoneno= TextEditingController();

  void datainput(String phone) async{
    
    try{
     final response = await http.post(
        Uri.parse('http://devapiv4.dealsdray.com/api/v2/user/otp'), // Replace with your API endpoint
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'phoneNumber': phone}), // Send phone number in request body
      );

    if (response.statusCode==200){
      final Map<String, dynamic> data = jsonDecode(response.body);
      if (data['mobileNumber']==phone){
        Navigator.pushNamed(context,'/verification');

      }
      
    }
      else{
        Navigator.pushNamed(context,'/create');
      
      
    }

    }catch(e){
      print(e.toString());
      
      
    }
    

  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: 
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Image(
              image: AssetImage('lib/assets/load.jpeg'),
              width: 200,height: 200,
            ),
            margin: EdgeInsets.fromLTRB(100,1,0,0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center, 
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red, 
                      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                    ),
                    child: const Text(
                      'Phone',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey, 
                      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                    ),
                    child: const Text(
                      'Email',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
            ]
          ),
          const SizedBox(height: 28),
          

          
          Text("Glad to see you!",
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
            wordSpacing: 1,
            )
          ),
          const SizedBox(height: 10),
          Text("Please provide your phone number",
          style: TextStyle(
            color: Colors.grey,
            letterSpacing: 2,
            wordSpacing: 2,
          ),),
          const SizedBox(height: 45),
          TextField(
            controller: phoneno,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              label:Text("phone"),
              

            ),
            
          ),
          const SizedBox(height: 28),
          Center(child: ElevatedButton(
            onPressed: (){
              if (phoneno.text.length==10){
                Navigator.pushNamed(context,'/verification');
                datainput(phoneno.text.toString());
                
                

              }
              else{
                Text("enter 10 digit");
              }
              
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFF2CBCB),
              padding: EdgeInsets.symmetric(horizontal: 168,vertical: 30),
              textStyle: TextStyle(fontSize: 16),
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0), // Rounded corners
    ),

            ),
            child: Text("send code",
            style: TextStyle(
              color: Colors.white
            ),),
          ),)

        ],
      ),
      
    );
  }
}