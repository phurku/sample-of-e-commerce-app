import 'package:flutter/material.dart';
//import 'package:store/ui/pages/login.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String a = 'assets/1.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.deepOrangeAccent,
        //  leading: Icon(Icons.menu),
        centerTitle: true,
        title: Text('View the real world'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
                // decoration:BoxDecoration(
                // image: DecorationImage(

                //centerSlice: Rect.fromCircle(radius:20,center: Offset(2,4)
                // )
                // image: DecorationImage(
                //  fit: BoxFit.cover
                // )
                // ),
                child: ListTile(
                  
              title: Text(
                '',
                softWrap: true,
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 40),
                     
              subtitle: RaisedButton(
                
                child: Text('phurku2017@gmail.com'),
                onPressed: () {},
              ),
            )),
            ListTile(
              leading: Icon(Icons.home),
              onTap: () {},
              // isThreeLine: true,
              title: Text('Home '),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Icon(Icons.settings),
              onTap: () => HomePage(),
              // isThreeLine: true,
              title: Text('General Setting '),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Icon(Icons.details),
              onTap: () => HomePage(),
              // isThreeLine: true,

              // isThreeLine: true,
              title: Text('About '),
            ),
            SizedBox(
              height: 30,
            ),
            ListTile(
              leading: Icon(Icons.contact_phone),
              onTap: () => HomePage(),
              // isThreeLine: true,
              title: Text('Contact us '),
            ),
            SizedBox(
              height: 30,
            ),
            ListTile(
              leading: Icon(Icons.feedback),
              onTap: () => HomePage(),
              // isThreeLine: true,
              title: Text('Feedback '),
            ),
            SizedBox(
              height: 30,
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              onTap: () {},
              // isThreeLine: true,
              // contentPadding:EdgeInsets.all(20),
              title: Text(
                'Member login ',
                style: TextStyle(fontSize: 15),
              ),
            ),
          ],

        ),
      ),
      

      
      );
    
  }

  
}
