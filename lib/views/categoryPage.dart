import 'package:e_commerce_ui/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CategoryPage extends StatelessWidget {
  CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 10,
        child: Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.menu),
            backgroundColor: Colors.white,
            title: const Text(
              'Fly Buy',
              style: TextStyle(
                  color: Color.fromARGB(255, 2, 135, 153),
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            elevation: 0,
          ),
          body: SafeArea(
              child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  //width: 50,
                  height: 50,
                  child: TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        hintText: 'Search here...'),
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                const Text(
                  ' Categories',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  height: 40,
                  child: TabBar(
                      indicator: CircleTabIndicator(
                          color: Color.fromARGB(255, 2, 135, 153), radius: 4),
                      labelColor: Colors.black,
                      unselectedLabelColor: Color.fromARGB(255, 112, 108, 108),
                      isScrollable: true,
                      tabs: const [
                        Text(
                          "Men's T-shirts",
                        ),
                        Text("Women's Footwear"),
                        Text("Bags,Wallets"),
                        Text("Smart Headphones"),
                        Text("Wrist Watches"),
                        Text("Smartphones"),
                        Text("Womens'Clothing"),
                        Text("Home Decor"),
                        Text("Casual Shoes"),
                        Text("Caps")
                      ]),
                ),
                SizedBox(
                  height: 14,
                ),
                Container(
                  margin: EdgeInsets.only(left: 5, right: 5),
                  width: double.maxFinite,
                  height: 330,
                  child: TabBarView(children: [
                    ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return Card(
                            //clipBehavior: Clip.antiAlias,
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            color: Colors.white,
                            child: Column(
                                //crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    clipBehavior: Clip.antiAlias,
                                    margin: EdgeInsets.only(
                                        right: 15,
                                        left: 15,
                                        bottom: 13,
                                        top: 12),
                                    height: 220,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        image: DecorationImage(
                                            image: AssetImage(tShirt[index]),
                                            fit: BoxFit.cover)),
                                  ),
                                  SizedBox(
                                    height: 77,
                                    width: 180,
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            tshirtBrand[index],
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold
                                                // overflow: TextOverflow.clip
                                                ),
                                          ),
                                          Text(
                                            tshirtTypes[index],
                                          ),
                                          Text(
                                            tshirtRS[index],
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold
                                                // overflow: TextOverflow.clip
                                                ),
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ]),
                          );
                        }),
                    ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            child: Column(
                              //crossAxisAlignment: CrossAxisAlignment.stretch,
                              // mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      right: 15, top: 21, bottom: 23, left: 15),
                                  height: 200,
                                  width: 200,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      image: DecorationImage(
                                          image: AssetImage(footwear[index]),
                                          fit: BoxFit.cover)),
                                ),
                                Text(footwearTypes[index])
                              ],
                            ),
                          );
                        }),
                    ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(right: 15, top: 35),
                            height: 300,
                            width: 220,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage(bagImage[index]),
                                    fit: BoxFit.cover)),
                          );
                        }),
                    ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(right: 15, top: 35),
                            height: 300,
                            width: 220,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage(bagImage[index]),
                                    fit: BoxFit.cover)),
                          );
                        }),
                    ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(right: 15, top: 35),
                            height: 300,
                            width: 220,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage(bagImage[index]),
                                    fit: BoxFit.cover)),
                          );
                        }),
                    ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(right: 15, top: 35),
                            height: 300,
                            width: 220,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage(bagImage[index]),
                                    fit: BoxFit.cover)),
                          );
                        }),
                    ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(right: 15, top: 35),
                            height: 300,
                            width: 220,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage(bagImage[index]),
                                    fit: BoxFit.cover)),
                          );
                        }),
                    ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(right: 15, top: 35),
                            height: 300,
                            width: 220,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage(bagImage[index]),
                                    fit: BoxFit.cover)),
                          );
                        }),
                    ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(right: 15, top: 35),
                            height: 300,
                            width: 220,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage(bagImage[index]),
                                    fit: BoxFit.cover)),
                          );
                        }),
                    ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(right: 15, top: 35),
                            height: 300,
                            width: 220,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage(bagImage[index]),
                                    fit: BoxFit.cover)),
                          );
                        })
                  ]),
                )
              ],
            ),
          )),
        ));
  }
}

class CircleTabIndicator extends Decoration {
  final BoxPainter _painter;

  CircleTabIndicator({required Color color, required double radius})
      : _painter = _CirclePainter(color, radius);

  @override
  BoxPainter createBoxPainter([void onChanged]) => _painter;
}

class _CirclePainter extends BoxPainter {
  final Paint _paint;
  final double radius;

  _CirclePainter(Color color, this.radius)
      : _paint = Paint()
          ..color = color
          ..isAntiAlias = true;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    final Offset circleOffset =
        offset + Offset(cfg.size!.width / 2, cfg.size!.height - radius);
    canvas.drawCircle(circleOffset, radius, _paint);
  }
}
