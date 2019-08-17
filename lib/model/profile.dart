class Profile {
  String name;
  String imagePath;
  String followers;
  int posts;
  String following;

  Profile(
      {this.name, this.imagePath, this.followers, this.posts, this.following});
}

final List<Profile> profiles = [
  Profile(
    name: 'Aatrox',
    imagePath: 'assets/images/aatrox.jpg',
    followers: "8,5k",
    posts: 432,
    following: "3,2k"
  ),
  Profile(
      name: 'Akali',
      imagePath: 'assets/images/akali.jpg',
      followers: "19k",
      posts: 23,
      following: "1,5k"
  ),
  Profile(
      name: 'Darius',
      imagePath: 'assets/images/darius.jpg',
      followers: "10M",
      posts: 753,
      following: "85k"
  ),
  Profile(
      name: 'Garen',
      imagePath: 'assets/images/garen.jpg',
      followers: "2M",
      posts: 914,
      following: "951"
  ),
  Profile(
      name: 'Illaoi',
      imagePath: 'assets/images/illaoi.jpg',
      followers: "999M",
      posts: 81,
      following: "50K"
  ),
  Profile(
      name: 'Jhin',
      imagePath: 'assets/images/jhin.jpg',
      followers: "1M",
      posts: 104,
      following: "4,5k"
  ),
  Profile(
      name: 'Kayn',
      imagePath: 'assets/images/kayn.jpg',
      followers: "100k",
      posts: 444,
      following: "16k"
  ),
  Profile(
      name: 'Miss Fortune',
      imagePath: 'assets/images/mf.jpg',
      followers: "400M",
      posts: 24,
      following: "231"
  ),
  Profile(
      name: 'Oriana',
      imagePath: 'assets/images/oriana.jpg',
      followers: "1,5k",
      posts: 458,
      following: "0"
  ),
  Profile(
      name: 'Pantheon',
      imagePath: 'assets/images/pantheon.jpg',
      followers: "850k",
      posts: 987,
      following: "100k"
  ),
  Profile(
      name: 'Pike',
      imagePath: 'assets/images/pike.jpg',
      followers: "5M",
      posts: 598,
      following: "12k"
  ),
  Profile(
      name: 'Sivir',
      imagePath: 'assets/images/sivir.jpg',
      followers: "13k",
      posts: 2,
      following: "1,5k"
  ),
];

//Image.asset(
////      "assets/images/illaoi.jpg",
////      "assets/images/akali.jpg",
////      "assets/images/pantheon.jpg",
////      "assets/images/darius.jpg",
////      "assets/images/jhin.jpg",
////      "",
////      "assets/images/garen.jpg",
////      "assets/images/kayn.jpg",
////      "assets/images/oriana.jpg",
////      "assets/images/mf.jpg",
//"assets/images/sivir.jpg",
////      "assets/images/pike.jpg",
//fit: BoxFit.cover,
//);