class LanguageModel {
  final int id;
  final String flag;
  final String name;
  final String languageCode;

  LanguageModel(this.id, this.flag, this.name, this.languageCode);

  static List<LanguageModel> languageList() {
    return <LanguageModel>[
      LanguageModel(1, "🇪🇹", "አማርኛ", "am"),
      LanguageModel(2, "🇺🇸", "English", "en"),
    ];
  }
}
