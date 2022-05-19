class WpConfig {
  // YOUR WEBISTE URL
  static const String websiteUrl = "https://mpkhabar24.com";

  //FEATURE TAG ID
  static const int featuredTagID = 533;

  //VIDEO TAG ID
  static const int videoTagId = 534;

  // Hometab 4 categories
  // -- 'Serial Number' : [Category Id, 'Category Name'] -- Length should be 4.
  static const Map selectedCategories = {
    '1': [18, "मध्यप्रदेश"],
    '2': [16, "देश- विदेश"],
    '3': [26, "राशिफल"],
    '4': [20, "मनोरंजन"],
    '5': [21, "खेल – कूद"],
    '6': [3, "कोरोना"],
    '7': [51, "बिजनेस"],
    '8': [497, "हेल्थ"],
    '9': [212, "ज़ायका"],
  };

  static const List<Map> subMenuData = [
    {"id": 18, "name": "भोपाल"},
    {"id": 16, "name": "इंदौर"},
    {"id": 20, "name": "उज्जैन"},
    {"id": 21, "name": "ग्वालियर- चम्बल"},
    {"id": 51, "name": "जबलपुर"},
    {"id": 3, "name": "सागर"},
    {"id": 3, "name": "रीवा- शाडोल"},
    {"id": 3, "name": "होशंगाबाद"},
  ];

  /*
  List of blocked categories. Do nothing if you don't want to block any categories.
  If you want to bloc any category and it's posts then enter values like these:

  Example: If you want to block category id 10 & 12, then it will be look like this:

    static const String blockedCategoryIds = "10,12";
    static const String blockedCategoryIdsforPopularPosts = "-10,-12";

  */

  static const String blockedCategoryIds = "";
  static const String blockedCategoryIdsforPopularPosts = "";

  // FEATURE IMGAE -  IF YOUR POSTS DON"T HAVE A FEATURE IMAGE
  static const String randomPostFeatureImage =
      "https://innov8tiv.com/wp-content/uploads/2017/10/blank-screen-google-play-store-1280x720.png";

  // FEATURE CATEGORY IMGAE -  IF YOU HAVEN'T DEFINE A COVER IMAGE FOR A CATEGORY IN THE LIST BELOW
  static const String randomCategoryThumbnail =
      "https://images.unsplash.com/photo-1494253109108-2e30c049369b?ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8cmFuZG9tfGVufDB8MHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60";

  // ENTER CATERGORY ID AND ITS COVERS IMAGE
  static const Map categoryThumbnails = {
    // categoryID : 'category thumbnail url'
    9: "https://images.unsplash.com/photo-1444653389962-8149286c578a?ixid=MnwxMjA3fDB8MHxzZWFyY2h8ODV8fGJ1c2luZXNzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    2: "https://images.unsplash.com/photo-1603739903239-8b6e64c3b185?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzN8fGVudGVydGFpbm1lbnR8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    10: "https://images.unsplash.com/photo-1507138086030-616c3b6dd768?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTE1fHxsaWZlc3R5bGV8ZW58MHwwfDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    8: "https://images.pexels.com/photos/1250655/pexels-photo-1250655.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
    7: "https://images.pexels.com/photos/2698475/pexels-photo-2698475.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
    5: "https://images.unsplash.com/photo-1496065187959-7f07b8353c55?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8c2NpZW5jZXxlbnwwfDB8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    3: "https://images.pexels.com/photos/2885940/pexels-photo-2885940.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
    6: "https://images.pexels.com/photos/1036936/pexels-photo-1036936.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
    4: "https://images.pexels.com/photos/3885493/pexels-photo-3885493.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  };
}
