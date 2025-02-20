import 'package:flutter/material.dart';

void main() => runApp(ProductPage());

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFF2E7E8), // powder pink background
        appBar: AppBar(
          backgroundColor: Color(0xFFF2E7E8),
          elevation: 0,
          title: Text(
            "Single Product",
            style: TextStyle(color: Colors.black87),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black87),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.menu, color: Colors.black87),
              onPressed: () {},
            ),
          ],
        ),
        body: ProductDetails(),
      ),
    );
  }
}

class ProductDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Product Image
            Center(
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[200],
                ),
                child: Image.asset(
                  'assets/images/p1.jpg', // Add your image here
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),

            // Product Title and Price
            Text(
              "Flower Ceramic Pots",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "\$38 ",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.redAccent,
                  ),
                ),
                Text(
                  "\$41",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black54,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
              ],
            ),

            // Rating Section
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star, color: Colors.amber, size: 18),
                Icon(Icons.star, color: Colors.amber, size: 18),
                Icon(Icons.star, color: Colors.amber, size: 18),
                SizedBox(width: 5),
                Text(
                  "3 ratings",
                  style: TextStyle(color: Colors.black54),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    "5.0",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(width: 5),
                Text(
                  "Very Good",
                  style: TextStyle(color: Colors.greenAccent),
                ),
              ],
            ),

            // Flash Sale Section
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Flash sale end in",
                    style: TextStyle(color: Colors.black54)),
                Text("82% Sold Out", style: TextStyle(color: Colors.redAccent)),
              ],
            ),
            SizedBox(height: 8),
            LinearProgressIndicator(
              value: 0.82,
              backgroundColor: Colors.grey[300],
              color: Colors.redAccent,
            ),

            // Color and Size Section
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Color", style: TextStyle(color: Colors.black87)),
                Row(
                  children: [
                    _buildColorOption(Colors.blue),
                    _buildColorOption(Colors.green),
                    _buildColorOption(Colors.yellow),
                    _buildColorOption(Colors.red),
                  ],
                ),
                Text("Size", style: TextStyle(color: Colors.black87)),
                Row(
                  children: ["S", "M", "L"].map((size) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: Text(
                        size,
                        style: TextStyle(
                          color: size == "M" ? Colors.black87 : Colors.black54,
                          fontWeight:
                              size == "M" ? FontWeight.bold : FontWeight.normal,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),

            // Quantity and Add to Cart Button
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildCounterButton(Icons.remove),
                SizedBox(width: 20),
                Text(
                  "3",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 20),
                _buildCounterButton(Icons.add),
                SizedBox(width: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(
                        255, 14, 13, 15), // Customize button color here
                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                  ),
                  onPressed: () {},
                  child: Text("Add To Cart"),
                ),
              ],
            ),

            // Specifications Section
            SizedBox(height: 20),
            Text(
              "Specifications",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit...",
              style: TextStyle(color: Colors.black54),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.check, color: Colors.green),
                SizedBox(width: 5),
                Text("100% Good Reviews",
                    style: TextStyle(color: Colors.black87)),
              ],
            ),
            Row(
              children: [
                Icon(Icons.check, color: Colors.green),
                SizedBox(width: 5),
                Text("7 Days Returns", style: TextStyle(color: Colors.black87)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildColorOption(Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: CircleAvatar(
        radius: 10,
        backgroundColor: color,
      ),
    );
  }

  Widget _buildCounterButton(IconData icon) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 32,
        height: 32,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          shape: BoxShape.circle,
        ),
        child: Icon(icon, color: Colors.black87),
      ),
    );
  }
}
