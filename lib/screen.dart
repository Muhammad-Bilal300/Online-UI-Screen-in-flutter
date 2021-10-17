import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // centerTitle: true,
        backgroundColor: Colors.white,
        leading: Image.asset("assets/logo.jpg"),
        title: Row(children: [
          Text(
            "mobi",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Text(
            "sport",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
          ),
        ]),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.grey[700],
                size: 25,
              ))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        type: BottomNavigationBarType.shifting,
        backgroundColor: Colors.white,
        elevation: 2,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.orange,
        items: [
          BottomNavigationBarItem(
            label: 'Home',

            icon: Icon(
              Icons.home,
              color: Colors.orange,
              size: 30,
            ),

            // title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.apps_rounded,
              size: 30,
            ),
            // title: Text("Catalog"),
            label: "Catalog",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.luggage,
              size: 30,
            ),
            label: "Bag",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 30,
            ),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.more_horiz,
              size: 30,
            ),
            label: "More",
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        child: ListView(
          children: [
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Running",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Text(
                  "15 results",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            shopTiles('assets/1.jpg', "Men's", 'FuelCell Echo', "99.99"),
            shopTilesNew('assets/3.jpg', "Men's", 'FuelCell Echo', "99.99"),
            shopTilesNew2('assets/1.jpg', "Men's", 'FuelCell Echo', "99.99"),

            // shoppingTiles("assets/1.jpg"),
            // shoppingTiles("assets/2.jpg"),
            // shoppingTiles("assets/3.jpg"),
          ],
        ),
      ),
    );
  }

  Widget shopTiles(imgPath, field1, field2, price) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(left: 3, top: 10, bottom: 10, right: 3),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 3,
              blurRadius: 4,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ], color: Colors.white, borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: EdgeInsets.only(left: 7, right: 5, top: 9, bottom: 5),
            child: InkWell(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Hero(
                            tag: imgPath,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(9.0),
                              child: Image(
                                image: AssetImage(imgPath),
                                fit: BoxFit.cover,
                                height: 90,
                                width: 110,
                              ),
                            )),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              field1,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                                // fontFamily: 'Montserrat'
                              ),
                            ),
                            Text(
                              field2,
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                fontSize: 16.0,
                                // fontFamily: 'Montserrat'
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.black,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.black,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.black,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.black,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.black,
                                  size: 20,
                                ),
                              ],
                            ),
                            Text(
                              price,
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 3,
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
            bottom: 0,
            right: 5,
            child: Container(
              height: 30,
              width: 35,
              decoration: BoxDecoration(
                color: Colors.yellow[700],
              ),
              child: IconButton(
                icon: Icon(
                  Icons.luggage,
                  color: Colors.white,
                  size: 18,
                ),
                onPressed: () {},
              ),
            ))
      ],
    );
  }

  Widget shopTilesNew(imgPath, field1, field2, price) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(left: 3, top: 10, bottom: 10, right: 3),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 3,
              blurRadius: 4,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ], color: Colors.white, borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: EdgeInsets.only(left: 7, right: 5, bottom: 5),
            child: InkWell(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 7, vertical: 3),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                "New",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Hero(
                                tag: imgPath,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(9.0),
                                  child: Image(
                                    image: AssetImage(imgPath),
                                    fit: BoxFit.cover,
                                    height: 90,
                                    width: 110,
                                  ),
                                )),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              field1,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                                // fontFamily: 'Montserrat'
                              ),
                            ),
                            Text(
                              field2,
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                fontSize: 16.0,
                                // fontFamily: 'Montserrat'
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.black,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.black,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.black,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.black,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.black,
                                  size: 20,
                                ),
                              ],
                            ),
                            Text(
                              price,
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
            bottom: 0,
            right: 5,
            child: Container(
              height: 30,
              width: 35,
              decoration: BoxDecoration(
                color: Colors.yellow[700],
              ),
              child: IconButton(
                icon: Icon(
                  Icons.luggage,
                  color: Colors.white,
                  size: 18,
                ),
                onPressed: () {},
              ),
            ))
      ],
    );
  }

  Widget shopTilesNew2(imgPath, field1, field2, price) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(left: 3, top: 10, bottom: 10, right: 3),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 3,
              blurRadius: 4,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ], color: Colors.white, borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: EdgeInsets.only(left: 7, right: 5, bottom: 5),
            child: InkWell(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Hero(
                            tag: imgPath,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(9.0),
                              child: Image(
                                image: AssetImage(imgPath),
                                fit: BoxFit.cover,
                                height: 90,
                                width: 110,
                              ),
                            )),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 4,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 7, vertical: 3),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(247, 198, 0, 1.0),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(-10),
                                    bottomRight: Radius.circular(-10)),
                              ),
                              child: Text(
                                "Exclusive",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Text(
                              field1,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                                // fontFamily: 'Montserrat'
                              ),
                            ),
                            Text(
                              field2,
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                fontSize: 16.0,
                                // fontFamily: 'Montserrat'
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.black,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.black,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.black,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.black,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.black,
                                  size: 20,
                                ),
                              ],
                            ),
                            Text(
                              price,
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 3,
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
            bottom: 0,
            right: 5,
            child: Container(
              height: 30,
              width: 35,
              decoration: BoxDecoration(
                color: Colors.yellow[700],
              ),
              child: IconButton(
                icon: Icon(
                  Icons.luggage,
                  color: Colors.white,
                  size: 18,
                ),
                onPressed: () {},
              ),
            ))
      ],
    );
  }
}
