import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  Color backgroundColor = Color(0xFFEDF4FC);
  Color cember = Color(0xFFD6E6FD);

  int selectedIndex = 0;
  var kategori_list = ["All", "Income", "Expense"];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Padding(
          padding: const EdgeInsets.only(left:20.0,right: 20,top: 20,bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buildIcons(),
              SizedBox(
                height: 15,
              ),
              buildTextTitle(),
              SizedBox(
                height: 15,
              ),
              buildCategory(),
              SizedBox(
                height: 15,
              ),
              buildTextToday(),
              SizedBox(
                height: 15,
              ),
              buildPayment(),
              SizedBox(
                height: 15,
              ),
              buildPlaceholder(size),
              SizedBox(
                height: 15,
              ),
              buildBottomButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back_ios_outlined,
          ),
        ),
        Icon(
          Icons.search_outlined,
        ),
      ],
    );
  }

  Widget buildTextTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Recent Tansactions",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Color(0xFF3E4886),
          ),
        ),
        Text(
          "See all",
          style: TextStyle(
            color: Colors.black.withOpacity(0.5),
          ),
        )
      ],
    );
  }

  Widget buildCategory() {
    return SizedBox(
      height: 30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kategori_list.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Container(
            margin: const EdgeInsets.only(right: 8.0),
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 2),
            child: Center(
              child: Text(
                kategori_list[index],
                style: TextStyle(
                  color: index == selectedIndex ? Colors.white : Colors.black,
                ),
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: index == selectedIndex ? Color(0xFF3E4886) : Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTextToday() {
    return Text(
      "Today",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: Color(0xFF3E4886),
      ),
    );
  }

  Widget buildPayment() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
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
          child: Icon(
            Icons.mail_outline_outlined,
            size: 36,
            color: Color(0xFF3E4886),
          ),
        ),
        title: Text(
          'Payment',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          'Payment from Andrea',
          style: TextStyle(
            color: Colors.blueGrey.withOpacity(0.7),
            fontSize: 12,
          ),
        ),
        trailing: Text(
          '\$30.00',
          style:
              TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF3E4886)),
        ),
      ),
    );
  }

  Widget buildPlaceholder(Size size) {
    return Stack(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 5),
            child: Container(
              height: 300,
              width: 300,
              child: Center(
                child: Container(
                  padding: EdgeInsets.all(25),
                  width: 250,
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(300),
                    border: Border.all(color: cember),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(250),
                      color: Colors.white,
                    ),
                    child: Container(
                      padding: EdgeInsets.all(25),
                      decoration: BoxDecoration(
                        color: cember,
                        borderRadius: BorderRadius.circular(245),
                      ),
                      child: Container(
                        padding: EdgeInsets.all(25),
                        decoration: BoxDecoration(
                          color: backgroundColor,
                          borderRadius: BorderRadius.circular(245),
                        ),
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.blue.shade900,
                            borderRadius: BorderRadius.circular(245),
                          ),
                          child: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(245),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(245),
                              ),
                              child: avatar(),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: avatar(),
        ),
        Positioned(
          left: 30,
          top: 80,
          child: avatar(),
        ),
        Positioned(
          right: 30,
          top: 80,
          child: avatar(),
        ),
        Positioned(
          right: 50,
          top: 215,
          child: avatar(),
        ),
        Positioned(
          left: 50,
          top: 215,
          child: avatar(),
        ),
      ],
    );
  }

  Widget buildBottomButton() {
    return MaterialButton(
      height: 50,
      minWidth: double.infinity,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: Color(0xFF3E4886),
      onPressed: () {},
      child: Text(
        "See Details",
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  Widget avatar() {
    return CircleAvatar(
      radius: 25,
      backgroundColor: Colors.cyanAccent,
      backgroundImage: AssetImage('assets/images/profile.jpg'),
    );
  }
}
