import 'package:flutter/material.dart';
import 'package:saberu/models/product_model.dart';
import 'package:saberu/utils/caching_client.dart';
import 'package:url_launcher/url_launcher.dart';

class ProductDetailsScreen extends StatelessWidget {
  final ProductModel product;

  ProductDetailsScreen(this.product);

  _launchURL() async {
    if (await canLaunch(product.productLink)) {
      await launch(product.productLink);
    } else {
      throw 'Could not launch ${product.productLink}';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(24.0),
          child: Column(
            children: <Widget>[
              SizedBox(height: 64.0),
              Container(
                height: MediaQuery.of(context).size.width * 0.6,
                width: MediaQuery.of(context).size.width * 0.6,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: CachingClient.imageProvider('${product.imgUrl}'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 36.0),
              Text(
                '${product.title}',
                style: Theme.of(context).textTheme.title,
              ),
              SizedBox(height: 24.0),
              Text(
                '${product.description}',
                textAlign: TextAlign.justify,
                style: Theme.of(context).textTheme.display1,
              ),
              SizedBox(height: 36.0),
              InkWell(
                onTap: () => _launchURL(),
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Text(
                    'See on Amazon',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
