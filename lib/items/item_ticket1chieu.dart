import 'package:flutter/material.dart';
import 'package:travel_app/values/app_assets.dart';
import 'package:travel_app/values/app_colors.dart';

class itemTicket extends StatefulWidget {
  const itemTicket({super.key});

  @override
  State<itemTicket> createState() => _itemTicketState();
}

class _itemTicketState extends State<itemTicket> {
  int _countNguoiLon = 0;
  int _countTreEm12Tuoi = 0;
  int _countTreEm2Tuoi = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
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
            Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Row(
                  children: [
                    itemBookingflight(),
                    Spacer(),
                    Container(child: Image.asset(AppAssets.ngayDi))
                  ],
                )),
            itemBookingflight(),
            Text(
              'Hàng khách',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF71AFE5)),
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              child: Row(
                children: [
                  Text(
                    'Người lớn',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Container(
                          margin: EdgeInsets.only(right: 10),
                          child: InkWell(
                              onTap: () {
                                setState(() {
                                  _countNguoiLon = _countNguoiLon > 0
                                      ? _countNguoiLon - 1
                                      : _countNguoiLon;
                                });
                              },
                              child: Image.asset(AppAssets.minus))),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Text(_countNguoiLon.toString().padLeft(2, '0'),
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      ),
                      InkWell(
                          onTap: () {
                            setState(() {
                              _countNguoiLon++;
                            });
                          },
                          child: Image.asset(AppAssets.plus))
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Row(
                children: [
                  Text(
                    'Trẻ em(2-12 tuổi)',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Container(
                          margin: EdgeInsets.only(right: 10),
                          child: InkWell(
                              onTap: () {
                                setState(() {
                                  _countTreEm12Tuoi = _countTreEm12Tuoi > 0
                                      ? _countTreEm12Tuoi - 1
                                      : _countTreEm12Tuoi;
                                });
                              },
                              child: Image.asset(AppAssets.minus))),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Text(
                            _countTreEm12Tuoi.toString().padLeft(2, '0'),
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      ),
                      InkWell(
                          onTap: () {
                            setState(() {
                              _countTreEm12Tuoi++;
                            });
                          },
                          child: Image.asset(AppAssets.plus))
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Row(
                children: [
                  Text(
                    'Trẻ em(Dưới 2 tuổi)',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Container(
                          margin: EdgeInsets.only(right: 10),
                          child: InkWell(
                              onTap: () {
                                setState(() {
                                  _countTreEm2Tuoi = _countTreEm2Tuoi > 0
                                      ? _countTreEm2Tuoi - 1
                                      : _countTreEm2Tuoi;
                                });
                              },
                              child: Image.asset(AppAssets.minus))),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Text(_countTreEm2Tuoi.toString().padLeft(2, '0'),
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      ),
                      InkWell(
                          onTap: () {
                            setState(() {
                              _countTreEm2Tuoi++;
                            });
                          },
                          child: Image.asset(AppAssets.plus))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
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
        // Spacer(),
        // Container(child: Image.asset(AppAssets.ngayDi))
      ],
    );
  }
}
