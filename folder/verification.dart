import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class code_screen extends StatefulWidget {
  const code_screen({super.key});

  @override
  State<code_screen> createState() => _code_screenState();
}

class _code_screenState extends State<code_screen> {

  Duration resend = const Duration(seconds: 120);
  late Timer countdown;
  String code="";
  TextEditingController a=TextEditingController();
  TextEditingController b=TextEditingController();
  TextEditingController c=TextEditingController();
  TextEditingController d=TextEditingController();
  void datainput() async{
    
    
    try{
     final response = await http.post(
        Uri.parse('http://devapiv4.dealsdray.com/api/v2/user/otp'), // Replace with your API endpoint
         // Send phone number in request body
      );

      if (response.statusCode==200){
      final Map<String, dynamic> data = jsonDecode(response.body);
      code=data['otp'];
      

      }
      
    
      
      
    

    }catch(e){
      print(e.toString());
      
      
    }
    

  }
  verify(){
    if(a.text*1000+b.text*100+c.text*100+d.text*100==code){
      Navigator.pushNamed(context,'/layout2');

    }
  }
  void OTP() {
    // Check if all OTP fields are filled
    if (a.text.isNotEmpty &&
        b.text.isNotEmpty &&
        c.text.isNotEmpty &&
        d.text.isNotEmpty) {
      verify();
    }
  }
  

  @override
    void initState() {
      starttimer();
      datainput();
      
      super.initState();
    }
    starttimer(){
      countdown= Timer.periodic(const Duration(seconds: 1), (timer){
        setState(() {
                  resend-=Duration(seconds:1);
                });
        if(resend.inSeconds<1){
          countdown.cancel();
        }
      });

    }
    stopTimer(){
      if(countdown.isActive){
        countdown.cancel();
      }
    }
    String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    String minutes = twoDigits(duration.inMinutes.remainder(60));
    String seconds = twoDigits(duration.inSeconds.remainder(60));
    return '$minutes:$seconds';
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 50),
          Image.asset('lib/assets/load2.jpeg', height: 100), // Replace with your OTP icon
          const SizedBox(height: 30),
          const Text(
            'OTP Verification',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(
            'We have sent a unique OTP number to your mobile +91-9765232817 /n your otp $code',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey,
            letterSpacing: 1,
            wordSpacing: 1),
          ),
          const SizedBox(height: 30),

          Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Evenly spaced boxes
                children: [
                  DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1.4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: SizedBox(
                    height: 50,
                    width: 50,
                    

                    child: TextField(
                      controller: a,
                      onChanged: (value){
                        if(value.length==1){
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      style: Theme.of(context).textTheme.titleLarge,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                  )
                      
                    ),
                  ),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1.4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: SizedBox(
                    height: 50,
                    width: 50,
                    

                    child: TextField(
                      controller: b,
                      onChanged: (value){
                        if(value.length==1){
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      style: Theme.of(context).textTheme.titleLarge,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                  )
                      
                    ),
                  ),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1.4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: SizedBox(
                    height: 50,
                    width: 50,
                    

                    child: TextField(
                      controller: c,
                      onChanged: (value){
                        if(value.length==1){
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      style: Theme.of(context).textTheme.titleLarge,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                  )
                      
                    ),
                  ),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1.4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: SizedBox(
                    height: 50,
                    width: 50,
                    

                    child: TextField(
                      controller: d,
                      onChanged: (value){
                        if(value.length==1){
                          FocusScope.of(context).nextFocus();
                          OTP();
                        }
                      },
                      style: Theme.of(context).textTheme.titleLarge,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                  )
                  
                      
                    ),
                  ),
                  
                ],
              ),
              const SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  resend!=0 ? Text( _formatDuration(resend),
            style: const TextStyle(fontSize: 20)): const SizedBox(),

                  GestureDetector(
                    onTap: (){
                     Navigator.pushNamed(context,'/create');
                     setState(() {
                      datainput();
                                          });

                  },
                    child: Text("SEND AGAIN",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      decoration: TextDecoration.underline,
                    ),),
                  )
                ],
              )
    ],
    ),
    
    );
  }
}
