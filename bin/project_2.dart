import 'dart:io';

import 'package:project_2/project_2.dart' as project_2;

import 'TripClass.dart';

void main() {
  try {
    bool z = true;
    List list = [];

    void addTrip() {
      print('ID:');
      var id = (stdin.readLineSync()); //stdin.readLineSync();
      print('Location:');
      var location = stdin.readLineSync();
      print('Passengers:');
      var passengers = (stdin.readLineSync());
      print('Date:');
      var date = stdin.readLineSync();
      print('Price:');
      var price = (stdin.readLineSync());
      // Trip trip = new Trip(id, location, passengers, date, price);
      list.add(Trip(id, location, passengers, date, price).getTrip());
    }

    void editTrip() {
      print('Enter Tip id to edit :');
      var tripId = (stdin.readLineSync());
      var idInList = 0;
      list.asMap().forEach((key, value) {
        print(value);
        if (value.containsKey('id')) ;
        // print(value['id']);
        if (value['id'] == tripId) {
          // print('++++++++++++++++++++');
          idInList = key;
        }
      });
      // print('idInList $idInList');
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
    }

    void deleteTrip() {
      print('Enter Tip id to Delete it:');
      var tripId = (stdin.readLineSync());
      var idInList = 0;
      list.asMap().forEach((key, value) {
        print(value);
        if (value.containsKey('id')) ;
        // print(value['id']);
        if (value['id'] == tripId) {
          // print('++++++++++++++++++++');
          idInList = key;
        }
      });
      // print('idInList $idInList');
      list.remove(list[idInList]);
    }

    void viewTrips() {
      print(list);
    }

    void reverseList() {
      print(list.reversed);
    }

    void searchTrip() {
      print('Enter Tip id to find it:');
      var tripId = (stdin.readLineSync());
      var idInList = 0;
      list.asMap().forEach((key, value) {
        print(value);
        if (value.containsKey('id')) ;
        // print(value['id']);
        if (value['id'] == tripId) {
          // print('++++++++++++++++++++');
          idInList = key;
        }
      });
      // print('idInList $idInList');
      // list.remove(list[idInList]);
      print(list[idInList]);
    }

    while (z) {
      print(
          '1- Add Trip   2-Edit Trip   3-Delete Trip     4-View Trips        5-Search Trips   \n'
          '6-Reverse     7-Discount    8-Lastest Trips   9-View Passengers   10-Exit');
      int input = int.parse(stdin.readLineSync());
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
