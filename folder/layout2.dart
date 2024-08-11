import 'package:flutter/material.dart';

class lay2_screen extends StatefulWidget {
  const lay2_screen({super.key});

  @override
  State<lay2_screen> createState() => _lay2_screenState();
}

class _lay2_screenState extends State<lay2_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,


        elevation: 6,
        shadowColor: Colors.grey,
        title: Container(
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color:Colors.grey[200],
          ),
          
          child: TextField(
            textAlignVertical: TextAlignVertical.center ,
            decoration: InputDecoration(
            hintText:"Search here",
            border:InputBorder.none,
            prefixIcon: Image.asset('lib/assets/load3.jpeg',height: 25,),
            suffixIcon: Icon(Icons.search),

          ),),
        ),
        leading: IconButton(icon:Icon(Icons.menu),
        onPressed: () {},),
        actions: [IconButton(icon:Icon(Icons.notification_add),
        onPressed: (){},)],
        
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 7,),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child:Row(children: [
                Container(
                  margin: EdgeInsets.all(10),
                  height: 260,
                  width:360,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child:
                  Image.asset('lib/assets/load4.jpeg'),
                  
                  
                ),
                const SizedBox(height: 5,),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 260,
                  width:360,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child:
                  Image.asset('lib/assets/load4.jpeg'),
                  ),
                  const SizedBox(height: 5,),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 260,
                  width:360,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child:
                  Image.asset('lib/assets/load4.jpeg'),
                  ),
              ],
              ),
            ),
            Container(
              width: 399,
              height: 160,
              
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color:Color.fromARGB(255, 87, 51, 157),

              ),
              child:Column(children: [
                Text("KYC Pending",style:TextStyle(
                  fontWeight: FontWeight.bold,
                  color:Colors.white,
                  fontSize: 25
                )),
                const SizedBox(height: 13,),
                Text("you need to provide the required",style:TextStyle(
                  
                  color:Colors.white,
                  
                )),
                Text("document for your account activation",style:TextStyle(
                  
                  color:Colors.white,
                  
                )),
                const SizedBox(height: 13,),
                Text("click here",style:TextStyle(
                  fontWeight: FontWeight.bold,
                  color:Colors.white,
                  fontSize: 25,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.white,
                )),

              ],),
            


            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(children: [
                  CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 20, 107, 179),
                    radius:30,
                    child: Icon(Icons.phone_android,size: 30, color: Colors.white)
                  ),
                  const SizedBox(height:8),
                  Text('Mobile'),
                ],),
                Column(children: [
                  CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 104, 215, 108),
                    radius:30,
                    child: Icon(Icons.laptop,size: 30, color: Colors.white)
                  ),
                  const SizedBox(height:8),
                  Text('Laptop'),
                ],),
                Column(children: [
                  CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 226, 21, 144),
                    radius:30,
                    child: Icon(Icons.camera_alt,size: 30, color: Colors.white)
                  ),
                  const SizedBox(height:8),
                  Text('Camera'),
                ],),
                Column(children: [
                  CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 242, 128, 21),
                    radius:30,
                    child: Icon(Icons.lightbulb_outline,size: 30, color: Colors.white)
                  ),
                  const SizedBox(height:8),
                  Text('LED'),
                ],),
              

            ],),
            SingleChildScrollView(
              child:Container(
                width:400,
                height:500,
                decoration:BoxDecoration(
                  color:Color.fromARGB(255, 31, 168, 170),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(27.0),
                          child: Text('EXCLUSIVE FOR YOU',style:TextStyle(
                            fontSize: 18,
                            
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
                        ),
                        Icon(Icons.arrow_forward,color: Colors.white,),
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child:Row(
                        children: [
                          Container(
                            width: 240,
                            height:390,
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child:Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Container(
                                
                                margin: EdgeInsets.fromLTRB(160,0,0,0),
                                width:80,
                                height: 20,
                                decoration:BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                  color: Colors.green,
                                

                                ),
                                child: Text('32% Off',style: TextStyle(
                                  color: Colors.white,
                                ),),
                              ),
                              Center(child: Image.asset('lib/assets/load5.jpeg')),
                              const SizedBox(height: 50,),
                              Text('₹'),
                              Text('Nokia 8.1(iron,64gb)'),

                            ],)

                          ),
                          Container(
                            width: 240,
                            height:390,
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child:Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Container(
                                
                                margin: EdgeInsets.fromLTRB(160,0,0,0),
                                width:80,
                                height: 20,
                                decoration:BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                  color: Colors.green,
                                

                                ),
                                child: Text('32% Off',style: TextStyle(
                                  color: Colors.white,
                                ),),
                              ),
                              Center(child: Image.asset('lib/assets/load5.jpeg')),
                              const SizedBox(height: 50,),
                              Text('₹'),
                              Text('Nokia 8.1(iron,64gb)'),

                            ],)

                          ),
                          Container(
                            width: 240,
                            height:390,
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child:Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Container(
                                
                                margin: EdgeInsets.fromLTRB(160,0,0,0),
                                width:80,
                                height: 20,
                                decoration:BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                  color: Colors.green,
                                

                                ),
                                child: Text('32% Off',style: TextStyle(
                                  color: Colors.white,
                                ),),
                              ),
                              Center(child: Image.asset('lib/assets/load5.jpeg')),
                              const SizedBox(height: 50,),
                              Text('₹'),
                              Text('Nokia 8.1(iron,64gb)'),

                            ],)

                          ),

                        ],
                      )
                    )
                  ],
                )

              ),
              
            ),

            BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.red,
              unselectedItemColor: Colors.grey,
              showUnselectedLabels: true,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.category),
                  label: 'Categories',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.local_offer),
                  label: 'Deals',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart),
                  label: 'Cart',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profile',
                ),
              ],
            ),
            
            


            
          ],
        ),
        
      ),
      floatingActionButton:SizedBox(
        width: 110,

        height: 40,
        child:FloatingActionButton(
        onPressed: (){},
        
        backgroundColor: Colors.red,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            
            
            Icon(Icons.chat,),
            Text('chat',style: TextStyle(
              color: Colors.white,
            ),),
            
          ],
        ),
      ),) 
      
      

       
    );
  }
}