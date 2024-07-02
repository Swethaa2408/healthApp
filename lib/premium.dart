import 'package:flutter/material.dart';

import 'categories.dart';

class premium extends StatefulWidget {
  const premium({Key? key});

  @override
  State<premium> createState() => _premiumState();
}

class _premiumState extends State<premium> {
  bool first = true;
  bool second = false;
  Color firstborder = Colors.red;
  Color secondborder = Colors.grey;

  void firstclm() {
    setState(() {
      first = true;
      second = false;
      firstborder = Colors.red;
      secondborder = Colors.grey;
    });
  }

  void secondclm() {
    setState(() {
      first = false;
      second = true;
      firstborder = Colors.grey;
      secondborder = Colors.red;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        title: Text('Get Premium',style: TextStyle(fontWeight: FontWeight.bold),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> categories()));
            });
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
            },
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Text(
            "Select any one",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: firstclm,
                child: Container(
                  height: 130,
                  width: 150,
                  decoration: BoxDecoration(
                    border: Border.all(color: firstborder),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage("https://st.depositphotos.com/1203063/4048/i/450/depositphotos_40481065-stock-photo-coin.jpg")
                          ),
                          borderRadius: BorderRadiusDirectional.circular(70)
                        ),
                        ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("GOLD PLAN",style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: secondclm,
                child: Container(
                  height: 130,
                  width: 150,
                  decoration: BoxDecoration(
                    border: Border.all(color: secondborder),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage("https://www.shutterstock.com/image-illustration/shining-diamond-circle-round-frame-600nw-2321296959.jpg"),
                            ),
                            borderRadius: BorderRadius.circular(50)
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("DIAMOND PLAN",style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          if (first)
            Column(
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Benefits Includes',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 8),
                        Benifits('One year access to the full Program', true),
                        Benifits('Six weeks access to Physio Help Desk', true),
                        Benifits('Lifetime access to all updates', false),
                        Benifits('Video consultation with our physio', false),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      children: [
                        Text(
                          '\$150',
                          style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                        ),
                        Text('Coming Soon'),
                        SizedBox(height: 16),
                        Container(
                          width: MediaQuery.of(context).size.width / 1.2,
                          height: MediaQuery.of(context).size.height / 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Colors.deepOrange,
                          ),
                          child: Center(
                            child: Text(
                              "Register Now",
                              style: TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          if (second)
            Column(
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Benefits Includes',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 8),
                        Benifits('One year access to the full Program', true),
                        Benifits('Six weeks access to Physio Help Desk', true),
                        Benifits('Lifetime access to all updates', true),
                        Benifits('Video consultation with our physio', true),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      children: [
                        Text(
                          '\$250',
                          style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                        ),
                        Text('Coming Soon'),
                        SizedBox(height: 16),
                        Container(
                          width: MediaQuery.of(context).size.width / 1.2,
                          height: MediaQuery.of(context).size.height / 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Colors.deepOrange,
                          ),
                          child: Center(
                            child: Text(
                              "Register Now",
                              style: TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }

  Widget Benifits(String benefit, bool isAvailable) {
    return Row(
      children: [
        Icon(
          isAvailable ? Icons.check : Icons.close,
          color: isAvailable ? Colors.green : Colors.red,
        ),
        SizedBox(width: 8),
        Text(benefit),
      ],
    );
  }
}
