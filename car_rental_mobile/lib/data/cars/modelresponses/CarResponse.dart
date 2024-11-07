class CarResponse {
  final String modelName;
  final String pricePerDay;
  final String fuelType;
  final String engineCapacity;
  final String driveType;
  final String imageUrl; // Untuk Available Car
  final String imageUrlList; // Untuk Featured Car

  CarResponse({
    required this.modelName,
    required this.pricePerDay,
    required this.fuelType,
    required this.engineCapacity,
    required this.driveType,
    required this.imageUrl,
    required this.imageUrlList,
  });
}
