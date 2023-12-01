import 'package:flutter/material.dart';

class DashboardGrid extends StatelessWidget {
  const DashboardGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GridView.count(
        childAspectRatio: 1.0,
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          GridItem(
            image: item1.img,
            tittle: item1.title,
            subtitle: item1.subtitle,
            event: item1.event,
          ),
          GridItem(
            image: item2.img,
            tittle: item2.title,
            subtitle: item2.subtitle,
            event: item2.event,
          ),
          GridItem(
            image: item3.img,
            tittle: item3.title,
            subtitle: item3.subtitle,
            event: item3.event,
          ),
          GridItem(
            image: item4.img,
            tittle: item4.title,
            subtitle: item4.subtitle,
            event: item4.event,
          ),
          GridItem(
            image: item5.img,
            tittle: item5.title,
            subtitle: item5.subtitle,
            event: item5.event,
          ),
          GridItem(
            image: item6.img,
            tittle: item6.title,
            subtitle: item6.subtitle,
            event: item6.event,
          ),
          GridItem(
            image: item7.img,
            tittle: item7.title,
            subtitle: item7.subtitle,
            event: item7.event,
          ),
        ],
      ),
    );
  }
}

class Items {
  String title;
  String subtitle;
  String event;
  String img;
  Items({
    required this.title,
    required this.subtitle,
    required this.event,
    required this.img,
  });
}



Items item1 = Items(
  title: "Instagram Stories",
  subtitle: "Your Instagram Stories Videos",
  event: 'New',
  img: "assets/images/instagram.png",
);

Items item2 = Items(
  title: "Instagram Reels",
  subtitle: "Download Instagram Reels",
  event: "New",
  img: "assets/images/instagram.png",
);

Items item3 = Items(
  title: "Whatsapp",
  subtitle: "Search Number In Whatsapp",
  event: "New",
  img: "assets/images/whatsapp.png",
);

Items item4 = Items(
  title: "Whatsapp Stories",
  subtitle: "Download Whatsapp Story",
  event: 'New',
  img: "assets/images/whatsapp_story.png",
);

Items item5 = Items(
  title: "Youtube",
  subtitle: "Download Youtube Video",
  event: "New",
  img: "assets/images/youtube.png",
);

Items item6 = Items(
  title: "My Downloads",
  subtitle: "Your Downloaded Reels, Youtube video",
  event: 'New',
  img: "assets/images/downloads.png",
);

Items item7 = Items(
  title: "Settings",
  subtitle: "",
  event: "2 Items",
  img: "assets/images/setting.png",
);

class GridItem extends StatelessWidget {
  final String image;
  final String tittle;
  final String subtitle;
  final String event;
  const GridItem({
    super.key,
    required this.image,
    required this.tittle,
    required this.subtitle,
    required this.event,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).cardColor,
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: () {},
        child: Container(
          // margin: const EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey[200] ?? Colors.grey)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                image,
                width: 42,
              ),
              const SizedBox(
                height: 14,
              ),
              Text(
                tittle,
                style: TextStyle(
                  color: Theme.of(context).iconTheme.color,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                subtitle,
                style: TextStyle(
                  color: Theme.of(context).iconTheme.color?.withOpacity(0.4),
                  fontSize:10,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                event,
                style: TextStyle(
                  color: Colors.deepOrange.withOpacity(0.8),
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
