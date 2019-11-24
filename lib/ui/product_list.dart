import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saberu/models/product_model.dart';
import 'package:saberu/ui/product_details.dart';
import 'package:saberu/ui/widgets/product_card.dart';

class ProductList extends StatefulWidget {
  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList>
    with SingleTickerProviderStateMixin {
  bool _isLoading = true;
  List<ProductModel> _products = List<ProductModel>();

  @override
  void initState() {
    super.initState();
    _initProducts();
  }

  /// Get Products from database
  _initProducts() async {
    _products
      ..add(ProductModel.fromMap('1', {
        'title':
            'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur eget mauris eget tortor cursus varius. Etiam faucibus mi vel elementum hendrerit. Maecenas et tortor quis nibh convallis pharetra. Nunc id sapien non dolor accumsan tempor et non sapien. Vestibulum dictum est volutpat justo aliquam, varius laoreet nisi varius. Sed non quam porttitor, sagittis nisl at, sodales ligula. Etiam iaculis nisi ut pulvinar vehicula. Vivamus at tellus ut sapien condimentum pharetra et in enim. In nec fringilla erat. ',
        'imgUrl':
            'https://media1.s-nbcnews.com/j/newscms/2019_40/1487941/elsa-frozen-today-square-190930_9b00e4263b90a7a2da04c98b01babf94.fit-760w.jpg',
        'productLink':
            'https://www.amazon.com/Google-Pixel-Memory-Unlocked-Clearly/dp/B07R7DY911/ref=sr_1_1_sspa?keywords=google%2Bpixel%2B3a&qid=1570532469&sr=8-1-spons&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUEyMkJEN01TUTk5VjI1JmVuY3J5cHRlZElkPUEwNjY5ODU2QzhJRkNTNTlXSEJCJmVuY3J5cHRlZEFkSWQ9QTA4MDE1NjgySkszNDlRWjhMSDIwJndpZGdldE5hbWU9c3BfYXRmJmFjdGlvbj1jbGlja1JlZGlyZWN0JmRvTm90TG9nQ2xpY2s9dHJ1ZQ&th=1',
      }))
      ..add(ProductModel.fromMap('2', {
        'title':
            'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur eget mauris eget tortor cursus varius. Etiam faucibus mi vel elementum hendrerit. Maecenas et tortor quis nibh convallis pharetra. Nunc id sapien non dolor accumsan tempor et non sapien. Vestibulum dictum est volutpat justo aliquam, varius laoreet nisi varius. Sed non quam porttitor, sagittis nisl at, sodales ligula. Etiam iaculis nisi ut pulvinar vehicula. Vivamus at tellus ut sapien condimentum pharetra et in enim. In nec fringilla erat. ',
        'imgUrl':
            'https://media1.s-nbcnews.com/j/newscms/2019_40/1487941/elsa-frozen-today-square-190930_9b00e4263b90a7a2da04c98b01babf94.fit-760w.jpg',
        'productLink':
            'https://www.amazon.com/Google-Pixel-Memory-Unlocked-Clearly/dp/B07R7DY911/ref=sr_1_1_sspa?keywords=google%2Bpixel%2B3a&qid=1570532469&sr=8-1-spons&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUEyMkJEN01TUTk5VjI1JmVuY3J5cHRlZElkPUEwNjY5ODU2QzhJRkNTNTlXSEJCJmVuY3J5cHRlZEFkSWQ9QTA4MDE1NjgySkszNDlRWjhMSDIwJndpZGdldE5hbWU9c3BfYXRmJmFjdGlvbj1jbGlja1JlZGlyZWN0JmRvTm90TG9nQ2xpY2s9dHJ1ZQ&th=1',
      }))
      ..add(ProductModel.fromMap('3', {
        'title':
            'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur eget mauris eget tortor cursus varius. Etiam faucibus mi vel elementum hendrerit. Maecenas et tortor quis nibh convallis pharetra. Nunc id sapien non dolor accumsan tempor et non sapien. Vestibulum dictum est volutpat justo aliquam, varius laoreet nisi varius. Sed non quam porttitor, sagittis nisl at, sodales ligula. Etiam iaculis nisi ut pulvinar vehicula. Vivamus at tellus ut sapien condimentum pharetra et in enim. In nec fringilla erat. ',
        'imgUrl':
            'https://media1.s-nbcnews.com/j/newscms/2019_40/1487941/elsa-frozen-today-square-190930_9b00e4263b90a7a2da04c98b01babf94.fit-760w.jpg',
        'productLink':
            'https://www.amazon.com/Google-Pixel-Memory-Unlocked-Clearly/dp/B07R7DY911/ref=sr_1_1_sspa?keywords=google%2Bpixel%2B3a&qid=1570532469&sr=8-1-spons&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUEyMkJEN01TUTk5VjI1JmVuY3J5cHRlZElkPUEwNjY5ODU2QzhJRkNTNTlXSEJCJmVuY3J5cHRlZEFkSWQ9QTA4MDE1NjgySkszNDlRWjhMSDIwJndpZGdldE5hbWU9c3BfYXRmJmFjdGlvbj1jbGlja1JlZGlyZWN0JmRvTm90TG9nQ2xpY2s9dHJ1ZQ&th=1',
      }))
      ..add(ProductModel.fromMap('4', {
        'title':
            'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur eget mauris eget tortor cursus varius. Etiam faucibus mi vel elementum hendrerit. Maecenas et tortor quis nibh convallis pharetra. Nunc id sapien non dolor accumsan tempor et non sapien. Vestibulum dictum est volutpat justo aliquam, varius laoreet nisi varius. Sed non quam porttitor, sagittis nisl at, sodales ligula. Etiam iaculis nisi ut pulvinar vehicula. Vivamus at tellus ut sapien condimentum pharetra et in enim. In nec fringilla erat. ',
        'imgUrl':
            'https://media1.s-nbcnews.com/j/newscms/2019_40/1487941/elsa-frozen-today-square-190930_9b00e4263b90a7a2da04c98b01babf94.fit-760w.jpg',
        'productLink':
            'https://www.amazon.com/Google-Pixel-Memory-Unlocked-Clearly/dp/B07R7DY911/ref=sr_1_1_sspa?keywords=google%2Bpixel%2B3a&qid=1570532469&sr=8-1-spons&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUEyMkJEN01TUTk5VjI1JmVuY3J5cHRlZElkPUEwNjY5ODU2QzhJRkNTNTlXSEJCJmVuY3J5cHRlZEFkSWQ9QTA4MDE1NjgySkszNDlRWjhMSDIwJndpZGdldE5hbWU9c3BfYXRmJmFjdGlvbj1jbGlja1JlZGlyZWN0JmRvTm90TG9nQ2xpY2s9dHJ1ZQ&th=1',
      }))
      ..add(ProductModel.fromMap('5', {
        'title':
            'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur eget mauris eget tortor cursus varius. Etiam faucibus mi vel elementum hendrerit. Maecenas et tortor quis nibh convallis pharetra. Nunc id sapien non dolor accumsan tempor et non sapien. Vestibulum dictum est volutpat justo aliquam, varius laoreet nisi varius. Sed non quam porttitor, sagittis nisl at, sodales ligula. Etiam iaculis nisi ut pulvinar vehicula. Vivamus at tellus ut sapien condimentum pharetra et in enim. In nec fringilla erat. ',
        'imgUrl':
            'https://media1.s-nbcnews.com/j/newscms/2019_40/1487941/elsa-frozen-today-square-190930_9b00e4263b90a7a2da04c98b01babf94.fit-760w.jpg',
        'productLink':
            'https://www.amazon.com/Google-Pixel-Memory-Unlocked-Clearly/dp/B07R7DY911/ref=sr_1_1_sspa?keywords=google%2Bpixel%2B3a&qid=1570532469&sr=8-1-spons&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUEyMkJEN01TUTk5VjI1JmVuY3J5cHRlZElkPUEwNjY5ODU2QzhJRkNTNTlXSEJCJmVuY3J5cHRlZEFkSWQ9QTA4MDE1NjgySkszNDlRWjhMSDIwJndpZGdldE5hbWU9c3BfYXRmJmFjdGlvbj1jbGlja1JlZGlyZWN0JmRvTm90TG9nQ2xpY2s9dHJ1ZQ&th=1',
      }))
      ..add(ProductModel.fromMap('6', {
        'title':
            'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur eget mauris eget tortor cursus varius. Etiam faucibus mi vel elementum hendrerit. Maecenas et tortor quis nibh convallis pharetra. Nunc id sapien non dolor accumsan tempor et non sapien. Vestibulum dictum est volutpat justo aliquam, varius laoreet nisi varius. Sed non quam porttitor, sagittis nisl at, sodales ligula. Etiam iaculis nisi ut pulvinar vehicula. Vivamus at tellus ut sapien condimentum pharetra et in enim. In nec fringilla erat. ',
        'imgUrl':
            'https://media1.s-nbcnews.com/j/newscms/2019_40/1487941/elsa-frozen-today-square-190930_9b00e4263b90a7a2da04c98b01babf94.fit-760w.jpg',
        'productLink':
            'https://www.amazon.com/Google-Pixel-Memory-Unlocked-Clearly/dp/B07R7DY911/ref=sr_1_1_sspa?keywords=google%2Bpixel%2B3a&qid=1570532469&sr=8-1-spons&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUEyMkJEN01TUTk5VjI1JmVuY3J5cHRlZElkPUEwNjY5ODU2QzhJRkNTNTlXSEJCJmVuY3J5cHRlZEFkSWQ9QTA4MDE1NjgySkszNDlRWjhMSDIwJndpZGdldE5hbWU9c3BfYXRmJmFjdGlvbj1jbGlja1JlZGlyZWN0JmRvTm90TG9nQ2xpY2s9dHJ1ZQ&th=1',
      }))
      ..add(ProductModel.fromMap('7', {
        'title':
            'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur eget mauris eget tortor cursus varius. Etiam faucibus mi vel elementum hendrerit. Maecenas et tortor quis nibh convallis pharetra. Nunc id sapien non dolor accumsan tempor et non sapien. Vestibulum dictum est volutpat justo aliquam, varius laoreet nisi varius. Sed non quam porttitor, sagittis nisl at, sodales ligula. Etiam iaculis nisi ut pulvinar vehicula. Vivamus at tellus ut sapien condimentum pharetra et in enim. In nec fringilla erat. ',
        'imgUrl':
            'https://media1.s-nbcnews.com/j/newscms/2019_40/1487941/elsa-frozen-today-square-190930_9b00e4263b90a7a2da04c98b01babf94.fit-760w.jpg',
        'productLink':
            'https://www.amazon.com/Google-Pixel-Memory-Unlocked-Clearly/dp/B07R7DY911/ref=sr_1_1_sspa?keywords=google%2Bpixel%2B3a&qid=1570532469&sr=8-1-spons&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUEyMkJEN01TUTk5VjI1JmVuY3J5cHRlZElkPUEwNjY5ODU2QzhJRkNTNTlXSEJCJmVuY3J5cHRlZEFkSWQ9QTA4MDE1NjgySkszNDlRWjhMSDIwJndpZGdldE5hbWU9c3BfYXRmJmFjdGlvbj1jbGlja1JlZGlyZWN0JmRvTm90TG9nQ2xpY2s9dHJ1ZQ&th=1',
      }))
      ..add(ProductModel.fromMap('8', {
        'title':
            'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur eget mauris eget tortor cursus varius. Etiam faucibus mi vel elementum hendrerit. Maecenas et tortor quis nibh convallis pharetra. Nunc id sapien non dolor accumsan tempor et non sapien. Vestibulum dictum est volutpat justo aliquam, varius laoreet nisi varius. Sed non quam porttitor, sagittis nisl at, sodales ligula. Etiam iaculis nisi ut pulvinar vehicula. Vivamus at tellus ut sapien condimentum pharetra et in enim. In nec fringilla erat. ',
        'imgUrl':
            'https://media1.s-nbcnews.com/j/newscms/2019_40/1487941/elsa-frozen-today-square-190930_9b00e4263b90a7a2da04c98b01babf94.fit-760w.jpg',
        'productLink':
            'https://www.amazon.com/Google-Pixel-Memory-Unlocked-Clearly/dp/B07R7DY911/ref=sr_1_1_sspa?keywords=google%2Bpixel%2B3a&qid=1570532469&sr=8-1-spons&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUEyMkJEN01TUTk5VjI1JmVuY3J5cHRlZElkPUEwNjY5ODU2QzhJRkNTNTlXSEJCJmVuY3J5cHRlZEFkSWQ9QTA4MDE1NjgySkszNDlRWjhMSDIwJndpZGdldE5hbWU9c3BfYXRmJmFjdGlvbj1jbGlja1JlZGlyZWN0JmRvTm90TG9nQ2xpY2s9dHJ1ZQ&th=1',
      }))
      ..add(ProductModel.fromMap('9', {
        'title':
            'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur eget mauris eget tortor cursus varius. Etiam faucibus mi vel elementum hendrerit. Maecenas et tortor quis nibh convallis pharetra. Nunc id sapien non dolor accumsan tempor et non sapien. Vestibulum dictum est volutpat justo aliquam, varius laoreet nisi varius. Sed non quam porttitor, sagittis nisl at, sodales ligula. Etiam iaculis nisi ut pulvinar vehicula. Vivamus at tellus ut sapien condimentum pharetra et in enim. In nec fringilla erat. ',
        'imgUrl':
            'https://media1.s-nbcnews.com/j/newscms/2019_40/1487941/elsa-frozen-today-square-190930_9b00e4263b90a7a2da04c98b01babf94.fit-760w.jpg',
        'productLink':
            'https://www.amazon.com/Google-Pixel-Memory-Unlocked-Clearly/dp/B07R7DY911/ref=sr_1_1_sspa?keywords=google%2Bpixel%2B3a&qid=1570532469&sr=8-1-spons&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUEyMkJEN01TUTk5VjI1JmVuY3J5cHRlZElkPUEwNjY5ODU2QzhJRkNTNTlXSEJCJmVuY3J5cHRlZEFkSWQ9QTA4MDE1NjgySkszNDlRWjhMSDIwJndpZGdldE5hbWU9c3BfYXRmJmFjdGlvbj1jbGlja1JlZGlyZWN0JmRvTm90TG9nQ2xpY2s9dHJ1ZQ&th=1',
      }))
      ..add(ProductModel.fromMap('10', {
        'title':
            'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur eget mauris eget tortor cursus varius. Etiam faucibus mi vel elementum hendrerit. Maecenas et tortor quis nibh convallis pharetra. Nunc id sapien non dolor accumsan tempor et non sapien. Vestibulum dictum est volutpat justo aliquam, varius laoreet nisi varius. Sed non quam porttitor, sagittis nisl at, sodales ligula. Etiam iaculis nisi ut pulvinar vehicula. Vivamus at tellus ut sapien condimentum pharetra et in enim. In nec fringilla erat. ',
        'imgUrl':
            'https://media1.s-nbcnews.com/j/newscms/2019_40/1487941/elsa-frozen-today-square-190930_9b00e4263b90a7a2da04c98b01babf94.fit-760w.jpg',
        'productLink':
            'https://www.amazon.com/Google-Pixel-Memory-Unlocked-Clearly/dp/B07R7DY911/ref=sr_1_1_sspa?keywords=google%2Bpixel%2B3a&qid=1570532469&sr=8-1-spons&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUEyMkJEN01TUTk5VjI1JmVuY3J5cHRlZElkPUEwNjY5ODU2QzhJRkNTNTlXSEJCJmVuY3J5cHRlZEFkSWQ9QTA4MDE1NjgySkszNDlRWjhMSDIwJndpZGdldE5hbWU9c3BfYXRmJmFjdGlvbj1jbGlja1JlZGlyZWN0JmRvTm90TG9nQ2xpY2s9dHJ1ZQ&th=1',
      }))
      ..add(ProductModel.fromMap('11', {
        'title':
            'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur eget mauris eget tortor cursus varius. Etiam faucibus mi vel elementum hendrerit. Maecenas et tortor quis nibh convallis pharetra. Nunc id sapien non dolor accumsan tempor et non sapien. Vestibulum dictum est volutpat justo aliquam, varius laoreet nisi varius. Sed non quam porttitor, sagittis nisl at, sodales ligula. Etiam iaculis nisi ut pulvinar vehicula. Vivamus at tellus ut sapien condimentum pharetra et in enim. In nec fringilla erat. ',
        'imgUrl':
            'https://media1.s-nbcnews.com/j/newscms/2019_40/1487941/elsa-frozen-today-square-190930_9b00e4263b90a7a2da04c98b01babf94.fit-760w.jpg',
        'productLink':
            'https://www.amazon.com/Google-Pixel-Memory-Unlocked-Clearly/dp/B07R7DY911/ref=sr_1_1_sspa?keywords=google%2Bpixel%2B3a&qid=1570532469&sr=8-1-spons&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUEyMkJEN01TUTk5VjI1JmVuY3J5cHRlZElkPUEwNjY5ODU2QzhJRkNTNTlXSEJCJmVuY3J5cHRlZEFkSWQ9QTA4MDE1NjgySkszNDlRWjhMSDIwJndpZGdldE5hbWU9c3BfYXRmJmFjdGlvbj1jbGlja1JlZGlyZWN0JmRvTm90TG9nQ2xpY2s9dHJ1ZQ&th=1',
      }));
    _isLoading = false;
    if (mounted) setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return _isLoading
        ? CupertinoActivityIndicator()
        : ListView.builder(
            itemCount: _products.length,
            itemBuilder: (buildContext, index) => InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) =>
                            ProductDetailsScreen(_products[index]))),
                child: ProductCard(_products[index])),
          );
  }
}
