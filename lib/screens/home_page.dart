import 'package:facebook_clone/helpers/constants.dart';
import 'package:flutter/material.dart';

import 'widgets/app_bar_widget.dart';
import 'widgets/post_widget.dart';
import 'widgets/poster_widget.dart';
import 'widgets/stories_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  var menuIconStyle = BoxDecoration(
      borderRadius: BorderRadius.circular(22), color: AppColors.accent);

  double iconSize = 26;

  double tabIconSize = 28;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarWidget(menuIconStyle: menuIconStyle, iconSize: iconSize),
        //Tab
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: AppColors.secondary,
          tabs: [
            Tab(
              icon: Icon(
                Icons.home_filled,
                size: tabIconSize,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.people_outline,
                size: tabIconSize,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.play_circle_outline,
                size: tabIconSize,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.shopping_bag_outlined,
                size: tabIconSize,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.notifications_none_outlined,
                size: tabIconSize,
              ),
            ),
            Tab(
              icon: Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 3.0, color: Colors.blueGrey),
                    borderRadius: BorderRadius.circular(25)),
                child: const CircleAvatar(
                  radius: 14.0,
                  backgroundImage: AssetImage(Assets.luke),
                ),
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          const HomeBodyWidget(),
          const Center(child: Text('Persons')),
          const Center(child: Text('Play')),
          const Center(child: Text('Market')),
          const Center(child: Text('Notifications')),
          const Center(
              child: CircleAvatar(
            radius: 50.0,
            backgroundImage: NetworkImage('https://example.com/avatar.jpg'),
          )),
        ],
      ),
    );
  }
}

class HomeBodyWidget extends StatelessWidget {
  const HomeBodyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double portrait = 2048 / 3072;
    double square = 2048 / 2048;

    return SingleChildScrollView(
      child: Column(
        children: [
          const PosterWidget(),
          const Divider(
            thickness: 10,
            color: AppColors.primary,
          ),
          const StoriesWidget(),
          const Divider(
            thickness: 10,
            color: AppColors.primary,
          ),
          //Noku
          PostWidget(
            posterImage: Assets.noku_dp,
            posterName: Assets.noku_name,
            postDate: '1d',
            captionText: 'Queen tings',
            imagePost: Assets.noku_post,
            aspectRatio: portrait,
            numberOfLikes: '505k',
            numberOfComments: '980',
            numberOfShares: '956',
          ),
          const Divider(
            thickness: 10,
            color: AppColors.primary,
          ),
          //K
          PostWidget(
            posterImage: Assets.k_dp,
            posterName: Assets.k_name,
            postDate: '3d',
            captionText: '😍😍😍',
            imagePost: Assets.k_post2,
            aspectRatio: portrait,
            numberOfLikes: '105k',
            numberOfComments: '880',
            numberOfShares: '656',
          ),
          const Divider(
            thickness: 10,
            color: AppColors.primary,
          ),
          //Posts
          PostWidget(
            posterImage: Assets.bongs_dp,
            posterName: Assets.bongs_name,
            postDate: '1d',
            captionText: '🥶🥶🥶',
            imagePost: Assets.bongs_post,
            aspectRatio: portrait,
            numberOfLikes: '1M',
            numberOfComments: '9k',
            numberOfShares: '9k',
          ),
          const Divider(
            thickness: 10,
            color: AppColors.primary,
          ),

          //Posts
          PostWidget(
            posterImage: Assets.bongs_dp,
            posterName: Assets.bongs_name,
            postDate: '4d',
            captionText: 'Summerstrand got me like...',
            imagePost: Assets.bongs_post2,
            aspectRatio: square,
            numberOfLikes: '2M',
            numberOfComments: '100k',
            numberOfShares: '90k',
          ),
          const Divider(
            thickness: 10,
            color: AppColors.primary,
          ),
          //Posts
          PostWidget(
            posterImage: Assets.noku_dp,
            posterName: Assets.noku_name,
            postDate: '24h',
            captionText: '👑👑👑',
            imagePost: Assets.noku_post2,
            aspectRatio: portrait,
            numberOfLikes: '900k',
            numberOfComments: '50k',
            numberOfShares: '48k',
          ),
          const Divider(
            thickness: 10,
            color: AppColors.primary,
          ),
          //Posts
          PostWidget(
            posterImage: Assets.ntho_dp,
            posterName: Assets.ntho_name,
            postDate: '1d',
            captionText: '#Refine&Render',
            imagePost: Assets.ntho_post,
            aspectRatio: portrait,
            numberOfLikes: '750k',
            numberOfComments: '40k',
            numberOfShares: '38k',
          ),
          const Divider(
            thickness: 10,
            color: AppColors.primary,
          ),
          //Posts
          PostWidget(
            posterImage: Assets.aj_dp,
            posterName: Assets.aj_name,
            postDate: '1d',
            captionText: 'its about that time...',
            imagePost: Assets.aj_dp,
            aspectRatio: portrait,
            numberOfLikes: '100k',
            numberOfComments: '11k',
            numberOfShares: '12k',
          ),
          const Divider(
            thickness: 10,
            color: AppColors.primary,
          ),
          //Posts
          PostWidget(
            posterImage: Assets.k_dp,
            posterName: Assets.k_name,
            postDate: '1d',
            captionText: 'last one👑',
            imagePost: Assets.k_post,
            aspectRatio: portrait,
            numberOfLikes: '405k',
            numberOfComments: '20k',
            numberOfShares: '11k',
          ),
          const Divider(
            thickness: 10,
            color: AppColors.primary,
          ),
          //Posts
          PostWidget(
            posterImage: Assets.sim_dp,
            posterName: Assets.sim_name,
            postDate: '1d',
            captionText: 'I had to...',
            imagePost: Assets.sim_post,
            aspectRatio: square,
            numberOfLikes: '500k',
            numberOfComments: '5k',
            numberOfShares: '4k',
          ),
          const Divider(
            thickness: 10,
            color: AppColors.primary,
          ),
        ],
      ),
    );
  }
}
