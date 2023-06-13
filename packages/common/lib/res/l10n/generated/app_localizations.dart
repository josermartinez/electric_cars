import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_es.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('es')
  ];

  /// No description provided for @main_app_bar_title.
  ///
  /// In en, this message translates to:
  /// **'Electric cars'**
  String get main_app_bar_title;

  /// No description provided for @on_boarding_welcome_title.
  ///
  /// In en, this message translates to:
  /// **'Welcome'**
  String get on_boarding_welcome_title;

  /// No description provided for @on_boarding_welcome_message.
  ///
  /// In en, this message translates to:
  /// **'Welcome to Electric cars, your go-to destination for electric vehicles and stations information. We\'re thrilled to have you on board and can\'t wait for you to start exploring all the amazing features our app has to offer.'**
  String get on_boarding_welcome_message;

  /// No description provided for @on_boarding_button_label.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get on_boarding_button_label;

  /// No description provided for @on_boarding_ask_permission_title.
  ///
  /// In en, this message translates to:
  /// **'Permissions needed'**
  String get on_boarding_ask_permission_title;

  /// No description provided for @on_boarding_ask_permission_message.
  ///
  /// In en, this message translates to:
  /// **'Hi there! To provide you with the best experience possible, Electric cars needs your permission to access your device\'s location. We promise to use this information solely to improve your experience within the app.'**
  String get on_boarding_ask_permission_message;

  /// No description provided for @on_boarding_permission_success_title.
  ///
  /// In en, this message translates to:
  /// **'Awesome'**
  String get on_boarding_permission_success_title;

  /// No description provided for @on_boarding_permission_success_message.
  ///
  /// In en, this message translates to:
  /// **'Great news! You\'ve just granted Electric cars permission to access your device\'s location. Thank you for trusting us with this information. This will help us to provide you with the best experience possible.'**
  String get on_boarding_permission_success_message;

  /// No description provided for @on_boarding_permission_denied_title.
  ///
  /// In en, this message translates to:
  /// **'Sorry'**
  String get on_boarding_permission_denied_title;

  /// No description provided for @on_boarding_permission_denied_message.
  ///
  /// In en, this message translates to:
  /// **'We\'re sorry, but Electric cars needs your device\'s location to provide you with the best experience possible. Unfortunately, you\'ve chosen not to grant us access to your location data. Without access to your location, we will be unable to continue.'**
  String get on_boarding_permission_denied_message;

  /// No description provided for @on_boarding_thank_you_title.
  ///
  /// In en, this message translates to:
  /// **'Congratulations'**
  String get on_boarding_thank_you_title;

  /// No description provided for @on_boarding_thank_you_message.
  ///
  /// In en, this message translates to:
  /// **'You\'ve completed the setup process for Electric cars and are now ready to start using all its features'**
  String get on_boarding_thank_you_message;

  /// No description provided for @on_boarding_thank_you_button_label.
  ///
  /// In en, this message translates to:
  /// **'Let\'s start driving'**
  String get on_boarding_thank_you_button_label;

  /// No description provided for @vehicle_details_bar_title.
  ///
  /// In en, this message translates to:
  /// **'Vehicle details'**
  String get vehicle_details_bar_title;

  /// No description provided for @main_bottom_nav_option_electric_cars.
  ///
  /// In en, this message translates to:
  /// **'Electric cars'**
  String get main_bottom_nav_option_electric_cars;

  /// No description provided for @main_bottom_nav_option_stations.
  ///
  /// In en, this message translates to:
  /// **'Stations'**
  String get main_bottom_nav_option_stations;

  /// No description provided for @vehicle_detail_general_section_title.
  ///
  /// In en, this message translates to:
  /// **'General'**
  String get vehicle_detail_general_section_title;

  /// No description provided for @vehicle_detail_range_property_label.
  ///
  /// In en, this message translates to:
  /// **'Chargetrip real range™'**
  String get vehicle_detail_range_property_label;

  /// No description provided for @vehicle_detail_battery_property_label.
  ///
  /// In en, this message translates to:
  /// **'Usable battery'**
  String get vehicle_detail_battery_property_label;

  /// No description provided for @vehicle_detail_charging_support_property_label.
  ///
  /// In en, this message translates to:
  /// **'Fast charging support'**
  String get vehicle_detail_charging_support_property_label;

  /// No description provided for @vehicle_detail_performance_section_title.
  ///
  /// In en, this message translates to:
  /// **'Performance'**
  String get vehicle_detail_performance_section_title;

  /// No description provided for @vehicle_detail_speed_property_label.
  ///
  /// In en, this message translates to:
  /// **'Top speed'**
  String get vehicle_detail_speed_property_label;

  /// No description provided for @vehicle_detail_acceleration_property_label.
  ///
  /// In en, this message translates to:
  /// **'Acceleration'**
  String get vehicle_detail_acceleration_property_label;

  /// No description provided for @station_details_bar_title.
  ///
  /// In en, this message translates to:
  /// **'Station Details'**
  String get station_details_bar_title;

  /// No description provided for @station_detail_name_property_label.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get station_detail_name_property_label;

  /// No description provided for @station_detail_address_property_label.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get station_detail_address_property_label;

  /// No description provided for @station_detail_rating_property_label.
  ///
  /// In en, this message translates to:
  /// **'Rating'**
  String get station_detail_rating_property_label;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'es'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'es': return AppLocalizationsEs();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
