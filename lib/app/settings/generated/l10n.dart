// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `CashPak el Salvador`
  String get appName {
    return Intl.message(
      'CashPak el Salvador',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  /// `Aceptar`
  String get allAccept {
    return Intl.message(
      'Aceptar',
      name: 'allAccept',
      desc: '',
      args: [],
    );
  }

  /// `Cancelar`
  String get allCancel {
    return Intl.message(
      'Cancelar',
      name: 'allCancel',
      desc: '',
      args: [],
    );
  }

  /// `Atrás`
  String get allBack {
    return Intl.message(
      'Atrás',
      name: 'allBack',
      desc: '',
      args: [],
    );
  }

  /// `Omitir`
  String get allSkip {
    return Intl.message(
      'Omitir',
      name: 'allSkip',
      desc: '',
      args: [],
    );
  }

  /// `Siguiente`
  String get allNext {
    return Intl.message(
      'Siguiente',
      name: 'allNext',
      desc: '',
      args: [],
    );
  }

  /// `Comenzar`
  String get allStart {
    return Intl.message(
      'Comenzar',
      name: 'allStart',
      desc: '',
      args: [],
    );
  }

  /// `Finalizar`
  String get allFinish {
    return Intl.message(
      'Finalizar',
      name: 'allFinish',
      desc: '',
      args: [],
    );
  }

  /// `Continuar`
  String get allContinue {
    return Intl.message(
      'Continuar',
      name: 'allContinue',
      desc: '',
      args: [],
    );
  }

  /// `Por favor, espere un momento.`
  String get allWait {
    return Intl.message(
      'Por favor, espere un momento.',
      name: 'allWait',
      desc: '',
      args: [],
    );
  }

  /// `El servicio no se encuentra disponible, intente más tarde, disculpa por los inconvenientes.`
  String get allGenericError {
    return Intl.message(
      'El servicio no se encuentra disponible, intente más tarde, disculpa por los inconvenientes.',
      name: 'allGenericError',
      desc: '',
      args: [],
    );
  }

  /// `No tiene conexión a internet activa, favor reactive su conexión e intente de nuevo.`
  String get allOffline {
    return Intl.message(
      'No tiene conexión a internet activa, favor reactive su conexión e intente de nuevo.',
      name: 'allOffline',
      desc: '',
      args: [],
    );
  }

  /// `Debe actualizar la App para poder seguir disfrutando de todas las características. Pulse Aceptar para ir a Google Play.`
  String get updateApp {
    return Intl.message(
      'Debe actualizar la App para poder seguir disfrutando de todas las características. Pulse Aceptar para ir a Google Play.',
      name: 'updateApp',
      desc: '',
      args: [],
    );
  }

  /// `Seleccionar`
  String get select {
    return Intl.message(
      'Seleccionar',
      name: 'select',
      desc: '',
      args: [],
    );
  }

  /// `Tipo de documento`
  String get documentType {
    return Intl.message(
      'Tipo de documento',
      name: 'documentType',
      desc: '',
      args: [],
    );
  }

  /// `Crear cuenta`
  String get createAccount {
    return Intl.message(
      'Crear cuenta',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `Ya tengo cuenta`
  String get iHaveAAcount {
    return Intl.message(
      'Ya tengo cuenta',
      name: 'iHaveAAcount',
      desc: '',
      args: [],
    );
  }

  /// `¡Bienvenido a CashPak!`
  String get welcomeTitle {
    return Intl.message(
      '¡Bienvenido a CashPak!',
      name: 'welcomeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Abrí tu cuenta de dinero electrónico con saldo en dólares y córdobas. Usa tu saldo para enviar y recibir remesas, pagar tus servicios básios, recargar tiempo aire y comprar en comercios afiliados además de administrar tus finanzas personales`
  String get welcomeDescription {
    return Intl.message(
      'Abrí tu cuenta de dinero electrónico con saldo en dólares y córdobas. Usa tu saldo para enviar y recibir remesas, pagar tus servicios básios, recargar tiempo aire y comprar en comercios afiliados además de administrar tus finanzas personales',
      name: 'welcomeDescription',
      desc: '',
      args: [],
    );
  }

  /// `Vas a necesitar tener`
  String get welcomeText1 {
    return Intl.message(
      'Vas a necesitar tener',
      name: 'welcomeText1',
      desc: '',
      args: [],
    );
  }

  /// `a mano tu documento de identidad vigente`
  String get welcomeText2 {
    return Intl.message(
      'a mano tu documento de identidad vigente',
      name: 'welcomeText2',
      desc: '',
      args: [],
    );
  }

  /// `(Cédula nacional para Nicaragua, Cédula de residencia o pasaporte para extrangeros)`
  String get welcomeText3 {
    return Intl.message(
      '(Cédula nacional para Nicaragua, Cédula de residencia o pasaporte para extrangeros)',
      name: 'welcomeText3',
      desc: '',
      args: [],
    );
  }

  /// `Documento de identidad`
  String get documentIdentifycation {
    return Intl.message(
      'Documento de identidad',
      name: 'documentIdentifycation',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'es'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
