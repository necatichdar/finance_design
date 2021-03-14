import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  Color backgroundColor = Color(0xFFEDF4FC);
  Color transparant = Colors.transparent;
  Color iconColor = Color(0xFF77787B);

  var list_data = [
    {
      'title': 'Sent',
      'subtitle': 'Sending Payment to Clients',
      'icon': 'up_arrow',
      'trailing': '\$150',
    },
    {
      'title': 'Receive',
      'subtitle': 'Receiving Salary from company',
      'icon': 'down_arrow',
      'trailing': '\$250',
    },
    {
      'title': 'Loan',
      'subtitle': 'Loan for the Car',
      'icon': 'dolar',
      'trailing': '\$400',
    },
  ];

  stringToIcon(String iconS) {
    if (iconS == 'up_arrow') {
      return Icons.arrow_upward_outlined;
    } else if (iconS == 'down_arrow') {
      return Icons.arrow_downward_outlined;
    } else if (iconS == 'dolar') {
      return Icons.attach_money_outlined;
    } else {
      return Icons.error;
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        bottomNavigationBar: buildBottomNavigationBar(),
        body: ListView(
          padding: EdgeInsets.all(20),
          physics: NeverScrollableScrollPhysics(),
          children: [
            buildTopContainer(size),
            buildMid(),
            buildBottomContainer(size)
          ],
        ),
      ),
    );
  }

  Widget buildTopContainer(Size size) {
    return Container(
      height: size.height * 0.42,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 1),
            blurRadius: 2,
            color: Colors.blueGrey.withOpacity(0.5),
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.menu_outlined,
                ),
                Icon(
                  Icons.more_horiz_outlined,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            CircleAvatar(
              radius: 42,
              backgroundColor: Colors.cyanAccent,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Hira Riaz",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF7278A6)),
            ),
            Text(
              "UX/UI Designer",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Color(0xFF7278A6),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      '\$8900',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF7278A6),
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      'Income',
                      style: TextStyle(
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    width: 1,
                    height: 40,
                    color: Colors.blueGrey,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      '\$5500',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF7278A6),
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      'Expenses',
                      style: TextStyle(
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    width: 1,
                    height: 40,
                    color: Colors.blueGrey,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      '\$890',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF7278A6),
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      'Loan',
                      style: TextStyle(
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 7,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMid() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                "Overview",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Color(0xFF3E4886),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.notifications_none_outlined,
                color: iconColor,
              )
            ],
          ),
          Text(
            "Sept 13, 2020",
            style: TextStyle(
                color: Color(0xFF3E4886), fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }

  Widget buildBottomContainer(Size size) {
    return Container(
      height: size.height * 0.35,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: list_data.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'detail_page'),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 18.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      //TODO: Gölgelik Eklenecek
                      offset: Offset(0, 1),
                      blurRadius: 2,
                      color: Colors.blueGrey.withOpacity(0.5),
                    ),
                  ],
                ),
                child: ListTile(
                  leading: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: backgroundColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(stringToIcon(
                        list_data[index]['icon'],
                      ))),
                  title: Text(
                    list_data[index]['title'],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    list_data[index]['subtitle'],
                    style: TextStyle(
                      color: Colors.blueGrey.withOpacity(0.7),
                      fontSize: 12,
                    ),
                  ),
                  trailing: Text(
                    list_data[index]['trailing'],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: transparant,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      elevation: 0,
      items: [
        BottomNavigationBarItem(
          backgroundColor: transparant,
          label: "Home",
          icon: Icon(
            Icons.home_outlined,
            color: iconColor,
          ),
        ),
        BottomNavigationBarItem(
          backgroundColor: transparant,
          label: "Card",
          icon: Icon(
            Icons.credit_card_outlined,
            color: iconColor,
          ),
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.blue,
          label: "Add",
          icon: Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
                color: Color(0xFF3D4584),
                borderRadius: BorderRadius.circular(8)),
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
        BottomNavigationBarItem(
          backgroundColor: transparant,
          label: "Money",
          icon: Icon(
            Icons.attach_money_outlined,
            color: iconColor,
          ),
        ),
        BottomNavigationBarItem(
          backgroundColor: transparant,
          label: "Profile",
          icon: Icon(
            Icons.person_outline_outlined,
            color: iconColor,
          ),
        ),
      ],
      currentIndex: _selectedIndex,
      onTap: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
    );
  }
}
