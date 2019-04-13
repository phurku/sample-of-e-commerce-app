import 'package:flutter/material.dart';
import 'package:store/ui/pages/call.dart';
import 'package:store/ui/pages/cart.dart';
import 'package:store/ui/pages/favourite.dart';
import 'package:store/ui/pages/location.dart';
//mport 'package:store/ui/pages/login.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentindex = 0;
  var _pageController = PageController();
  // Widget callPage(int currentindex) {
  //   switch (currentindex) {
  //     case 0:
  //       return HomePage();
  //     case 1:
  //       return Location();
  //     case 2:
  //       return CartPage();
  //     case 3:
  //       return CallPage();
  //     case 4:
  //       return FavoritePage();

  //       break;
  //     default:
  //   }
  // }

  //final String a = 'assets/1.jpg';
  Container scrollview(String imgval, String title, String subtitle) {
    return Container(
      width: 200,
      child: Card(
        child: Wrap(children: <Widget>[
          Image.network(imgval),
          ListTile(
            title: Text(title),
            subtitle: Text(subtitle),
          )
        ]),
      ),
    );
  }

  List glasses = [
    {
      "title": "Gucci",
      "description": "Italian Luxury",
      "image":
          "assets/1.jpg"},
    {
      "title": "Rayban",
      "description": "American Glass",
      "image":
          "https://www.bing.com/images/search?view=detailV2&ccid=Etctek9k&id=C333B51A3F0956B3097D43B6D8A52191BD79548F&thid=OIP.Etctek9kK7LQAmSSdbxjwAHaHa&mediaurl=https%3a%2f%2fcdn.shopify.com%2fs%2ffiles%2f1%2f0193%2f6253%2fproducts%2f8435d_2000x.jpg%3fv%3d1474572010&exph=1600&expw=1600&q=cat+eye+spectacles&simid=607986206144006401&selectedIndex=2&ajaxhist=0",
    },
    {
      "title": "Hugo Boss",
      "description": "European Style",
      "image":
          "https://www.amazon.com/Ray-Ban-Womens-RX5150-Eyeglasses-Havana/dp/B00GGXQIGA/ref=asc_df_B00GGXQIGA/?tag=bingshoppinga-20&linkCode=df0&hvadid=%7Bcreative%7D&hvpos=%7Badposition%7D&hvnetw=o&hvrand=%7Brandom%7D&hvpone=&hvptwo=&hvqmt=e&hvdev=c&hvdvcmdl=%7Bdevicemodel%7D&hvlocint=&hvlocphy=&hvtargid=pla-4584138859469193&th=1",
    },
    {
      "title": "Cate eye",
      "description": "Stylish Since 1950s",
      "image":
          "https://www.bing.com/images/search?view=detailV2&ccid=ROxS3Fhx&id=DDA4D9A7BAE3439F4123FCFF13D29852AF0DB7E7&thid=OIP.ROxS3FhxydGWem1hE6aXCgHaDq&mediaurl=https%3a%2f%2fs7d2.scene7.com%2fis%2fimage%2fclearly%2fgucci-gg3750-50-black-crystal-top-angle%3ffmt%3djpg%26wid%3d680%26cropN%3d0%2c0.165%2c1%2c0.79&exph=336&expw=680&q=pictures+ofGucci++spectacles&simid=607986781677947309&selectedIndex=2&ajaxhist=0",
    },
    {
      "title": "Dior",
      "description": "French style",
      "image":
          "https://www.bing.com/images/search?view=detailV2&ccid=iBEnngSp&id=8F2F32BBAAB3B3A38750DB93B41FF73294156BD6&thid=OIP.iBEnngSpX-w9zCVRdnLVKAHaDt&mediaurl=https%3a%2f%2f84654884b68f749e7aa3-aa57143e2ca30795bf94ff3884a3b19b.ssl.cf1.rackcdn.com%2fpublic%2fimages%2fdesigner_eyeglasses%2fBoss%2520by%2520Hugo%2520Boss%2fBoss%2520By%2520Hugo%2520Boss%2520Boss%25200523%2520807.jpg&exph=300&expw=600&q=boss++spectacles&simid=608026535849625992&selectedIndex=6&ajaxhist=0",
    },
    {
      "title": "Dior",
      "description": "French style",
      "image":
          "https://www.bing.com/images/search?view=detailV2&ccid=iBEnngSp&id=8F2F32BBAAB3B3A38750DB93B41FF73294156BD6&thid=OIP.iBEnngSpX-w9zCVRdnLVKAHaDt&mediaurl=https%3a%2f%2f84654884b68f749e7aa3-aa57143e2ca30795bf94ff3884a3b19b.ssl.cf1.rackcdn.com%2fpublic%2fimages%2fdesigner_eyeglasses%2fBoss%2520by%2520Hugo%2520Boss%2fBoss%2520By%2520Hugo%2520Boss%2520Boss%25200523%2520807.jpg&exph=300&expw=600&q=boss++spectacles&simid=608026535849625992&selectedIndex=6&ajaxhist=0",
    },
  ];
  List brands = [
    {
      "title": "Dior",
      "description": "French style",
      "image":
          "https://www.bing.com/images/search?view=detailV2&ccid=iBEnngSp&id=8F2F32BBAAB3B3A38750DB93B41FF73294156BD6&thid=OIP.iBEnngSpX-w9zCVRdnLVKAHaDt&mediaurl=https%3a%2f%2f84654884b68f749e7aa3-aa57143e2ca30795bf94ff3884a3b19b.ssl.cf1.rackcdn.com%2fpublic%2fimages%2fdesigner_eyeglasses%2fBoss%2520by%2520Hugo%2520Boss%2fBoss%2520By%2520Hugo%2520Boss%2520Boss%25200523%2520807.jpg&exph=300&expw=600&q=boss++spectacles&simid=608026535849625992&selectedIndex=6&ajaxhist=0",
    },
    {
      "title": "Dior",
      "description": "French style",
      "image":
          "https://www.bing.com/images/search?view=detailV2&ccid=iBEnngSp&id=8F2F32BBAAB3B3A38750DB93B41FF73294156BD6&thid=OIP.iBEnngSpX-w9zCVRdnLVKAHaDt&mediaurl=https%3a%2f%2f84654884b68f749e7aa3-aa57143e2ca30795bf94ff3884a3b19b.ssl.cf1.rackcdn.com%2fpublic%2fimages%2fdesigner_eyeglasses%2fBoss%2520by%2520Hugo%2520Boss%2fBoss%2520By%2520Hugo%2520Boss%2520Boss%25200523%2520807.jpg&exph=300&expw=600&q=boss++spectacles&simid=608026535849625992&selectedIndex=6&ajaxhist=0",
    },
    {
      "title": "Dior",
      "description": "French style",
      "image":
          "https://www.bing.com/images/search?view=detailV2&ccid=iBEnngSp&id=8F2F32BBAAB3B3A38750DB93B41FF73294156BD6&thid=OIP.iBEnngSpX-w9zCVRdnLVKAHaDt&mediaurl=https%3a%2f%2f84654884b68f749e7aa3-aa57143e2ca30795bf94ff3884a3b19b.ssl.cf1.rackcdn.com%2fpublic%2fimages%2fdesigner_eyeglasses%2fBoss%2520by%2520Hugo%2520Boss%2fBoss%2520By%2520Hugo%2520Boss%2520Boss%25200523%2520807.jpg&exph=300&expw=600&q=boss++spectacles&simid=608026535849625992&selectedIndex=6&ajaxhist=0",
    },
    {
      "title": "Dior",
      "description": "French style",
      "image":
          "https://www.bing.com/images/search?view=detailV2&ccid=iBEnngSp&id=8F2F32BBAAB3B3A38750DB93B41FF73294156BD6&thid=OIP.iBEnngSpX-w9zCVRdnLVKAHaDt&mediaurl=https%3a%2f%2f84654884b68f749e7aa3-aa57143e2ca30795bf94ff3884a3b19b.ssl.cf1.rackcdn.com%2fpublic%2fimages%2fdesigner_eyeglasses%2fBoss%2520by%2520Hugo%2520Boss%2fBoss%2520By%2520Hugo%2520Boss%2520Boss%25200523%2520807.jpg&exph=300&expw=600&q=boss++spectacles&simid=608026535849625992&selectedIndex=6&ajaxhist=0",
    },
    {
      "title": "Dior",
      "description": "French style",
      "image":
          "https://www.bing.com/images/search?view=detailV2&ccid=iBEnngSp&id=8F2F32BBAAB3B3A38750DB93B41FF73294156BD6&thid=OIP.iBEnngSpX-w9zCVRdnLVKAHaDt&mediaurl=https%3a%2f%2f84654884b68f749e7aa3-aa57143e2ca30795bf94ff3884a3b19b.ssl.cf1.rackcdn.com%2fpublic%2fimages%2fdesigner_eyeglasses%2fBoss%2520by%2520Hugo%2520Boss%2fBoss%2520By%2520Hugo%2520Boss%2520Boss%25200523%2520807.jpg&exph=300&expw=600&q=boss++spectacles&simid=608026535849625992&selectedIndex=6&ajaxhist=0",
    },
    {
      "title": "Dior",
      "description": "French style",
      "image":
          "https://www.bing.com/images/search?view=detailV2&ccid=iBEnngSp&id=8F2F32BBAAB3B3A38750DB93B41FF73294156BD6&thid=OIP.iBEnngSpX-w9zCVRdnLVKAHaDt&mediaurl=https%3a%2f%2f84654884b68f749e7aa3-aa57143e2ca30795bf94ff3884a3b19b.ssl.cf1.rackcdn.com%2fpublic%2fimages%2fdesigner_eyeglasses%2fBoss%2520by%2520Hugo%2520Boss%2fBoss%2520By%2520Hugo%2520Boss%2520Boss%25200523%2520807.jpg&exph=300&expw=600&q=boss++spectacles&simid=608026535849625992&selectedIndex=6&ajaxhist=0",
    },
    {
      "title": "Dior",
      "description": "French style",
      "image":
          "https://www.bing.com/images/search?view=detailV2&ccid=iBEnngSp&id=8F2F32BBAAB3B3A38750DB93B41FF73294156BD6&thid=OIP.iBEnngSpX-w9zCVRdnLVKAHaDt&mediaurl=https%3a%2f%2f84654884b68f749e7aa3-aa57143e2ca30795bf94ff3884a3b19b.ssl.cf1.rackcdn.com%2fpublic%2fimages%2fdesigner_eyeglasses%2fBoss%2520by%2520Hugo%2520Boss%2fBoss%2520By%2520Hugo%2520Boss%2520Boss%25200523%2520807.jpg&exph=300&expw=600&q=boss++spectacles&simid=608026535849625992&selectedIndex=6&ajaxhist=0",
    },
    {
      "title": "Dior",
      "description": "French style",
      "image":
          "https://www.bing.com/images/search?view=detailV2&ccid=iBEnngSp&id=8F2F32BBAAB3B3A38750DB93B41FF73294156BD6&thid=OIP.iBEnngSpX-w9zCVRdnLVKAHaDt&mediaurl=https%3a%2f%2f84654884b68f749e7aa3-aa57143e2ca30795bf94ff3884a3b19b.ssl.cf1.rackcdn.com%2fpublic%2fimages%2fdesigner_eyeglasses%2fBoss%2520by%2520Hugo%2520Boss%2fBoss%2520By%2520Hugo%2520Boss%2520Boss%25200523%2520807.jpg&exph=300&expw=600&q=boss++spectacles&simid=608026535849625992&selectedIndex=6&ajaxhist=0",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: Text('Take a view of the real World',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
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
                'Spectacles',
                softWrap: true,
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 40),
              subtitle: RaisedButton(
                child: Text('phurku2017@gmial.com'),
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
              onTap: () => {},
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
      body: Column(children: <Widget>[
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: glasses.length,
            itemBuilder: (context, index) {
              var glass = glasses[index];
              return Column(
                children: <Widget>[
                  Container(
                    height: 200,
                    width: 250,
                    child: Card(
                        margin: EdgeInsets.all(5),
                        child: Column(
                          children: <Widget>[
                            Text(glass['title']),
                            Text(glass['description']),
                          //  Image.asset(glasses['image'])
                              
                            
                          ],
                        )),
                  ),
                ],
              );
            },
          ),
        ),

        // SizedBox(
        //   child:ListTile(
        //     contentPadding: EdgeInsets.all(10),
        //     title: Text('Some brands you may check out',style: TextStyle(color: Colors.red,fontSize:20,fontWeight: FontWeight.bold),),
        //   ),
        //   height: 20,
        // ),
        // SliverAppBar(
        //   elevation: 3,
        //   leading:Icon(Icons.gavel),
        //   centerTitle: true,
        //   title: Text('Companies/Brands'),
        //           flexibleSpace:
         Flexible(
              flex: 2,
              child: Row(children: <Widget>[
                Expanded(
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: brands.length,
                        itemBuilder: (context, index) {
                          var brand = brands[index];
                          return Column(children: <Widget>[
                            Container(
                              height: 200,
                              width: 900,
                              child: Card(
                                  margin: EdgeInsets.all(6),
                                  child: Column(
                                    children: <Widget>[
                                      Text(brand['title']),
                                      Text(brand['description']),
                                      Image(
                                        image: NetworkImage(brand['image']),
                                      )
                                    ],
                                  )),
                            ),
                          ]);
                        }))
              ])),
      //  )
      ]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          _pageController.animateToPage(index,
              duration: Duration(milliseconds: 300), curve: Curves.easeIn);
          setState(() {
            _currentindex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.pink,
            icon: Icon(
              Icons.home,
            ),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.add_location),
            title: Text('Location'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.green,
            icon: Icon(
              Icons.add_shopping_cart,
            ),
            title: Text('Products'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.deepOrange,
            icon: Icon(
              Icons.call,
            ),
            title: Text('Contact'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.red,
            icon: Icon(
              Icons.favorite,
            ),
            title: Text('Favorite'),
          ),
        ],
      )
    );
  }
}
