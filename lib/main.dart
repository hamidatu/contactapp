// ignore_for_file: prefer_const_constructors

import 'package:contactapp/contact_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Contact app',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List mycontacts = listOfcontas;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: const Text(
          "My Contacts",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            child: CircleAvatar(
              backgroundImage: AssetImage("images/woman.jpg"),
            ),
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: mycontacts.length,
          itemBuilder: (BuildContext context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (index == 0)
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            hintText: "Search by name or number",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ))),
                  ),
                if (index == 0)
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text("Recents", style: TextStyle(fontSize: 25)),
                  ),
                if (index == 2)
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text("Contacts",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                  ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ContactPage(
                                  mycontact: mycontacts[index],
                                )));
                  },
                  child: ListTile(
                    leading: CircleAvatar(
                        backgroundImage:
                            NetworkImage("${mycontacts[index]["Image"]}")),
                    title: Text(
                      mycontacts[index]['name'],
                      style: TextStyle(fontWeight: FontWeight.w800),
                    ),
                    subtitle: Text("+3 505 44419 "),
                    trailing: Icon(Icons.more_horiz),
                  ),
                ),
                const Divider(
                  height: 4,
                  color: Colors.grey,
                ),
              ],
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        child: const Icon(
          Icons.add,
          size: 50,
        ),
      ),
    );
  }
}

List listOfcontas = [
  {
    "name": "hammy",
    "location": "wa",
    "email": "yourem@email.com",
    "phone": "+233552102040",
    "Group": "famil",
    "Image": "https://picsum.photos/200/300?random=10"
  },
  {
    "name": "hamida",
    "location": "wa",
    "email": "yourem@email.com",
    "phone": "+233552102040",
    "Group": "famil",
    "Image": "https://picsum.photos/200/300?random=30"
  },
  {
    "name": "hanatu",
    "location": "wa",
    "email": "yourem@email.com",
    "phone": "+233552102040",
    "Group": "famil",
    "Image": "https://picsum.photos/200/300?random=40"
  },
  {
    "name": "kweekwe",
    "location": "wa",
    "email": "yourem@email.com",
    "phone": "+233552102040",
    "Group": "famil",
    "Image": "https://picsum.photos/200/300?random=50"
  },
  {
    "name": "salam",
    "location": "wa",
    "email": "yourem@email.com",
    "phone": "+233552102040",
    "Group": "famil",
    "Image": "https://picsum.photos/200/300?random=70"
  },
  {
    "name": "ajara",
    "location": "wa",
    "email": "yourem@email.com",
    "phone": "+233552102040",
    "Group": "famil",
    "Image": "https://picsum.photos/200/300?random=85"
  },
  {
    "name": "mushnat",
    "location": "wa",
    "email": "yourem@email.com",
    "phone": "+233548496662",
    "Group": "famil",
    "Image": "https://picsum.photos/200/300?random=100"
  },
  {
    "name": "hajji",
    "location": "wa",
    "email": "yourem@email.com",
    "phone": "+233552102040",
    "Group": "famil",
    "Image": "https://picsum.photos/200/300?random=105"
  },
  {
    "name": "rezika",
    "location": "wa",
    "email": "yourem@email.com",
    "phone": "+233552102040",
    "Group": "famil",
    "Image": "https://picsum.photos/200/300?random=1"
  },
  {
    "name": "jamal",
    "location": "wa",
    "email": "yourem@email.com",
    "phone": "+233552102040",
    "Group": "famil",
    "Image": "https://picsum.photos/200/300?random=1"
  },
];
