import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
  const Posts({super.key});

  static final postImages = [
    "https://s.rbbtoday.com/imgs/p/WlyWmMPQ5V2plFIuZ3FzQYVNzkFAQ0JFREdG/510534.jpg",
    "https://fromtheasia.com/wp-content/uploads/NCG255-scaled.jpg",
    "https://iconbu.com/wp-content/uploads/2022/07/%E6%B5%81%E3%82%8C%E6%98%9F%E3%81%95%E3%82%93.png",
    "https://owl-stock.work/wp-content/uploads/2021/08/01377-tmb.png",
    "https://contents.oricon.co.jp/photo/img/6000/6877/detail/img660/1641462092066.jpg",
    "https://assets.st-note.com/img/1701756471095-0Vnqxlhwxg.png?width=120",
    "https://gahag.net/img/201509/29s/gahag-0009010510-1.png",
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      primary: false,
      crossAxisSpacing: 0,
      mainAxisSpacing: 0,
      children: postImages.map((e) => _buildPostImage(e)).toList(),
    );
  }

  Widget _buildPostImage(String src) {
    return Image.network(src, fit: BoxFit.cover);
  }
}
