import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen({super.key});

  TextStyle prodTitle = TextStyle(fontSize: 28);
  TextStyle catTitle = TextStyle(fontSize: 18, color: Colors.blue);
  TextStyle description = TextStyle(fontSize: 20);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.3,
          color: Colors.purple,
        ),
        Text('Product', style: prodTitle),
        Text('Catagory Name', style: catTitle),
        Text(
            'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. ',
            style: description),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.yellow,
              ),
              onPressed: () {},
              child: Text('Add To Cart'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Buy Now'),
            ),
          ],
        ),
      ],
    ));
  }
}