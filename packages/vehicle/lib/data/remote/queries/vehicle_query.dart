class VehicleQueries {
  static String vehicleListQuery = '''
  query vehicleListAll {
  vehicleList {
    id
    naming {
      make
      model
      version
      edition
      chargetrip_version
    }
    media {
      image {
        id
        type
        url
        height
        width
        thumbnail_url
        thumbnail_height
        thumbnail_width
      }
      brand {
        id
        type
        url
        height
        width
        thumbnail_url
        thumbnail_height
        thumbnail_width
      }
    }
  }
}
''';

  static String vehicleQuery = r'''
  query vehicle($id: ID!) {
  vehicle(id: $id) {
    id
    naming {
      make
      model
      version
      edition
      chargetrip_version
    }
    battery {
      usable_kwh
      full_kwh
    }
    performance {
      acceleration
      top_speed
    }
    range {
      chargetrip_range {
        best
        worst
      }
    }
    media {
      image {
        id
        type
        url
        height
        width
        thumbnail_url
        thumbnail_height
        thumbnail_width
      }
      brand {
        id
        type
        url
        height
        width
        thumbnail_url
        thumbnail_height
        thumbnail_width
      }
    }
    routing {
      fast_charging_support
    }
  }
}
''';
}
