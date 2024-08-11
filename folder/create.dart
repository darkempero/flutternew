import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class create_screen extends StatefulWidget {
  const create_screen({super.key});

  @override
  State<create_screen> createState() => _create_screenState();
}

class _create_screenState extends State<create_screen> {
  var isob;
  @override
  void initState(){
    super.initState;
    isob=true;
  }

  TextEditingController email=TextEditingController();
  TextEditingController pass=TextEditingController();
  TextEditingController ref=TextEditingController();

  datainput (String emails,String passw,String refe)async {
    Map<String, dynamic> requestBody = {
      "email": emails,
      "password": passw,
      "referralCode": refe,
      // "userId": "62a833766ec5dafd6780fc85"  // Remove userId, it's not needed
    };

    // 3. Create the request object
    var request = http.Request(
      'POST',
      Uri.parse('http://devapiv4.dealsdray.com/api/v2/user/email/referral'),
    );
    request.headers['Content-Type'] = 'application/json';
    request.body = jsonEncode(requestBody);
    http.StreamedResponse response = await request.send();
    try{
      
      if (response.statusCode==200){
        
        Navigator.pushNamed(context,'/verification');
      }
      
    } catch(e){
      print("error:$e");
    }

  }
  

  // void datainput(String email,pass,ref,)  async{
    
  //   try{
  //     http.Response response= await http.post(Uri.parse("http://devapiv4.dealsdray.com/api/v2/user/email/referral"),
  //   body:{
  //     "email":email,
  //     "password":pass,
  //     "referralCode":ref,
      

      
  //   },
    
    
  //   );
  //   if (response.statusCode==200){
  //     Navigator.pushNamed(context,'/layout2');
  //   }
  //   else{
      
      
  //   }

  //   }catch(e){
  //     print(e.toString());
      
      
  //   }
    

  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          
          const SizedBox(height: 7),
          

          
          Text("Let's Begin!",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
            wordSpacing: 1,
            )
          ),
          const SizedBox(height: 14),
          Text("Please enter your credential to proceed",
          style: TextStyle(
            color: Colors.grey,
            letterSpacing: 2,
            wordSpacing: 2,
          ),),
          const SizedBox(height: 35),
          TextField(
            controller: email,
            decoration: InputDecoration(
              label:Text("your Email",
              style: TextStyle(
                color: Colors.grey,
              ),),
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: pass,
            obscureText: isob,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                padding: EdgeInsetsDirectional.only(end: 12.0),
                icon: isob? Icon(Icons.visibility): Icon(Icons.visibility_off),
                onPressed: (){
                  setState(() {
                    isob=!isob;
                  });
                },


              ),
              label:Text("Create Password",
              style: TextStyle(
                color: Colors.grey,
              ),),
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            controller: ref,
            decoration: InputDecoration(
              label:Text("Referal code(optional)",
              style: TextStyle(
                color: Colors.grey,
              ),),
            ),
          ),
          


          Container(
            child: FloatingActionButton(
              onPressed: (){
                Navigator.pushNamed(context,'/layout2');
                
                datainput(email.text.toString(),pass.text.toString(),ref.text.toString());
                
                

              },
              child: Icon(Icons.arrow_forward,color: Colors.white,),
              backgroundColor: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              )
            ),
            margin: EdgeInsets.fromLTRB(350,100,1,1),
          )

        ],
      ),
      
    
    );
  }
}