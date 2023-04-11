class ModelProducts {
  final String title;
  final String description;
  final String category;
  final String image;
  final dynamic price;
  final dynamic id;
  final ModelRating rating;
  ModelProducts({
    required this.rating,
    required this.title,
    required this.description,
    required this.category,
    required this.image,
    required this.price,
    required this.id,
  });
  factory ModelProducts.JsonData(json) {
    return ModelProducts(
        rating: ModelRating.jsonData(
          json["rating"]== null ? null : ModelRating.jsonData(['rating'])
          ),

           
       
        title: json["title"],
        description: json["description"],
        category: json["category"],
        image: json["image"],
        price: json["price"],
        id: json["id"]
        );
  }
}

class ModelRating {
  final dynamic rate;
  final int count;

  ModelRating({required this.rate, required this.count});
  factory ModelRating.jsonData(json) {
    return ModelRating(rate: json["rate"], count: json["count"]);
  }
}
