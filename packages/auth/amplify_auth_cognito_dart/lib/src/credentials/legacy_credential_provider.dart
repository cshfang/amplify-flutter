// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_auth_cognito_dart.legacy_credential_provider}
/// Provides methods to fetch and delete legacy credentials if they exist.
/// {@endtemplate}
abstract class LegacyCredentialProvider {
  /// {@macro amplify_auth_cognito_dart.legacy_credential_provider}
  const LegacyCredentialProvider();

  /// Fetches legacy credentials if they are present.
  Future<CredentialStoreData?> fetchLegacyCredentials({
    CognitoUserPoolConfig? userPoolConfig,
    CognitoIdentityCredentialsProvider? identityPoolConfig,
    CognitoOAuthConfig? hostedUiConfig,
  });

  /// Deletes legacy credentials if they are present.
  Future<void> deleteLegacyCredentials({
    CognitoUserPoolConfig? userPoolConfig,
    CognitoIdentityCredentialsProvider? identityPoolConfig,
    CognitoOAuthConfig? hostedUiConfig,
  });
}