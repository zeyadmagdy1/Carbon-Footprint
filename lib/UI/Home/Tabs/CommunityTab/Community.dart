class Community {
  String appName;
  String appDescription;
  String appLogoUrl;
  String appLink;
  Community(
      {required this.appName,
      required this.appDescription,
      required this.appLogoUrl,
      required this.appLink});

  static List<Community> communitiesList() {
    return [
      Community(
          appName: "Resala Environment Friends",
          appDescription:
              "It is an activity within the activities of the Resala Association and aims to preserve the environment in all its aspects, including recycling and environmental campaigns.",
          appLogoUrl:
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMT88jOcrubNZOLgyicfsioizDLKyo0dNbmg&s",
          appLink: "https://resala.org/friends-of-the-environment/")
    ];
  }
}
