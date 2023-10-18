import 'package:flutter/material.dart';
import 'package:travel_app/values/app_assets.dart';
import 'package:travel_app/values/app_colors.dart';

class itemTicket extends StatefulWidget {
  const itemTicket({super.key});

  @override
  State<itemTicket> createState() => _itemTicketState();
}

class _itemTicketState extends State<itemTicket> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(15), // Đặt bán kính bo tròn ở đây
        ),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        margin: EdgeInsets.only(bottom: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            itemBookingflight(),
            itemBookingflight(),
            Text(
              'Hàng khách',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF71AFE5)),
            ),
            Row(
              children: [
                Text(
                  'Người lớn',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Spacer(),
                item_numberGuest()
              ],
            ),
            Row(
              children: [
                Text(
                  'Trẻ em(2-12 tuổi)',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Spacer(),
                item_numberGuest()
              ],
            ),
            Row(
              children: [
                Text(
                  'Trẻ em(Dưới 2 tuổi)',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Spacer(),
                item_numberGuest()
              ],
            )
          ],
        ),
      ),
    );
  }

  Row item_numberGuest() {
    return Row(
      children: [
        InkWell(onTap: () {}, child: Image.asset(AppAssets.minus)),
        Text('02',
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
        Image.asset(AppAssets.plus)
      ],
    );
  }

  Row itemBookingflight() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Điểm đi',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF71AFE5)),
            ),
            Text('SGN',
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            Text('TP Hồ Chí Minh, Vn',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white))
          ],
        ),
        Spacer(),
        Container(child: Image.asset(AppAssets.ngayDi))
      ],
    );
  }
}
