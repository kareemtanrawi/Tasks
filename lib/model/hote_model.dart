class HotelModel {
  final String name;

  final int price;
  final String image;
  final double reviewScore;
  final String review;
  final String address;

  HotelModel({
    required this.name,
    required this.price,
    required this.image,
    required this.reviewScore,
    required this.review,
    required this.address,
  });


  factory HotelModel.fromJson(Map<String , dynamic> jsonData){
    return HotelModel(
      name: jsonData['name'],
      price: jsonData['price'],
      image: jsonData['image'],
      reviewScore: jsonData['review_score'],
      review: jsonData['review'],
      address: jsonData['address'],
    );
  }
}
