import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/all_json.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class HotelDetail extends StatefulWidget {
  const HotelDetail({super.key});

  @override
  State<HotelDetail> createState() => _HotelDetailState();
}

class _HotelDetailState extends State<HotelDetail> {
  late int index = 0;
  @override
  void didChangeDependencies() {
    var args = ModalRoute.of(context)!.settings.arguments as Map;
    index = args["index"];
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: [
      SliverAppBar(
        floating: false,
        pinned: true,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: AppStyles.primaryColor),
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
          ),
        ),
        expandedHeight: 300.0,
        flexibleSpace: FlexibleSpaceBar(
          //title: Text(hotelList[index]["place"]),
          background: Stack(
            children: [
              Positioned.fill(
                  child: Image.asset(
                "assets/images/${hotelList[index]["image"]}",
                fit: BoxFit.cover,
              )),
              Positioned(
                  bottom: 20,
                  right: 20,
                  child: Container(
                      color: Colors.black.withOpacity(0.5),
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      child: Text(
                        hotelList[index]["place"],
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            shadows: [
                              Shadow(
                                  blurRadius: 10.0,
                                  color: AppStyles.primaryColor,
                                  offset: Offset(2.0, 2.0))
                            ]),
                      )))
            ],
          ),
        ),
      ),
      SliverList(
          delegate: SliverChildListDelegate([
        Padding(
          padding: EdgeInsets.all(16),
          child: Text(
              "t is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."),
        ),
        Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            "More Images",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          height: 200,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Image.network("https://via.placeholder.com/200x150");
              }),
        )
      ]))
    ]));
  }
}
