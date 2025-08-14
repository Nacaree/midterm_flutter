import 'package:midterm/Models/Product.dart';
import 'package:midterm/Models/ProductDetailPage.dart';
import 'package:flutter/material.dart';

class Inclass01 extends StatefulWidget {
  const Inclass01({super.key});

  @override
  State<Inclass01> createState() => _Inclass01State();
}

class _Inclass01State extends State<Inclass01> {
  bool isGrid = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ProductDetailPage(product: products[index]),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.only(bottom: 1),
              // color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),

                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          products[index].image,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),

                    SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            products[index].title,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[800],
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 4),
                          Text(
                            products[index].subtitle,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[600],
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "\$${products[index].price}",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.green[700],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Icon(Icons.more_vert, color: Colors.grey[600], size: 20),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
