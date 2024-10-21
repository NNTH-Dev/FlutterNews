import 'package:flutter/material.dart';
import 'package:flutter_vntt/constants.dart';
import 'package:flutter_vntt/models/news_model.dart';

class LineCard extends StatelessWidget {
  final NewsModel newsmodel;
  const LineCard({required this.newsmodel});
  @override
  Widget build(BuildContext context) {
    return Container(
      //border lại cho riêng biệt
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: grey3, width: 1),
      ),
      //ảnh iếc các thứ, với mấy thông tin chia
      child: Row(
        children: [
          Container(
              width: 80,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: NetworkImage(newsmodel.imgUrl),
                  fit: BoxFit.cover,
                ),
              )),
          const SizedBox(width: 12),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  newsmodel.title,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: activeTabStyle,
                ),
                Text(
                  newsmodel.subtitle,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: detailContent,
                ),
                const Spacer(),
                Row(
                  children: [
                    Text(newsmodel.postDate, style: detailContent),
                    const SizedBox(width: 10),
                    const CircleAvatar(
                      radius: 5,
                      backgroundColor: grey1,
                    ),
                    const SizedBox(width: 10),
                  ],
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
