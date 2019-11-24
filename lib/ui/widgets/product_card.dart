import 'package:flutter/material.dart';
import 'package:saberu/models/product_model.dart';
import 'package:saberu/utils/caching_client.dart';
import 'package:url_launcher/url_launcher.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;

  ProductCard(this.product);

  _launchURL() async {
    if (await canLaunch(product.productLink)) {
      await launch(product.productLink);
    } else {
      throw 'Could not launch ${product.productLink}';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          Container(
            height: 80.0,
            width: MediaQuery.of(context).size.width * 0.2,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: CachingClient.imageProvider('${product.imgUrl}'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(4.0),
            ),
          ),
          SizedBox(width: 4.0),
          Expanded(
            child: Container(
              height: 90.0,
              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 6.0),
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                children: <Widget>[
                  Text(
                    '${product.title}',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: InkWell(
                      onTap: () => _launchURL(),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 4.0),
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
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
