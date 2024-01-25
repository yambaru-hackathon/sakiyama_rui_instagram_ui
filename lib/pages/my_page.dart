import 'package:flutter/material.dart';
import 'package:instagram_ui/components/mypage_header.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('マイページ'),
      ),
      body: const Column(
        children: [
          MypageHeader(),
        ],
      ),
    );
  }
}
