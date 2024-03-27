class PageViwModel {
 final String title;
 final String description;
 final String imagePath;

 const PageViwModel(
      {required this.title,
      required this.description,
      required this.imagePath});
}

List<PageViwModel> pages =const [
  PageViwModel(
      title: "Explore The history with Dalel in a smart way",
      description:
          "Using our app’s history libraries you can find many historical periods ",
      imagePath: "assets/svg/Frame 1.svg"),
  PageViwModel(
      title: "From every place on earth",
      description: "A big variety of ancient places from all over the world",
      imagePath: "assets/svg/Frame 2.svg"),
  PageViwModel(
      title: "Using modern AI technology for better user experience",
      description:
          "AI provide recommendations and helps you to continue the search journey",
      imagePath: "assets/svg/Frame 3.svg"),
];
