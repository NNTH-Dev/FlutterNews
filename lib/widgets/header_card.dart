import 'package:flutter/material.dart';
import 'package:flutter_vntt/constants.dart';
import 'package:flutter_vntt/models/news_model.dart';

class HeaderCard extends StatelessWidget {
  final NewsModel newsmodel;
  HeaderCard({required this.newsmodel});

  @override
  Widget build(BuildContext context) {
    return Container(
      //View ảnh ở header
      width: 330.0,
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(color: grey3, width: 1.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //ngựa ngựa thêm cái Dot cho đở trống :v, ko xài => clear
          Row(
            children: [
              const CircleAvatar(
                radius: 5.0,
                backgroundColor: blueE,
              ),
              const SizedBox(width: 10.0),
              Text(newsmodel.type, style: categoryTitle)
            ],
          ),
          //Cái ảnh to vcl
          const SizedBox(height: 5.0),
          Container(
            height: 190.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: NetworkImage(newsmodel.imgUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),

          //Title và một số thứ bỏ vô cho đỡ trống, đẹp :>
          const SizedBox(height: 5.0),
          Expanded(
            child: Text(
              newsmodel.title,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: cardTitle,
            ),
          ),
          const SizedBox(height: 5.0),
          Row(
            children: [
              Text(
                newsmodel.postDate,
                style: detailContent,
              ),
              const SizedBox(width: 10.0),
              const CircleAvatar(
                radius: 5.0,
                backgroundColor: grey1,
              ),
              const SizedBox(width: 10.0),
              Text(
                newsmodel.isActive,
                style: detailContent,
              ),
            ],
          )
        ],
      ),
    );
  }
}
