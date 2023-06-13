#!/bin/sh

cd ../packages/common
flutter clean
flutter pub get
flutter gen-l10n

cd ..

cd onboarding
flutter clean
flutter pub get

cd ..

cd station
flutter clean
flutter pub get

cd ..

cd vehicle
flutter clean
flutter pub get

cd ../..

flutter clean
flutter pub get