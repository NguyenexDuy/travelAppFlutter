import 'package:flutter/material.dart';
import 'package:travel_app/values/app_assets.dart';
import 'package:travel_app/values/app_colors.dart';
import 'package:travel_app/values/app_images.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class CardItem {
  final String urlImage;
  final String title;
  final String price;

  const CardItem({
    required this.urlImage,
    required this.title,
    required this.price,
  });
}

class _HomePageState extends State<HomePage> {
  List<CardItem> items = [
    CardItem(urlImage: AppImages.PhuQuoc, title: 'Đà Nẵng', price: '90VND'),
    CardItem(urlImage: AppImages.DaNang, title: 'Đà lạt', price: '120VND'),
    CardItem(urlImage: AppImages.NhaTrang, title: 'Nha Trang', price: '987VND'),
    CardItem(urlImage: AppImages.PhuQuoc, title: 'Phú Quốc', price: '38VND'),
    CardItem(urlImage: AppImages.Seoul, title: 'Seoul', price: '89VND'),
    CardItem(urlImage: AppImages.Singapore, title: 'Singapore', price: '82VND')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: AppColors.primaryColor,
        title: Container(
          color: AppColors.primaryColor,
          alignment: Alignment.bottomLeft,
          height: 70,
          child: Text(
            'REDNTT',
            style: TextStyle(
                color: AppColors.textColor,
                fontSize: 35,
                fontWeight: FontWeight.bold),
          ),
        ),
        leading: InkWell(
          onTap: () {},
          child: Image.asset(AppAssets.logo),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            iconSize: 40,
          )
        ],
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'SẢI CÁNH VƯƠN CAO',
                style: TextStyle(
                    fontSize: 20,
                    color: AppColors.textColor,
                    fontWeight: FontWeight.bold),
              ),
              Image.asset(AppImages.Singapore),
              RichText(
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  text: TextSpan(
                      text: 'Chuyến từ ',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textColor,
                      ),
                      children: [
                        TextSpan(
                            text: 'Hồ Chí Minh',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white))
                      ])),
              Container(
                height: 209,
                child: ListView.separated(
                  padding: EdgeInsets.all(10),
                  scrollDirection: Axis.horizontal,
                  itemCount: items.length,
                  separatorBuilder: (context, _) => SizedBox(
                    width: 12,
                  ),
                  itemBuilder: (context, index) =>
                      buildCard(item: items[index]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCard({
    required CardItem item,
  }) =>
      Container(
        width: 129,
        height: 173,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Material(
                  child: Ink.image(
                    image: AssetImage(item.urlImage),
                    fit: BoxFit.cover,
                    child: InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PlacePage(
                                    item: item,
                                  ))),
                    ),
                  ),
                  // child: Image.asset(
                  //   item.urlImage,
                  //   fit: BoxFit.cover,
                  // ),
                ),
              ),
            ),
            Text(
              item.title,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(item.price,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textColor))
          ],
        ),
      );

  // Stack item_flight({
  //   required CardItem item,
  // }) {
  //   return Stack(
  //     alignment: Alignment.bottomLeft,
  //     children: [
  //       ClipRRect(
  //         borderRadius: BorderRadius.circular(10),
  //         child: Image.asset(
  //           item.urlImage,
  //           width: 129,
  //           height: 173,
  //           fit: BoxFit.cover,
  //         ),
  //       ),
  //       Container(
  //         width: 129,
  //         decoration: BoxDecoration(
  //           borderRadius: BorderRadius.circular(10),
  //           gradient: LinearGradient(
  //             colors: [
  //               Colors.transparent, // Màu trong suốt ở đầu
  //               Colors.black, // Màu gradient
  //             ],
  //             begin: Alignment.topCenter,
  //             end: Alignment.bottomCenter,
  //           ),
  //         ),
  //         child: Padding(
  //           padding: const EdgeInsets.all(8.0),
  //           child: RichText(
  //             overflow: TextOverflow.ellipsis,
  //             text: TextSpan(
  //               // text: 'Phú Quốc\n',
  //               text: item.title,
  //               style: TextStyle(
  //                 fontSize: 15,
  //                 fontWeight: FontWeight.bold,
  //                 color: Colors.white,
  //               ),
  //               children: [
  //                 TextSpan(
  //                   // text: '1,031,000 VND',
  //                   text: item.price,
  //                   style: TextStyle(
  //                     fontWeight: FontWeight.bold,
  //                     fontSize: 13,
  //                     color: AppColors.textColor,
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           ),
  //         ),
  //       ),
  //     ],
  //   );
  // }
}

class PlacePage extends StatelessWidget {
  final CardItem item;
  const PlacePage({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(item.title),
      ),
      body: Column(
        children: [
          AspectRatio(
              aspectRatio: 4 / 3,
              child: Image.asset(
                item.urlImage,
                fit: BoxFit.cover,
              )),
          const SizedBox(
            height: 8,
          ),
          Text(
            item.title,
            style: TextStyle(
                fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
          )
        ],
      ),
    );
  }
}
