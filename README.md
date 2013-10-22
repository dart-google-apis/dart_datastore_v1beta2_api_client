# google_datastore_v1beta2_api

### Description

Auto-generated client library for accessing the datastore v1beta2 API.

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) Google Cloud Datastore API - datastore v1beta2

API for accessing Google Cloud Datastore.

Official API documentation: https://developers.google.com/datastore/

Adding dependency to pubspec.yaml

```
  dependencies:
    google_datastore_v1beta2_api: '>=0.4.0'
```

For web applications:

```
  import "package:google_datastore_v1beta2_api/datastore_v1beta2_api_browser.dart" as datastoreclient;
```

For console application:

```
  import "package:google_datastore_v1beta2_api/datastore_v1beta2_api_console.dart" as datastoreclient;
```

Working with out authentication the following constructor can be called:

```
  var datastore = new datastoreclient.Datastore();
```

Working with authentication then create a new `GoogleOAuth2` object and pass it to the constructor:


```
  GoogleOAuth2 auth = new GoogleOAuth2(CLIENT_ID, SCOPES);
  var datastore = new datastoreclient.Datastore(auth);
```

### Licenses

```
Copyright (c) 2013 Gerwin Sturm & Adam Singer

Licensed under the Apache License, Version 2.0 (the "License"); you may 
not use this file except in compliance with the License. You may obtain a 
copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
License for the specific language governing permissions and limitations 
under the License

------------------------
Based on http://code.google.com/p/google-api-dart-client

Copyright 2012 Google Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may 
not use this file except in compliance with the License. You may obtain a
copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
License for the specific language governing permissions and limitations 
under the License

```
