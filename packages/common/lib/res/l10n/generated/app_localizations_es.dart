import 'app_localizations.dart';

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get main_app_bar_title => 'Vehículos electricos';

  @override
  String get on_boarding_welcome_title => 'Bienvenido';

  @override
  String get on_boarding_welcome_message => 'Bienvenido a Electric cars, su destino de referencia para vehículos eléctricos e información de estaciones. Estamos encantados de tenerte a bordo y no podemos esperar a que comiences a explorar todas las increíbles funciones que nuestra aplicación tiene para ofrecer.';

  @override
  String get on_boarding_button_label => 'Continuar';

  @override
  String get on_boarding_ask_permission_title => 'Permisos requeridos';

  @override
  String get on_boarding_ask_permission_message => '¡Hola! Para brindarle la mejor experiencia posible, Electric cars necesita su permiso para acceder a la ubicación de su dispositivo. Prometemos utilizar esta información únicamente para mejorar su experiencia dentro de la aplicación.';

  @override
  String get on_boarding_permission_success_title => 'Genial';

  @override
  String get on_boarding_permission_success_message => '¡Una gran noticia! Acabas de conceder permiso a Electric cars para acceder a la ubicación de tu dispositivo. Gracias por confiarnos esta información. Esto nos ayudará a brindarle la mejor experiencia posible.';

  @override
  String get on_boarding_permission_denied_title => 'Lo sentimos';

  @override
  String get on_boarding_permission_denied_message => 'Lo sentimos, pero Electric cars necesita la ubicación de su dispositivo para brindarle la mejor experiencia posible. Desafortunadamente, ha elegido no otorgarnos acceso a sus datos de ubicación. Sin acceso a su ubicación, no podremos continuar.';

  @override
  String get on_boarding_thank_you_title => 'Felicitaciones';

  @override
  String get on_boarding_thank_you_message => 'Has completado el proceso de configuración de los coches eléctricos y ahora estás listo para empezar a utilizar todas sus funciones.';

  @override
  String get on_boarding_thank_you_button_label => 'Empecemos a conducir';

  @override
  String get vehicle_details_bar_title => 'Detalles del vehículo';

  @override
  String get main_bottom_nav_option_electric_cars => 'Vehículos eléctricos';

  @override
  String get main_bottom_nav_option_stations => 'Estaciones';

  @override
  String get vehicle_detail_general_section_title => 'General';

  @override
  String get vehicle_detail_range_property_label => 'Alcance real de Chargetrip™';

  @override
  String get vehicle_detail_battery_property_label => 'Batería usable';

  @override
  String get vehicle_detail_charging_support_property_label => 'Soporte de carga rápida';

  @override
  String get vehicle_detail_performance_section_title => 'Rendimiento';

  @override
  String get vehicle_detail_speed_property_label => 'Maxima velocidad';

  @override
  String get vehicle_detail_acceleration_property_label => 'Aceleración';

  @override
  String get station_details_bar_title => 'Detalles de la estación';

  @override
  String get station_detail_name_property_label => 'Nombre';

  @override
  String get station_detail_address_property_label => 'Dirección';

  @override
  String get station_detail_rating_property_label => 'Clasificación';
}
