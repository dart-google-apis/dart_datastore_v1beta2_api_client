library datastore_v1beta2_api.browser;

import "package:google_oauth2_client/google_oauth2_browser.dart" as oauth;

import 'package:google_datastore_v1beta2_api/src/browser_client.dart';
import "package:google_datastore_v1beta2_api/datastore_v1beta2_api_client.dart";

/** API for accessing Google Cloud Datastore. */
@deprecated
class Datastore extends Client with BrowserClient {

  /** OAuth Scope2: View and manage your Google Cloud Datastore data */
  static const String DATASTORE_SCOPE = "https://www.googleapis.com/auth/datastore";

  /** OAuth Scope2: View your email address */
  static const String USERINFO_EMAIL_SCOPE = "https://www.googleapis.com/auth/userinfo.email";

  final oauth.OAuth2 auth;

  Datastore([oauth.OAuth2 this.auth]);
}
