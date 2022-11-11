class TopAiringAnime {
  TopAiringAnime({
      String? animeId, 
      String? animeTitle, 
      String? animeImg, 
      String? latestEp, 
      String? animeUrl, 
      List<String>? genres,}){
    _animeId = animeId;
    _animeTitle = animeTitle;
    _animeImg = animeImg;
    _latestEp = latestEp;
    _animeUrl = animeUrl;
    _genres = genres;
}

  TopAiringAnime.fromJson(dynamic json) {
    _animeId = json['animeId'];
    _animeTitle = json['animeTitle'];
    _animeImg = json['animeImg'];
    _latestEp = json['latestEp'];
    _animeUrl = json['animeUrl'];
    _genres = json['genres'] != null ? json['genres'].cast<String>() : [];
  }
  String? _animeId;
  String? _animeTitle;
  String? _animeImg;
  String? _latestEp;
  String? _animeUrl;
  List<String>? _genres;
TopAiringAnime copyWith({  String? animeId,
  String? animeTitle,
  String? animeImg,
  String? latestEp,
  String? animeUrl,
  List<String>? genres,
}) => TopAiringAnime(  animeId: animeId ?? _animeId,
  animeTitle: animeTitle ?? _animeTitle,
  animeImg: animeImg ?? _animeImg,
  latestEp: latestEp ?? _latestEp,
  animeUrl: animeUrl ?? _animeUrl,
  genres: genres ?? _genres,
);
  String? get animeId => _animeId;
  String? get animeTitle => _animeTitle;
  String? get animeImg => _animeImg;
  String? get latestEp => _latestEp;
  String? get animeUrl => _animeUrl;
  List<String>? get genres => _genres;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['animeId'] = _animeId;
    map['animeTitle'] = _animeTitle;
    map['animeImg'] = _animeImg;
    map['latestEp'] = _latestEp;
    map['animeUrl'] = _animeUrl;
    map['genres'] = _genres;
    return map;
  }

}