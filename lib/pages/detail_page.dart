import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  Color backgroundColor = Color(0xFFEDF4FC);
  int selectedIndex = 0;
  var kategori_list = ["All", "Income", "Expense"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buildIcons(),
              buildTextTitle(),
              buildCategory(),
              buildTextToday(),
              buildPayment(),
              SizedBox(
                height: 20,
              ),
              buildPlaceholder(),
              SizedBox(
                height: 20,
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
    return Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Row(
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
              ),
            );
  }

  Widget buildCategory() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: SizedBox(
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
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 2),
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
                color:
                    index == selectedIndex ? Color(0xFF3E4886) : Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTextToday() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Text(
        "Today",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Color(0xFF3E4886),
        ),
      ),
    );
  }

  Widget buildPayment() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Container(
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
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Color(0xFF3E4886)),
          ),
        ),
      ),
    );
  }

  Widget buildPlaceholder() {
    return Placeholder(
      fallbackHeight: 300,
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
}
