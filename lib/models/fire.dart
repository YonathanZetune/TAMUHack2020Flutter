class Fire {
  String confidence;
  double lat;
  double lon;
  double distance;
  double direction;

  Fire(this.confidence, this.lat, this.lon, this.distance, this.direction);

  factory Fire.fromJson(Map<String, dynamic> json) {
    return new Fire(
        json["confidence"],
        json["position"]["lat"],
        json["position"]["lon"],
        json["position"]["distance"]["value"],
        json["position"]["direction"]);
  }
}

class FireList {
  List<dynamic> fires;

  FireList(this.fires);

  factory FireList.fromJson(Map<String, dynamic> json) {
    List<dynamic> fires = (json["fires"]).map((i) => Fire.fromJson(i)).toList();

    return new FireList(fires);
  }
}
