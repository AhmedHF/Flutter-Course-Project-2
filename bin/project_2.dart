import 'dart:io';

import 'TripClass.dart';

void main() {
  try {
    bool z = true;
    List list = [];

    void addTrip() {
      print('ID:');
      var id = (stdin.readLineSync());
      print('Location:');
      var location = stdin.readLineSync();
      print('Passengers:');
      var passengers = (stdin.readLineSync());
      print('Date:');
      var date = stdin.readLineSync();
      print('Price:');
      var price = (stdin.readLineSync());
      list.add(Trip(id, location, passengers, date, price).getTrip());
    }

    void editTrip() {
      print('Enter Trip id to edit :');
      var tripId = (stdin.readLineSync());
      var idInList = -1;
      list.asMap().forEach((key, value) {
        if (value.containsKey('id')) ;
        if (value['id'] == tripId) {
          idInList = key;
        }
      });
      if (idInList == -1) {
        print('Trip Not Exist');
      } else {
        print('Enter New Data');
        print('ID:');
        var id = (stdin.readLineSync());
        print('Location:');
        var location = stdin.readLineSync();
        print('Passengers:');
        var passengers = (stdin.readLineSync());
        print('Date:');
        var date = stdin.readLineSync();
        print('Price:');
        var price = (stdin.readLineSync());
        list[idInList] = Trip(id, location, passengers, date, price).getTrip();
        print('Done edit trip');
      }
    }

    void deleteTrip() {
      print('Enter Tip id to Delete it:');
      var tripId = (stdin.readLineSync());
      var idInList = -1;
      list.asMap().forEach((key, value) {
        if (value.containsKey('id')) ;
        if (value['id'] == tripId) {
          idInList = key;
        }
      });
      if (idInList == -1) {
        print('Trip Not Exist');
      } else {
        list.remove(list[idInList]);
        print('Trip Removed');
      }
    }

    // Comparator<Trip> priceComparator = (a, b) => a.date.compareTo(b.date);

    void viewTrips() {
      // list.sort((a, b) =>
      //     DateTime.tryParse(a.date).compareTo(DateTime.tryParse(b.date)));
      print(list);
    }

    void reverseList() {
      print('Enter Trip id to reverse:');
      var tripId = (stdin.readLineSync());
      var idInList = -1;
      var trip;
      list.asMap().forEach((key, value) {
        if (value.containsKey('id')) ;
        if (value['id'] == tripId) {
          idInList = key;
        }
      });
      if (idInList == -1) {
        print('Trip Not Exist');
      } else {
        var trip = list[idInList];
        print(trip['id']);
        // print('---- $trip['id']');
        print(int.tryParse(trip['passengerLimit'].toString()));
        if (int.tryParse(trip['passengerLimit']) > 0) {
          print('Done Revers it');
          var newPasssenger = int.tryParse(trip['passengerLimit']) - 1;
          print('-------- $newPasssenger');
          list[idInList] = Trip(trip.id, trip.location,
                  newPasssenger.toString(), trip.date, trip.price)
              .getTrip();
        }
      }
    }

    void searchTrip() {
      print('Enter Trip Price to find it:');
      var price = (stdin.readLineSync());
      var idsInList = [];
      list.asMap().forEach((key, value) {
        if (value.containsKey('price')) {
          if (value['price'] == price) {
            print('xxxxxxxxx $key');
            idsInList.add(key);
          }
        }
      });
      if (idsInList.length > 0) {
        print('Trip /s found => ');
        idsInList.forEach((element) {
          print(list[element]);
        });
      } else {
        print('No fond Trip with this price');
      }
    }

    void discount() {
      var tripId = (stdin.readLineSync());
      var idInList = -1;
      list.asMap().forEach((key, value) {
        if (value.containsKey('price')) ;
        if (value['price'] > 10000) {
          idInList = key;
        }
      });
      if (idInList == -1) {
        print('trip Not Exist');
      } else {
        print('Trip found => ');
        print(list[idInList]);
      }
    }

    void viewPassenger() {}
    while (z) {
      print(
          '1- Add Trip   2-Edit Trip   3-Delete Trip     4-View Trips        5-Search Trips   \n'
          '6-Reverse     7-Discount    8-Lastest Trips   9-View Passengers   10-Exit');
      var input = int.parse(stdin.readLineSync());
      switch (input) {
        case 1:
          addTrip();
          break;
        case 2:
          editTrip();
          break;
        case 3:
          deleteTrip();
          break;
        case 4:
          viewTrips();
          break;
        case 5:
          searchTrip();
          break;
        case 6:
          reverseList();
          break;
        case 7:
          discount();
          break;
        case 8:
          reverseList();
          break;
        case 9:
          reverseList();
          break;
        case 10:
          z = false;
          break;
        default:
          print('Invalid');
          break;
      }
    }
  } catch (e) {
    main();
  }
}
