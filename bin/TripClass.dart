class Trip {
  String id;
  String location;
  String passengerLimit;
  String date;
  String price;
  List trips = [];

  Trip(String id, String loc, String passenger, String date, String price) {
    this.id = id;
    location = loc;
    passengerLimit = passenger;
    this.date = date;
    this.price = price;
  }

  set setId(String id) {
    this.id = id;
  }

  set setLocation(String loc) {
    location = loc;
  }

  set setPassengerLimt(String pass) {
    passengerLimit = pass;
  }

  set setDate(String date) {
    date = date;
  }

  set setPrice(String price) {
    price = price;
  }

  // String getTrip() {
  //   return '{ ${id}, ${location},${passengerLimit},${date},${price} }';
  // }
  Map<String, String> getTrip() {
    return {
      'id': id,
      'location': location,
      'passengerLimit': passengerLimit,
      'date': date,
      'price': price
    };
  }
}
