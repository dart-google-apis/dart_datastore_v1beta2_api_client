part of datastore_v1beta2_api;

class DatasetsResource_ {

  final Client _client;

  DatasetsResource_(Client client) :
      _client = client;

  /**
   * Allocate IDs for incomplete keys (useful for referencing an entity before it is inserted).
   *
   * [request] - AllocateIdsRequest to send in this request
   *
   * [datasetId] - Identifies the dataset.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<AllocateIdsResponse> allocateIds(AllocateIdsRequest request, core.String datasetId, {core.Map optParams}) {
    var url = "{datasetId}/allocateIds";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (datasetId == null) paramErrors.add("datasetId is required");
    if (datasetId != null) urlParams["datasetId"] = datasetId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new AllocateIdsResponse.fromJson(data));
  }

  /**
   * Begin a new transaction.
   *
   * [request] - BeginTransactionRequest to send in this request
   *
   * [datasetId] - Identifies the dataset.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<BeginTransactionResponse> beginTransaction(BeginTransactionRequest request, core.String datasetId, {core.Map optParams}) {
    var url = "{datasetId}/beginTransaction";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (datasetId == null) paramErrors.add("datasetId is required");
    if (datasetId != null) urlParams["datasetId"] = datasetId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new BeginTransactionResponse.fromJson(data));
  }

  /**
   * Commit a transaction, optionally creating, deleting or modifying some entities.
   *
   * [request] - CommitRequest to send in this request
   *
   * [datasetId] - Identifies the dataset.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<CommitResponse> commit(CommitRequest request, core.String datasetId, {core.Map optParams}) {
    var url = "{datasetId}/commit";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (datasetId == null) paramErrors.add("datasetId is required");
    if (datasetId != null) urlParams["datasetId"] = datasetId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new CommitResponse.fromJson(data));
  }

  /**
   * Look up some entities by key.
   *
   * [request] - LookupRequest to send in this request
   *
   * [datasetId] - Identifies the dataset.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<LookupResponse> lookup(LookupRequest request, core.String datasetId, {core.Map optParams}) {
    var url = "{datasetId}/lookup";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (datasetId == null) paramErrors.add("datasetId is required");
    if (datasetId != null) urlParams["datasetId"] = datasetId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new LookupResponse.fromJson(data));
  }

  /**
   * Roll back a transaction.
   *
   * [request] - RollbackRequest to send in this request
   *
   * [datasetId] - Identifies the dataset.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<RollbackResponse> rollback(RollbackRequest request, core.String datasetId, {core.Map optParams}) {
    var url = "{datasetId}/rollback";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (datasetId == null) paramErrors.add("datasetId is required");
    if (datasetId != null) urlParams["datasetId"] = datasetId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new RollbackResponse.fromJson(data));
  }

  /**
   * Query for entities.
   *
   * [request] - RunQueryRequest to send in this request
   *
   * [datasetId] - Identifies the dataset.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<RunQueryResponse> runQuery(RunQueryRequest request, core.String datasetId, {core.Map optParams}) {
    var url = "{datasetId}/runQuery";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (datasetId == null) paramErrors.add("datasetId is required");
    if (datasetId != null) urlParams["datasetId"] = datasetId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new RunQueryResponse.fromJson(data));
  }
}

