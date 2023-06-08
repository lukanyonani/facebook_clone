import 'package:facebook_clone/helpers/constants.dart';
import 'package:flutter/material.dart';

class StoriesWidget extends StatelessWidget {
  const StoriesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          StoryAddWidget(),
          StoryWidget(
            storyPosterImage: Assets.aj_dp,
            storyImage: Assets.aj_post,
            storyPosterName: Assets.aj_name,
          ),
          StoryWidget(
            storyPosterImage: Assets.bongs_dp,
            storyImage: Assets.bongs_post2,
            storyPosterName: Assets.bongs_name,
          ),
          StoryWidget(
            storyPosterImage: Assets.k_dp,
            storyImage: Assets.k_post,
            storyPosterName: Assets.k_name,
          ),
          StoryWidget(
            storyPosterImage: Assets.noku_dp,
            storyImage: Assets.noku_post2,
            storyPosterName: Assets.noku_name,
          ),
          StoryWidget(
            storyPosterImage: Assets.ntho_dp,
            storyImage: Assets.ntho_post,
            storyPosterName: Assets.ntho_name,
          ),
        ],
      ),
    );
  }
}

class StoryAddWidget extends StatelessWidget {
  const StoryAddWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 230,
        width: 140,
        decoration: BoxDecoration(
          border: Border.all(width: 1.0, color: AppColors.primary),
          color: AppColors.accent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 138,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(Assets.luke)),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
              ),
            ),
            Positioned(
              left: 48,
              bottom: 66,
              child: Container(
                height: 44,
                width: 44,
                decoration: BoxDecoration(
                    color: AppColors.secondary,
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(width: 2.0, color: AppColors.accent)),
                child: Icon(
                  Icons.add,
                  color: AppColors.accent,
                  size: 32,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Create story',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 14),
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class StoryWidget extends StatelessWidget {
  final String storyImage;

  final String storyPosterName;

  final String storyPosterImage;

  const StoryWidget({
    super.key,
    required this.storyImage,
    required this.storyPosterName,
    required this.storyPosterImage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 230,
        width: 140,
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(20),
        ),
        //Child
        child: Stack(children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage(storyImage), fit: BoxFit.fitHeight),
            ),
            height: 230,
            width: 140,
          ),
          Positioned(
            top: 8,
            left: 8,
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 3.0,
                    color: AppColors.secondary,
                  ),
                  borderRadius: BorderRadius.circular(32)),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 3.0, color: Colors.black.withOpacity(0.4)),
                    borderRadius: BorderRadius.circular(26)),
                child: CircleAvatar(
                  radius: 16,
                  backgroundImage: AssetImage(storyPosterImage),
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  storyPosterName,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: AppColors.white,
                    shadows: [
                      Shadow(
                        color: Colors.black,
                        blurRadius: 4,
                        offset: Offset(0.2, 0.2),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}
