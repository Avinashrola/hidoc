
class Hidoc {
  final int? success;
  final String? message;
  final Data? data;
  final DateTime? timestamp;

  Hidoc({
     this.success,
     this.message,
     this.data,
     this.timestamp,
  });

  Hidoc copyWith({
    int? success,
    String? message,
    Data? data,
    DateTime? timestamp,
  }) =>
      Hidoc(
        success: success ?? this.success,
        message: message ?? this.message,
        data: data ?? this.data,
        timestamp: timestamp ?? this.timestamp,
      );

  factory Hidoc.fromJson(Map<String, dynamic> json) => Hidoc(
    success: json["success"] ?? 0,
    message: json["message"]?? " ",
    data: json["data"] != null ?Data.fromJson(json["data"]):null ,
    timestamp: DateTime.parse(json["timestamp"]),
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "message": message,
    "data": data?.toJson(),
    "timestamp": timestamp?.toIso8601String(),
  };
}

class Data {
  final List<News> news;
  final List<Article> trandingBulletin;
  final String specialityName;
  final List<dynamic> latestArticle;
  final List<Article> exploreArticle;
  final List<Article> trandingArticle;
  final Article article;
  final List<Article> bulletin;
  final int sId;

  Data({
    required this.news,
    required this.trandingBulletin,
    required this.specialityName,
    required this.latestArticle,
    required this.exploreArticle,
    required this.trandingArticle,
    required this.article,
    required this.bulletin,
    required this.sId,
  });

  Data copyWith({
    List<News>? news,
    List<Article>? trandingBulletin,
    String? specialityName,
    List<dynamic>? latestArticle,
    List<Article>? exploreArticle,
    List<Article>? trandingArticle,
    Article? article,
    List<Article>? bulletin,
    int? sId,
  }) =>
      Data(
        news: news ?? this.news,
        trandingBulletin: trandingBulletin ?? this.trandingBulletin,
        specialityName: specialityName ?? this.specialityName,
        latestArticle: latestArticle ?? this.latestArticle,
        exploreArticle: exploreArticle ?? this.exploreArticle,
        trandingArticle: trandingArticle ?? this.trandingArticle,
        article: article ?? this.article,
        bulletin: bulletin ?? this.bulletin,
        sId: sId ?? this.sId,
      );

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    news: List<News>.from(json["news"].map((x) => News.fromJson(x))),
    trandingBulletin: List<Article>.from(json["trandingBulletin"].map((x) => Article.fromJson(x))),
    specialityName: json["specialityName"],
    latestArticle: List<dynamic>.from(json["latestArticle"].map((x) => x)),
    exploreArticle: List<Article>.from(json["exploreArticle"].map((x) => Article.fromJson(x))),
    trandingArticle: List<Article>.from(json["trandingArticle"].map((x) => Article.fromJson(x))),
    article: Article.fromJson(json["article"]),
    bulletin: List<Article>.from(json["bulletin"].map((x) => Article.fromJson(x))),
    sId: json["sId"],
  );

  Map<String, dynamic> toJson() => {
    "news": List<dynamic>.from(news.map((x) => x.toJson())),
    "trandingBulletin": List<dynamic>.from(trandingBulletin.map((x) => x.toJson())),
    "specialityName": specialityName,
    "latestArticle": List<dynamic>.from(latestArticle.map((x) => x)),
    "exploreArticle": List<dynamic>.from(exploreArticle.map((x) => x.toJson())),
    "trandingArticle": List<dynamic>.from(trandingArticle.map((x) => x.toJson())),
    "article": article.toJson(),
    "bulletin": List<dynamic>.from(bulletin.map((x) => x.toJson())),
    "sId": sId,
  };
}

class Article {
  final int? id;
  final String? articleTitle;
  final String? redirectLink;
  final String? articleImg;
  final String? articleDescription;
  final String? specialityId;
  final int? rewardPoints;
  final String? keywordsList;
  final String? articleUniqueId;
  final int? articleType;
  final DateTime? createdAt;

  Article({
     this.id,
     this.articleTitle,
     this.redirectLink,
     this.articleImg,
     this.articleDescription,
     this.specialityId,
     this.rewardPoints,
     this.keywordsList,
     this.articleUniqueId,
     this.articleType,
     this.createdAt,
  });

  Article copyWith({
    int? id,
    String? articleTitle,
    String? redirectLink,
    String? articleImg,
    String? articleDescription,
    String? specialityId,
    int? rewardPoints,
    String? keywordsList,
    String? articleUniqueId,
    int? articleType,
    DateTime? createdAt,
  }) =>
      Article(
        id: id ?? this.id,
        articleTitle: articleTitle ?? this.articleTitle,
        redirectLink: redirectLink ?? this.redirectLink,
        articleImg: articleImg ?? this.articleImg,
        articleDescription: articleDescription ?? this.articleDescription,
        specialityId: specialityId ?? this.specialityId,
        rewardPoints: rewardPoints ?? this.rewardPoints,
        keywordsList: keywordsList ?? this.keywordsList,
        articleUniqueId: articleUniqueId ?? this.articleUniqueId,
        articleType: articleType ?? this.articleType,
        createdAt: createdAt ?? this.createdAt,
      );

  factory Article.fromJson(Map<String, dynamic> json) => Article(
    id: json["id"] ?? " ",
    articleTitle: json["articleTitle"]?? " ",
    redirectLink: json["redirectLink"]?? " ",
    articleImg: json["articleImg"]?? " ",
    articleDescription: json["articleDescription"]?? " ",
    specialityId: json["specialityId"]?? " ",
    rewardPoints: json["rewardPoints"]?? 0,
    keywordsList: json["keywordsList"]?? " ",
    articleUniqueId: json["articleUniqueId"]?? " ",
    articleType: json["articleType"]?? 0,
    createdAt: json["createdAt"] != null ?DateTime.parse(json["createdAt"]):null,
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "articleTitle": articleTitle,
    "redirectLink": redirectLink,
    "articleImg": articleImg,
    "articleDescription": articleDescription,
    "specialityId": specialityId,
    "rewardPoints": rewardPoints,
    "keywordsList": keywordsList,
    "articleUniqueId": articleUniqueId,
    "articleType": articleType,
    "createdAt": createdAt?.toIso8601String(),
  };
}

class News {
  final int? id;
  final String? title;
  final String? url;
  final String? urlToImage;
  final String? description;
  final String? speciality;
  final String? newsUniqueId;
  final int? trendingLatest;
  final DateTime? publishedAt;

  News({
     this.id,
     this.title,
     this.url,
     this.urlToImage,
     this.description,
     this.speciality,
     this.newsUniqueId,
     this.trendingLatest,
     this.publishedAt,
  });

  News copyWith({
    int? id,
    String? title,
    String? url,
    String? urlToImage,
    String? description,
    String? speciality,
    String? newsUniqueId,
    int? trendingLatest,
    DateTime? publishedAt,
  }) =>
      News(
        id: id ?? this.id,
        title: title ?? this.title,
        url: url ?? this.url,
        urlToImage: urlToImage ?? this.urlToImage,
        description: description ?? this.description,
        speciality: speciality ?? this.speciality,
        newsUniqueId: newsUniqueId ?? this.newsUniqueId,
        trendingLatest: trendingLatest ?? this.trendingLatest,
        publishedAt: publishedAt ?? this.publishedAt,
      );

  factory News.fromJson(Map<String, dynamic> json) => News(
    id: json["id"]?? 0,
    title: json["title"]?? " ",
    url: json["url"]?? " ",
    urlToImage: json["urlToImage"]?? " ",
    description: json["description"]?? " ",
    speciality: json["speciality"]?? " ",
    newsUniqueId: json["newsUniqueId"]?? " ",
    trendingLatest: json["trendingLatest"]?? 0,
    publishedAt: json["publishedAt"] != null ? DateTime.parse(json["publishedAt"]):null,
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "url": url,
    "urlToImage": urlToImage,
    "description": description,
    "speciality": speciality,
    "newsUniqueId": newsUniqueId,
    "trendingLatest": trendingLatest,
    "publishedAt": publishedAt?.toIso8601String(),
  };
}
