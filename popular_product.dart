
import 'package:appcommerce/aa/constants.dart';
import 'package:appcommerce/components/product_card.dart';
import 'package:appcommerce/models/Product.dart';
import 'package:flutter/material.dart';
import '../../../size_config.dart';
class PopularProducts extends StatefulWidget {
  @override
  _NeedsState createState() => _NeedsState();
}

class _NeedsState extends State<PopularProducts> {

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Text("المنتجات",

            textAlign: TextAlign.right,
            style: TextStyle(
             // color: Colors.pink.shade900,
              fontFamily: 'beIN',
              fontWeight: FontWeight.bold,
              fontSize: 22
            ),
          ),
        ),

        SizedBox(height: getProportionateScreenWidth(20)),
        Container( height: MediaQuery.of(context).size.height,
          //  width: 400,

          // padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[



              Expanded(
                child: Padding(

                  padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
                  child: GridView.builder(
                      itemCount: demoProducts.length,
                      primary: false,

                       physics: const ClampingScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

                        crossAxisCount: 2,
                        mainAxisSpacing: 15.0,
                        crossAxisSpacing: kDefaultPaddin,
                        childAspectRatio: 0.75,
                      ),

                      itemBuilder: (context, index) => ProductCard(
                         product: demoProducts[index],
                        /* press: () => Navigator.push(
                                 context,
                                 MaterialPageRoute(
                                   builder: (context) => DetailsScreen(
                                     product: products[index],
                                   ),
                                 )
                             ),*/
                      )),
                ),
              ),
            ],
          ),

        ),





     ],
    );
  }
}
