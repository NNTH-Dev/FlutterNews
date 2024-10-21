import 'package:flutter/material.dart';
import 'package:flutter_vntt/constants.dart';
import 'package:flutter_vntt/models/news_model.dart';
import 'package:flutter_vntt/views/detail.dart';
import 'package:flutter_vntt/widgets/header_card.dart';
import 'package:flutter_vntt/widgets/line_card.dart';

//Trang News này có cái Header Slide chạy ngang to vl
class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  int countPoint = 0;
  late ScrollController controller;
  List<String> items = new List.generate(100, (index) => 'Hello $index');
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  void initState() {
    super.initState();
    countPoint = 1;
    controller = new ScrollController()..addListener(_scrollListener);
  }

  @override
  void dispose() {
    controller.removeListener(_scrollListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          //View Header ảnh to vc chạy ngang
          Container(
            width: double.infinity,
            constraints: const BoxConstraints(minHeight: 320, maxHeight: 350),
            padding: const EdgeInsets.only(left: 12),
            child: ListView.builder(
              itemCount: newsList.length,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                var news = newsList[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            Details(newsmodel: news), //vào detail kèm thông tin
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(right: 12),
                    child: HeaderCard(newsmodel: news), //Component Slide Header
                  ),
                );
              },
            ),
          ),
          //View tiêu đề ở giữa
          const SizedBox(height: 25.0),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child:
                  Text("TIN TỨC MỚI NHẤT TRONG NGÀY", style: nonActiveTabStyle),
            ),
          ),

          //Danh sách các item news ở dạng nhỏ hơn
          ListView.builder(
            itemCount: newsList.length,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            itemBuilder: (context, index) {
              var recent = newsList[index];
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Details(newsmodel: recent),
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  constraints:
                      const BoxConstraints(minHeight: 100, maxHeight: 140),
                  margin: const EdgeInsets.symmetric(
                      horizontal: 18.0, vertical: 8.0),
                  child: LineCard(newsmodel: recent), //tương tự như trên
                ),
              );
            },
          )
        ],
      ),
    );
  }

  void _scrollListener() {
    print(controller.position.extentAfter);
    if (controller.position.extentAfter < 500) {
      setState(() {
        countPoint++;
      });
    }
  }
}
