import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const urlImage =
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLMl3Qmub_uzuDDylzpAmQ9dn1kzwQ__fY1A&usqp=CAU";
    return Scaffold(
        body: Material(
      color: Color(0XFFF5F6F9),
      child: ListView(
        //padding: EdgeInsets.only(left: 10),
        children: <Widget>[
          Card(
            child: Container(
              child: buildHeader(urlImage: urlImage, onClicked: () {}),
            ),
          ),
          Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  child: Row(
                    children: const <Widget>[
                      Text(
                        "Giới thiệu",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                    ],
                  ),
                ),
                buildIntroduce(
                    icon: Icons.cake_outlined,
                    text: "Sinh nhật",
                    text1: "27/04/2001"),
                buildIntroduce(
                    icon: Icons.people_outline,
                    text: "Giới tính",
                    text1: "Nam"),
                buildIntroduce(
                    icon: Icons.access_time_sharp, text: "Đang hoạt động"),
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  child: Row(
                    children: const <Widget>[
                      Text("Thông tin liên hệ",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18)),
                    ],
                  ),
                ),
                buildIntroduce(
                    icon: Icons.not_listed_location_outlined,
                    text: "Địa chỉ:",
                    text1: "Phú Hòa,Thủ Dầu Một,BD"),
                buildIntroduce(
                    icon: Icons.email_outlined,
                    text: "Email:",
                    text1: "ngohieu@gmail.com"),
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  child: Row(
                    children: const <Widget>[
                      Text(
                        "Quyền riêng tư & hỗ trợ",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                      Expanded(child: SizedBox()),
                    ],
                  ),
                ),
                InkWell(
                    onTap: () {},
                    child: buildIntroduce(
                      icon: Icons.notifications_active_outlined,
                      text: "Tắt thông báo",
                    )),
                buildIntroduce(
                    icon: Icons.support_outlined,
                    text: "Hỗ trợ:",
                    text1: "19001187"),
                buildIntroduce(
                    icon: Icons.warning_amber_rounded,
                    text: "Có gì đó không ổn ?"),
              ],
            ),
          ),
        ],
      ),
    ));
  }

  Widget buildIntroduce(
      {required IconData icon, required String text, String? text1}) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
          child: Container(
            color: Colors.white60,
            child: Row(
              children: <Widget>[
                Icon(
                  icon,
                  size: 25,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  text,
                  style: const TextStyle(fontSize: 15),
                ),
                const SizedBox(
                  width: 5,
                ),
                text1 != null
                    ? Text(
                        text1.toString(),
                        style: const TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      )
                    : Container()
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget buildHeader(
      {required String urlImage, required VoidCallback onClicked}) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 90,
          width: 90,
          child: Stack(
            clipBehavior: Clip.none,
            fit: StackFit.expand,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: NetworkImage(urlImage),
              ),
              Positioned(
                  right: -5,
                  bottom: 0,
                  child: SizedBox(
                    height: 28,
                    width: 28,
                    child: TextButton(
                      // padding: EdgeInsets.zero,
                      // shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.circular(50)),
                      // color: Color(0xFFF5F6F9),
                      style: ButtonStyle(
                        padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
                            EdgeInsets.zero),
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(0xFFF5F6F9)),
                      ),
                      onPressed: onClicked,
                      child: Icon(Icons.camera_alt_outlined),
                    ),
                  ))
            ],
          ),
        )
      ],
    );
  }
}
