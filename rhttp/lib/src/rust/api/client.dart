// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.3.0.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../frb_generated.dart';
import '../lib.dart';
import 'error.dart';
import 'http.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'package:freezed_annotation/freezed_annotation.dart' hide protected;
import 'stream.dart';
part 'client.freezed.dart';

// These functions are ignored because they are not marked as `pub`: `create_client`, `new_default`, `new`
// These function are ignored because they are on traits that is not defined in current crate (put an empty `#[frb]` on it to unignore): `clone`

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<RequestClient>>
abstract class RequestClient implements RustOpaqueInterface {
  Future<HttpResponse> makeHttpRequestClient(
      {ClientSettings? settings,
      required HttpMethod method,
      required String url,
      List<(String, String)>? query,
      HttpHeaders? headers,
      HttpBody? body,
      Dart2RustStreamReceiver? bodyStream,
      required HttpExpectBody expectBody,
      required FutureOr<void> Function(CancellationToken) onCancelToken,
      required bool cancelable});

  Stream<Uint8List> makeHttpRequestReceiveStreamClient(
      {ClientSettings? settings,
      required HttpMethod method,
      required String url,
      List<(String, String)>? query,
      HttpHeaders? headers,
      HttpBody? body,
      Dart2RustStreamReceiver? bodyStream,
      required FutureOr<void> Function(HttpResponse) onResponse,
      required FutureOr<void> Function(RhttpError) onError,
      required FutureOr<void> Function(CancellationToken) onCancelToken,
      required bool cancelable});
}

class ClientCertificate {
  final Uint8List certificate;
  final Uint8List privateKey;

  const ClientCertificate({
    required this.certificate,
    required this.privateKey,
  });

  @override
  int get hashCode => certificate.hashCode ^ privateKey.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ClientCertificate &&
          runtimeType == other.runtimeType &&
          certificate == other.certificate &&
          privateKey == other.privateKey;
}

class ClientSettings {
  final HttpVersionPref httpVersionPref;
  final Duration? timeout;
  final Duration? connectTimeout;
  final bool throwOnStatusCode;
  final ProxySettings? proxySettings;
  final RedirectSettings? redirectSettings;
  final TlsSettings? tlsSettings;

  const ClientSettings({
    required this.httpVersionPref,
    this.timeout,
    this.connectTimeout,
    required this.throwOnStatusCode,
    this.proxySettings,
    this.redirectSettings,
    this.tlsSettings,
  });

  static Future<ClientSettings> default_() =>
      RustLib.instance.api.crateApiClientClientSettingsDefault();

  @override
  int get hashCode =>
      httpVersionPref.hashCode ^
      timeout.hashCode ^
      connectTimeout.hashCode ^
      throwOnStatusCode.hashCode ^
      proxySettings.hashCode ^
      redirectSettings.hashCode ^
      tlsSettings.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ClientSettings &&
          runtimeType == other.runtimeType &&
          httpVersionPref == other.httpVersionPref &&
          timeout == other.timeout &&
          connectTimeout == other.connectTimeout &&
          throwOnStatusCode == other.throwOnStatusCode &&
          proxySettings == other.proxySettings &&
          redirectSettings == other.redirectSettings &&
          tlsSettings == other.tlsSettings;
}

enum ProxySettings {
  noProxy,
  ;
}

@freezed
sealed class RedirectSettings with _$RedirectSettings {
  const RedirectSettings._();

  const factory RedirectSettings.noRedirect() = RedirectSettings_NoRedirect;
  const factory RedirectSettings.limitedRedirects(
    int field0,
  ) = RedirectSettings_LimitedRedirects;
}

class TlsSettings {
  final bool trustRootCertificates;
  final List<Uint8List> trustedRootCertificates;
  final bool verifyCertificates;
  final ClientCertificate? clientCertificate;
  final TlsVersion? minTlsVersion;
  final TlsVersion? maxTlsVersion;

  const TlsSettings({
    required this.trustRootCertificates,
    required this.trustedRootCertificates,
    required this.verifyCertificates,
    this.clientCertificate,
    this.minTlsVersion,
    this.maxTlsVersion,
  });

  @override
  int get hashCode =>
      trustRootCertificates.hashCode ^
      trustedRootCertificates.hashCode ^
      verifyCertificates.hashCode ^
      clientCertificate.hashCode ^
      minTlsVersion.hashCode ^
      maxTlsVersion.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TlsSettings &&
          runtimeType == other.runtimeType &&
          trustRootCertificates == other.trustRootCertificates &&
          trustedRootCertificates == other.trustedRootCertificates &&
          verifyCertificates == other.verifyCertificates &&
          clientCertificate == other.clientCertificate &&
          minTlsVersion == other.minTlsVersion &&
          maxTlsVersion == other.maxTlsVersion;
}

enum TlsVersion {
  tls12,
  tls13,
  ;
}
