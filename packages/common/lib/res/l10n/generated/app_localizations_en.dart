import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get main_app_bar_title => 'Electric cars';

  @override
  String get on_boarding_welcome_title => 'Welcome';

  @override
  String get on_boarding_welcome_message => 'Welcome to Electric cars, your go-to destination for electric vehicles and stations information. We\'re thrilled to have you on board and can\'t wait for you to start exploring all the amazing features our app has to offer.';

  @override
  String get on_boarding_button_label => 'Continue';

  @override
  String get on_boarding_ask_permission_title => 'Permissions needed';

  @override
  String get on_boarding_ask_permission_message => 'Hi there! To provide you with the best experience possible, Electric cars needs your permission to access your device\'s location. We promise to use this information solely to improve your experience within the app.';

  @override
  String get on_boarding_permission_success_title => 'Awesome';

  @override
  String get on_boarding_permission_success_message => 'Great news! You\'ve just granted Electric cars permission to access your device\'s location. Thank you for trusting us with this information. This will help us to provide you with the best experience possible.';

  @override
  String get on_boarding_permission_denied_title => 'Sorry';

  @override
  String get on_boarding_permission_denied_message => 'We\'re sorry, but Electric cars needs your device\'s location to provide you with the best experience possible. Unfortunately, you\'ve chosen not to grant us access to your location data. Without access to your location, we will be unable to continue.';

  @override
  String get on_boarding_thank_you_title => 'Congratulations';

  @override
  String get on_boarding_thank_you_message => 'You\'ve completed the setup process for Electric cars and are now ready to start using all its features';

  @override
  String get on_boarding_thank_you_button_label => 'Let\'s start driving';

  @override
  String get vehicle_details_bar_title => 'Vehicle details';

  @override
  String get main_bottom_nav_option_electric_cars => 'Electric cars';

  @override
  String get main_bottom_nav_option_stations => 'Stations';

  @override
  String get vehicle_detail_general_section_title => 'General';

  @override
  String get vehicle_detail_range_property_label => 'Chargetrip real range™';

  @override
  String get vehicle_detail_battery_property_label => 'Usable battery';

  @override
  String get vehicle_detail_charging_support_property_label => 'Fast charging support';

  @override
  String get vehicle_detail_performance_section_title => 'Performance';

  @override
  String get vehicle_detail_speed_property_label => 'Top speed';

  @override
  String get vehicle_detail_acceleration_property_label => 'Acceleration';

  @override
  String get station_details_bar_title => 'Station Details';

  @override
  String get station_detail_name_property_label => 'Name';

  @override
  String get station_detail_address_property_label => 'Address';

  @override
  String get station_detail_rating_property_label => 'Rating';
}
