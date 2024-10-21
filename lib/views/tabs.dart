import 'package:flutter/material.dart';
import 'package:flutter_vntt/constants.dart';
import 'package:flutter_vntt/views/news.dart';
import 'package:flutter_vntt/views/profile.dart';
import 'package:flutter_vntt/views/sales.dart';
import 'package:flutter_vntt/views/upload.dart';

class Tabs extends StatefulWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      //Khởi tạo tab controller, có thể tùy biến thay đổi
      length: 5,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80.0),
          child: Column(
            children: [
              const SizedBox(height: 50.0),
              Align(
                alignment: Alignment.topLeft,
                child: TabBar(
                  labelColor: Colors.black,
                  unselectedLabelColor: grey1,
                  unselectedLabelStyle: nonActiveTabStyle,
                  indicatorSize: TabBarIndicatorSize.label,
                  isScrollable: true,
                  indicatorColor: Colors.white,
                  labelStyle: activeTabStyle.copyWith(fontSize: 25.0),
                  tabs: const [
                    Tab(text: "Tin tức"),
                    Tab(text: "Khuyến mại"),
                    Tab(text: "Tổng hợp"),
                    Tab(text: "Profile"),
                    Tab(text: "Upload"),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            News(),
            Sales(),
            Sales(),
            Profile(),
            Upload()
          ], //các tab hoạt động tương ứng với controller
        ),
      ),
    );
  }
}
