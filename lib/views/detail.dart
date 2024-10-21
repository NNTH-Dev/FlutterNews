import 'package:flutter/material.dart';
import 'package:flutter_vntt/constants.dart';
import 'package:flutter_vntt/models/news_model.dart';

class Details extends StatelessWidget {
  final NewsModel newsmodel;
  Details({required this.newsmodel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: ListView(
          children: [
            //Ảnh to header
            const SizedBox(height: 12.0),
            Hero(
              tag: newsmodel.type,
              child: Container(
                height: 220.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(
                    image: NetworkImage(newsmodel.imgUrl),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),

            //View Danh mục và Lượt xem
            const SizedBox(height: 15.0),
            Row(
              //Danh mục
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12.0,
                    vertical: 15.0,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: grey3, width: 1.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 5.0,
                        backgroundColor: grey3,
                      ),
                      const SizedBox(width: 6.0),
                      Text(
                        newsmodel.type,
                        style: categoryTitle,
                      ),
                    ],
                  ),
                ),
                //Lượt xem
                const Spacer(),
                Status(
                  icon: Icons.remove_red_eye,
                  total: newsmodel.isActive,
                ),
              ],
            ),

            //Tiêu đề chính
            const SizedBox(height: 12.0),
            Text(newsmodel.title, style: cardTitle.copyWith(fontSize: 28.0)),
            const SizedBox(height: 15.0),
            Row(
              children: [
                //View ngày post
                Text(newsmodel.postDate, style: detailContent),
                const SizedBox(width: 5.0),
                const SizedBox(
                  width: 10.0,
                  child: Divider(
                    color: black,
                    height: 1.0,
                  ),
                ),
                //Cái này là tác giả, nếu thì thay thuộc tính, ko thì xóa
                const SizedBox(width: 5.0),
                Text(
                  newsmodel.isActive,
                  style: detailContent.copyWith(color: Colors.black),
                ),
              ],
            ),
            //Nội dung chính
            const SizedBox(height: 15.0),
            Text(
              newsmodel.newsContent,
              style: descriptionStyle,
            ),
            const SizedBox(height: 25.0)
          ],
        ),
      ),
    );
  }
}

class Status extends StatelessWidget {
  final IconData icon;
  final String total;
  Status({required this.icon, required this.total});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: grey2),
        const SizedBox(width: 4.0),
        Text(total, style: detailContent),
      ],
    );
  }
}
