class SaveEnergy {
  String appName;
  String appDescription;
  String appLogoUrl;
  String appLink;
  SaveEnergy(
      {required this.appName,
      required this.appDescription,
      required this.appLogoUrl,
      required this.appLink});

  static List<SaveEnergy> getSaveEnergyList() {
    return [
      SaveEnergy(
          appName: "Green Pan",
          appDescription:
              "Works to dispose of used oil in homes and restaurants in Egypt in a correct manner, instead of household disposal that is harmful to the environment.",
          appLogoUrl:
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReH51GnNmlWwNIVPRVieJPPjLvk19-4CsNXWL0EHBaCeOq7fKCRZbsOhPOWv5_XdZ91Bg&usqp=CAU",
          appLink:
              "https://play.google.com/store/apps/details?id=com.akwad.tagadodCustomer"),
      SaveEnergy(
          appName: "Recycle Bank Egypt",
          appDescription:
              "You can display all the things that you no longer need and want to get rid of, but if you throw them in the garbage, this will increase the risks of environmental pollution, while it is better to recycle them, and these things may start from clothes to pieces of furniture to electronic devices.",
          appLogoUrl:
              "https://play-lh.googleusercontent.com/GX4qKspc1QcxUK7bRkplDY5ADTYCUYKkvreu-HmH5bfslnkUKpC3aZO2SrC7qCzy3w",
          appLink:
              "https://play.google.com/store/apps/details?id=eg.recycle.bank.recycle_bank_eg"),
      SaveEnergy(
          appName: "Grabage Globbers",
          appDescription:
              " It is a game through which children learn how to dispose of garbage, the impact of the accumulation of plastic and other non-degradable materials on the environment, and what their role is towards the planet Earth.",
          appLogoUrl:
              "https://play-lh.googleusercontent.com/8DrVGMTduasA4gHLTC1RyCZygDG-hieFtIFvCVD9tOYBfLoSqgHYxKVcRclxTje14s8=w526-h296-rw",
          appLink:
              "https://play.google.com/store/apps/details?id=com.BoredMonkey.GarbageGobblers"),
    ];
  }
}
