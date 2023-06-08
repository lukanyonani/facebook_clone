import 'package:flutter/material.dart';

import '../../helpers/constants.dart';

class PostWidget extends StatelessWidget {
  final String postDate;
  final String posterName;
  final String posterImage;
  final String imagePost;
  final String captionText;
  final String numberOfLikes;
  final String numberOfComments;
  final String numberOfShares;

  final double aspectRatio;

  const PostWidget({
    super.key,
    required this.postDate,
    required this.posterName,
    required this.posterImage,
    required this.imagePost,
    required this.captionText,
    required this.numberOfLikes,
    required this.numberOfComments,
    required this.numberOfShares,
    required this.aspectRatio,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderWidget(
          postDate: postDate,
          posterImage: posterImage,
          posterName: posterName,
        ),
        //Caption
        CaptionWidget(
          captionText: captionText,
        ),
        //Image
        AspectRatio(
          aspectRatio: aspectRatio, // Provide the aspect ratio of the image
          child: Image.asset(
            imagePost, // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
        //Likes Row
        LikesWidget(
          numberOfLikes: numberOfLikes,
          numberOfComments: numberOfComments,
          numberOfShares: numberOfShares,
        ),
        //
        const Padding(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Divider(
            thickness: 0.5,
          ),
        ),
        //Button Row
        const ButtonsWidget()
      ],
    );
  }
}

class CaptionWidget extends StatelessWidget {
  final String captionText;

  const CaptionWidget({
    super.key,
    required this.captionText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 14, bottom: 10, left: 14),
      child: Row(
        children: [
          Text(captionText),
        ],
      ),
    );
  }
}

class ButtonsWidget extends StatelessWidget {
  const ButtonsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 6, bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Icon(
                Icons.thumb_up_alt_outlined,
                color: AppColors.postIcon,
                size: 18,
              ),
              SizedBox(
                width: 6,
              ),
              Text(
                'Like',
                style: TextStyle(color: AppColors.postIcon, fontSize: 14),
              ),
              SizedBox(
                width: 22,
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.chat_bubble_outline,
                color: AppColors.postIcon,
                size: 18,
              ),
              SizedBox(
                width: 6,
              ),
              Text(
                'Comment',
                style: TextStyle(color: AppColors.postIcon, fontSize: 14),
              ),
              SizedBox(
                width: 22,
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.share_outlined,
                color: AppColors.postIcon,
                size: 18,
              ),
              SizedBox(
                width: 6,
              ),
              Text(
                'Share',
                style: TextStyle(color: AppColors.postIcon, fontSize: 14),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class LikesWidget extends StatelessWidget {
  final String numberOfLikes;

  final String numberOfComments;

  final String numberOfShares;

  const LikesWidget({
    super.key,
    required this.numberOfLikes,
    required this.numberOfComments,
    required this.numberOfShares,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, bottom: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(26),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Icon(
                      Icons.favorite,
                      size: 12,
                      color: AppColors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  numberOfLikes,
                  style: const TextStyle(color: AppColors.postIcon),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Row(
              children: [
                Text(
                  '$numberOfComments comments \u2022 ',
                  style: TextStyle(fontSize: 12, color: AppColors.postIcon),
                ),
                Text(
                  '$numberOfShares shares',
                  style: TextStyle(fontSize: 12, color: AppColors.postIcon),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HeaderWidget extends StatelessWidget {
  final String postDate;
  final String posterName;
  final String posterImage;

  const HeaderWidget({
    super.key,
    required this.postDate,
    required this.posterName,
    required this.posterImage,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 18.0,
            right: 12,
            left: 12,
          ),
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: AppColors.primary),
                borderRadius: BorderRadius.circular(20)),
            child: CircleAvatar(
              backgroundImage: AssetImage(posterImage),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 12,
            ),
            Text(
              posterName,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Row(
              children: [
                Text(
                  '$postDate \u2022 ',
                  style: const TextStyle(color: AppColors.postIcon),
                ),
                const Icon(
                  Icons.public,
                  color: AppColors.postIcon,
                  size: 16,
                )
              ],
            )
          ],
        ),
        Expanded(child: Container()),
        const Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.more_horiz,
                  size: 28,
                  color: AppColors.postIcon,
                ),
                SizedBox(
                  width: 16,
                ),
                Icon(
                  Icons.close,
                  size: 28,
                  color: AppColors.postIcon,
                ),
                SizedBox(
                  width: 6,
                ),
              ],
            ),
            SizedBox()
          ],
        ),
      ],
    );
  }
}
