import 'package:flutter/material.dart';

// Home Page
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Initial Value
  double currentValue = 0.0;

  //Increase Value
  void increaseValue() {
    setState(() {
      currentValue++;
    });
  }

  //Decrease Value
  void decreaseValue() {
    setState(() {
      currentValue--;
    });
  }

  //Multiply Value by 2
  void multiplyValue() {
    setState(() {
      currentValue = currentValue * 2;
    });
  }

  //Divide Value by 5
  void divideValue() {
    setState(() {
      currentValue = currentValue / 5;
    });
  }

  //Reset
  void resetValue() {
    setState(() {
      currentValue = 0.0;
    });
  }

  //Custom Buttons for Arithematic Taks
  Widget customButton({
    required String text,
    required Color color,
    required VoidCallback onPressed,
  }) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 110,
        width: 110,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 45,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      //App Bar
      appBar: AppBar(
        title: Text(
          "Counter Calculator App",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff11c7A5), Color(0xff18A8E1)],
            ),
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 10),

            //Current Value
            const Text(
              "Current Value",
              style: TextStyle(fontSize: 24, color: Colors.blueGrey),
            ),
            const SizedBox(height: 20),

            //Value Showing
            Container(
              height: 170,
              width: 320,
              decoration: BoxDecoration(
                color: const Color(0xffE8F4F4),
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: const Color(0xff78E7D6), width: 2),
              ),
              child: Center(
                child: Text(
                  currentValue.toStringAsFixed(2),
                  style: const TextStyle(
                    fontSize: 65,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff0097A7),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 45),

            //Arithematic Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                customButton(
                  text: "+",
                  color: const Color(0xff12CFA7),
                  onPressed: increaseValue,
                ),
                customButton(
                  text: "-",
                  color: const Color(0xffF93E8B),
                  onPressed: decreaseValue,
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                customButton(
                  text: "x",
                  color: const Color(0xff5A6CF3),
                  onPressed: multiplyValue,
                ),
                customButton(
                  text: "/",
                  color: const Color(0xffFF9800),
                  onPressed: divideValue,
                ),
              ],
            ),
            const SizedBox(height: 40),
            //Reset Button
            ElevatedButton.icon(
              onPressed: resetValue,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff7185A3),
                padding: const EdgeInsets.symmetric(
                  horizontal: 50,
                  vertical: 18,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              icon: const Icon(Icons.refresh, color: Colors.white, size: 30),
              label: const Text(
                "Reset",
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
