import 'package:flutter/material.dart';
import 'package:travel_app/text_path.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _homeAppBar(),
      backgroundColor: Colors.grey.shade100,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: _HomeScreenText(TextConstants.homeText),
          ),
          _sizedboxCard(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: _HomeScreenText(TextConstants.RecommenText),
          ),
          _fethiyeCard(),
          _akcayCard(),
          _mersinCard(),
        ],
      ),
    );
  }

  Padding _mersinCard() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset("assets/cennetcehennem.jpg",
                  height: 90, width: 90, fit: BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Cennet Cehennem',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),
                  const SizedBox(height: 7),
                  Row(
                    children: const [
                      Icon(
                        Icons.location_on,
                        size: 13,
                      ),
                      Text('Mersin, Silifke',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w400))
                    ],
                  ),
                  const SizedBox(height: 7),
                  Row(
                    children: const [
                      Icon(
                        Icons.star,
                        color: Colors.orange,
                        size: 15,
                      ),
                      Text('4.7',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w400))
                    ],
                  )
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                  text: const TextSpan(
                      text: '\$27',
                      style: TextStyle(color: Colors.blue, fontSize: 15),
                      children: <TextSpan>[
                    TextSpan(
                      text: '/ Person',
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    )
                  ])),
            )
          ],
        ),
      ),
    );
  }

  Padding _akcayCard() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset("assets/akcay.jpg",
                  height: 90, width: 90, fit: BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Akçay',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),
                  const SizedBox(height: 7),
                  Row(
                    children: const [
                      Icon(
                        Icons.location_on,
                        size: 13,
                      ),
                      Text('Balıkesir, Edremit',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w400))
                    ],
                  ),
                  const SizedBox(height: 7),
                  Row(
                    children: const [
                      Icon(
                        Icons.star,
                        color: Colors.orange,
                        size: 15,
                      ),
                      Text('4.6',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w400))
                    ],
                  )
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                  text: const TextSpan(
                      text: '\$35',
                      style: TextStyle(color: Colors.blue, fontSize: 15),
                      children: <TextSpan>[
                    TextSpan(
                      text: '/ Person',
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    )
                  ])),
            )
          ],
        ),
      ),
    );
  }

  Padding _fethiyeCard() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset("assets/fethiye.jpg",
                  height: 90, width: 90, fit: BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Ölüdeniz',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),
                  const SizedBox(height: 7),
                  Row(
                    children: const [
                      Icon(
                        Icons.location_on,
                        size: 13,
                      ),
                      Text('Muğla, Fethiye',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w400))
                    ],
                  ),
                  const SizedBox(height: 7),
                  Row(
                    children: const [
                      Icon(
                        Icons.star,
                        color: Colors.orange,
                        size: 15,
                      ),
                      Text('4.8',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w400))
                    ],
                  )
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                  text: const TextSpan(
                      text: '\$22',
                      style: TextStyle(color: Colors.blue, fontSize: 15),
                      children: <TextSpan>[
                    TextSpan(
                      text: '/ Person',
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    )
                  ])),
            )
          ],
        ),
      ),
    );
  }

  SizedBox _sizedboxCard() {
    return SizedBox(
      height: 179,
      width: 350,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return _popularPlaceCard();
        },
      ),
    );
  }

  Container _popularPlaceCard() {
    return Container(
      height: 179,
      width: 350,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(42),
          image: DecorationImage(image: AssetImage(HomeImage()._everestImage))),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: 340,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(35),
                bottomRight: Radius.circular(35),
              ),
              color: Colors.black.withOpacity(0.4)),
          child: ListTile(
            subtitle: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Icon(
                  Icons.location_on,
                  color: Colors.white,
                  size: 13,
                ),
                Text(
                  TextConstants.LocationText,
                  style: ImageTextHome._ImageStil,
                ),
              ],
            ),
            trailing: Padding(
              padding: const EdgeInsets.only(top: 22.0),
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: const [
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                  ),
                  Text('4.8')
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container _popularPlaceCardTwo() {
    return Container(
      height: 179,
      width: 350,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(42),
          image: DecorationImage(image: AssetImage(HomeImage()._fethiyeImage))),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: 340,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(35),
                bottomRight: Radius.circular(35),
              ),
              color: Colors.black.withOpacity(0.4)),
          child: ListTile(
            subtitle: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Icon(
                  Icons.location_on,
                  color: Colors.white,
                  size: 13,
                ),
                Text(
                  TextConstants.LocationText,
                  style: ImageTextHome._ImageStil,
                ),
              ],
            ),
            trailing: Padding(
              padding: const EdgeInsets.only(top: 22.0),
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: const [
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                  ),
                  Text('4.8')
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Row _HomeScreenText(String Text1) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          Text1,
          style: const TextStyle(
              color: Colors.black,
              fontSize: 18,
              letterSpacing: 1,
              fontWeight: FontWeight.w500),
        ),
        TextButton(onPressed: () {}, child: const Text(TextConstants.SeeText)),
      ],
    );
  }

  AppBar _homeAppBar() {
    return AppBar(
      leading: const Icon(
        Icons.location_on,
        color: Colors.black,
      ),
      title: const Text(
        TextConstants.titleText,
        style: textStyleHome._TextStil,
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Icon(
            Icons.notification_add_rounded,
            color: Colors.black,
          ),
        )
      ],
    );
  }
}

class textStyleHome {
  static const _TextStil = TextStyle(
      fontSize: 25,
      color: Colors.black,
      letterSpacing: 1,
      wordSpacing: 1,
      fontWeight: FontWeight.w600);
}

class ImageTextHome {
  static const _ImageStil = TextStyle(
      fontSize: 15,
      color: Colors.white,
      letterSpacing: 1,
      wordSpacing: 1,
      fontWeight: FontWeight.w700);
}

class HomeImage {
  final String _everestImage = "assets/everest.jpg";
  final String _fethiyeImage = "assets/fethiye.jpg";
}
