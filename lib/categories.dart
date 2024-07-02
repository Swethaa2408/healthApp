import 'package:flutter/material.dart';


class categories extends StatefulWidget {
  const categories({super.key});

  @override
  State<categories> createState() => _categoriesState();
}

class _categoriesState extends State<categories> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          height: 5,
            width: 5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
                image: DecorationImage(
                  image: AssetImage("assets/girll.png"),
                  fit: BoxFit.fill
                )
            ),

      ),
        title: Text("Hi,Swetha"),
        actions: [
          Icon(Icons.notifications_outlined)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Categories',style: TextStyle(fontWeight: FontWeight.bold),),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Card(
                        child: Container(
                          height: 70,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/one.png"),
                              fit: BoxFit.fill
                            )
                          ),
                        ),
                      ),
                      Text("Neck")
                    ],
                  ),
                  Column(
                    children: [
                      Card(
                        child: Container(
                          height: 70,
                          width: 100,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/two.jpg"),
                                fit: BoxFit.fill
                              )
                          ),
                        ),
                      ),
                      Text("Spine")
                    ],
                  ),
                  Column(
                    children: [
                      Card(
                        child: Container(
                          height: 70,
                          width: 100,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/three.png"),
                                fit: BoxFit.fill
                              )
                          ),
                        ),
                      ),
                      Text("Lower Back")
                    ],
                  ),
                ],
              ),
              Text('Categories',style: TextStyle(fontWeight: FontWeight.bold),),
              Card(
                color: Colors.orange,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Get Premium", style: TextStyle(color: Colors.white, fontSize: 18)),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.white,shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)
                        )),
                        child: Text("View Plans", style: TextStyle(color: Colors.orange)),
                      ),
                    ],
                  ),
                ),
              ),
              Text('Trial for You',style: TextStyle(fontWeight: FontWeight.bold),),
              Card(
                child: Column(
                  children: [
                    Container(
                      height: 130,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage("assets/neck.jpg"),
                          fit: BoxFit.fill
                        )
                      ),

                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Neck Exercise"),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(backgroundColor: Colors.red,shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)
                            )),
                            onPressed: () {},
                            child: Text("Watch Video", style: TextStyle(color: Colors.white),),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Card(
                child: Column(
                  children: [
                    Container(
                      height: 130,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage("assets/spine.jpg"),
                              fit: BoxFit.fill
                          )
                      ),

                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Spine Exercise"),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(backgroundColor: Colors.red,shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)
                            )),
                            onPressed: () {},
                            child: Text("Watch Video", style: TextStyle(color: Colors.white),),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    Container(
                      height: 153,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage("assets/back.jpg"),
                              fit: BoxFit.fill
                          )
                      ),

                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Lower Back Exercise"),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(backgroundColor: Colors.red,shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)
                            )),
                            onPressed: () {},
                            child: Text("Watch Video", style: TextStyle(color: Colors.white),),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),

            ],
          ),
        ),

      ),
    );
  }
}
