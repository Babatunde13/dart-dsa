void main(List<String> args) {
  final cities = <String>['Lagos', 'California'];
  // const cities = <String>['Lagos', 'California'];
  print(cities);
  cities[0] = 'Moscow';
  print(cities);
  for (var city in cities) {
    print(city);
  }
  const numbers = [1, 2, 4, 5, 78, 7];
  var sum = 0;
  for (var number in numbers) {
    sum += number;
  }
  print(sum);
  print(numbers.length);
  print(numbers.isEmpty);
  print(numbers.first);
  print(numbers.last);
  print(numbers.where((element) => element % 2 == 0));
  cities.add('Tokyo');
  cities.insert(2, 'Beijing');
  print(cities);
  cities.remove('Tokyo');
  print(cities);
  print(cities.contains('Lagos'));
  print(cities.indexOf('Tokyo'));

  // sets
  var countries = {'Nigeria', 'Lagos'};
  print(countries);
  print(countries.elementAt(0));
  countries.add('Japan');
  countries.add('USA');
  countries.add('Japan');
  countries.add('England');
  print(countries);
  countries.remove('Japan');
  countries.remove('Canada');
  countries.remove('Japan');
  print(countries);
  print(countries.first);
  print(countries.last);
  print(countries.length);
  var euCountries = {'England', 'Asian'};
  var asianCountries = {'Asian', 'India'};
  print(euCountries.intersection(asianCountries));
  print(euCountries.union(asianCountries));
  print(euCountries.difference(asianCountries));
  print(asianCountries.difference(euCountries));
  print(asianCountries
      .difference(euCountries)
      .union(euCountries.difference(asianCountries)));
  print(asianCountries
      .union(euCountries)
      .difference(euCountries.intersection(asianCountries)));

  for (var country in countries) {
    print(country);
  }

  // Maps
  Map<String, String> countryCapitals = {
    'Nigeria': 'Abuja',
    'Lagos': 'Ikeja',
    'USA': 'Washington',
    'Japan': 'Tokyo',
    "canada": 'Toronto'
  };

  Map<String, dynamic> person = {
    'name': 'Babatunde Koiki',
    'age': 20,
    'height': 14.3,
  };
  print(countryCapitals);
  print(person);
  print(person['name']);
  person['likesPizza'] = true;
  print(person.keys);
  print(person.values);
  var name = person['name'] as String;
  print(name);

  for (var item in person.keys) {
    print(item);
  }
  for (var item in person.values) {
    print(item);
  }
  for (var item in person.entries) {
    print(item.key);
    print(item.value);
  }
  print('Total \$${pizzaOrder(['pepperoni', 'hawaiian', 'hh'])}');
  restaurantRatings();
  collectionIf();
  collectionFor();
}

int pizzaOrder(List<String> orders) {
  const pizzaPrices = {
    'pepperoni': 300,
    'hawaiian': 400,
    'margherita': 250,
    'vegetarian': 200,
  };
  var price = 0;
  for (var order in orders) {
    if (pizzaPrices.containsKey(order)) {
      price += pizzaPrices[order] as int;
    } else {
      print('Sorry, we don\'t have $order');
    }
  }
  return price;
}

void restaurantRatings() {
  var restaurants = [
    {
      'name': 'The House of Pasta',
      'cuisine': 'Italian',
      'ratings': [5.0, 3.2, 4.5, 4.5, 2.5]
    },
    {
      'name': 'Navaratna',
      'cuisine': 'Indian',
      'ratings': [3.0, 4.0, 4.6, 2.5, 1.5, 5.0]
    },
    {
      'name': 'The House of Pasta',
      'cuisine': 'French',
      'ratings': [5.0, 1.0, 3.0, 2.5, 3.4]
    }
  ];
  for (var restaurant in restaurants) {
    var ratings = restaurant['ratings'] as List<double>;
    var avgRating = addList(ratings) / ratings.length;
    restaurant['avgRating'] = avgRating;
  }
  print(restaurants);
}

double addList(List<double> array) {
  var sum = 0.0;
  for (var ele in array) {
    sum += ele;
  }
  return sum;
}

// collection-if
void collectionIf() {
  const addBlue = true;
  const addRed = false;
  const colors = [
    'brown',
    'green',
    if (addBlue) 'blue',
    if (addRed) 'red',
    'yellow',
    'purple'
  ];
  print(colors);
}

// collrction-for
void collectionFor() {
  const addBlue = true;
  const addRed = false;
  final colors = [
    'brown',
    'green',
    if (addBlue) 'blue',
    if (addRed) 'red',
    'yellow',
    'purple',
    for (var c in ['white', 'black']) c,
  ];
  print(colors);
}

void spreads() {
  const data = [1, 2, 4, 5, 6];
  const extra = [3, 6, 8, 9];
  const result = [...data, ...extra];
  print(result);
}
