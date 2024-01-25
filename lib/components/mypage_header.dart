import 'package:flutter/material.dart';
import 'package:instagram_ui/components/followed_buttons.dart';
import 'package:instagram_ui/components/posts.dart';

class MypageHeader extends StatelessWidget {
  const MypageHeader({super.key});

  static const src =
      "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Instagram_icon.png/600px-Instagram_icon.png";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                // ユーザーアイコン
                Image.network(src, width: 60, height: 60),
                const Spacer(),

                // 投稿数、フォロワー数、フォロー中数
                const Row(
                  children: [
                    // 投稿数
                    Column(
                      children: [
                        Text(
                          "7,041",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Text("投稿"),
                      ],
                    ),
                    SizedBox(width: 10),
                    // フォロワー数
                    Column(
                      children: [
                        Text(
                          "4.6億",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Text("フォロワー"),
                      ],
                    ),
                    SizedBox(width: 10),
                    // フォロー中
                    Column(
                      children: [
                        Text(
                          "99",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Text("フォロー中"),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            // ユーザー名
            const SizedBox(height: 5),
            const Text(
              "Instagram",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            // ユーザーの自己紹介
            const SizedBox(height: 5),
            const Text(
              "#YoursToMake",
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
            const Text(
              "help.instagram.com",
              style: TextStyle(
                color: Colors.blue,
              ),
            ),

            // 各種ボタン
            const FollowedBottons(),

            // ポスト一覧
            const Posts(),
          ],
        ),
      ),
    );
  }
}
