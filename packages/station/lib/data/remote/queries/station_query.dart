class StationQuery {
  static String stationListQuery = '''
  query stationList {
  stationList {
    id
    name
    address
    city
    postal_code
    state
    country
    coordinates {
      latitude
      longitude
    }
    operator {
      name
      website
      country
    }
    facilities
    time_zone
    opening_times {
      twentyfourseven
      regular_hours {
        weekday
        period_begin
        period_end
      }
    }
    speed
    status
    review {
      rating
      count
    }
  }
}
  ''';

  static String stationDetailQuery = r'''
    query station($id: ID!) {
  station(id: $id) {
    id
    name
    address
    city
    postal_code
    state
    country
    coordinates {
      latitude
      longitude
    }
    operator {
      name
      website
      country
    }
    facilities
    time_zone
    opening_times {
      twentyfourseven
      regular_hours {
        weekday
        period_begin
        period_end
      }
    }
    speed
    status
    review {
      rating
      count
    }
  }
}
''';
}
