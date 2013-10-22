part of datastore_v1beta2_api;

class AllocateIdsRequest {

  /** A list of keys with incomplete key paths to allocate IDs for. No key may be reserved/read-only. */
  core.List<Key> keys;

  /** Create new AllocateIdsRequest from JSON data */
  AllocateIdsRequest.fromJson(core.Map json) {
    if (json.containsKey("keys")) {
      keys = json["keys"].map((keysItem) => new Key.fromJson(keysItem)).toList();
    }
  }

  /** Create JSON Object for AllocateIdsRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (keys != null) {
      output["keys"] = keys.map((keysItem) => keysItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of AllocateIdsRequest */
  core.String toString() => JSON.encode(this.toJson());

}

class AllocateIdsResponse {

  ResponseHeader header;

  /** The keys specified in the request (in the same order), each with its key path completed with a newly allocated ID. */
  core.List<Key> keys;

  /** Create new AllocateIdsResponse from JSON data */
  AllocateIdsResponse.fromJson(core.Map json) {
    if (json.containsKey("header")) {
      header = new ResponseHeader.fromJson(json["header"]);
    }
    if (json.containsKey("keys")) {
      keys = json["keys"].map((keysItem) => new Key.fromJson(keysItem)).toList();
    }
  }

  /** Create JSON Object for AllocateIdsResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (header != null) {
      output["header"] = header.toJson();
    }
    if (keys != null) {
      output["keys"] = keys.map((keysItem) => keysItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of AllocateIdsResponse */
  core.String toString() => JSON.encode(this.toJson());

}

class BeginTransactionRequest {

  /** The transaction isolation level. Either snapshot or serializable. The default isolation level is snapshot isolation, which means that another transaction may not concurrently modify the data that is modified by this transaction. Optionally, a transaction can request to be made serializable which means that another transaction cannot concurrently modify the data that is read or modified by this transaction. */
  core.String isolationLevel;

  /** Create new BeginTransactionRequest from JSON data */
  BeginTransactionRequest.fromJson(core.Map json) {
    if (json.containsKey("isolationLevel")) {
      isolationLevel = json["isolationLevel"];
    }
  }

  /** Create JSON Object for BeginTransactionRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (isolationLevel != null) {
      output["isolationLevel"] = isolationLevel;
    }

    return output;
  }

  /** Return String representation of BeginTransactionRequest */
  core.String toString() => JSON.encode(this.toJson());

}

class BeginTransactionResponse {

  ResponseHeader header;

  /** The transaction identifier (always present). */
  core.String transaction;

  /** Create new BeginTransactionResponse from JSON data */
  BeginTransactionResponse.fromJson(core.Map json) {
    if (json.containsKey("header")) {
      header = new ResponseHeader.fromJson(json["header"]);
    }
    if (json.containsKey("transaction")) {
      transaction = json["transaction"];
    }
  }

  /** Create JSON Object for BeginTransactionResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (header != null) {
      output["header"] = header.toJson();
    }
    if (transaction != null) {
      output["transaction"] = transaction;
    }

    return output;
  }

  /** Return String representation of BeginTransactionResponse */
  core.String toString() => JSON.encode(this.toJson());

}

class CommitRequest {

  /** The type of commit to perform. Either TRANSACTIONAL or NON_TRANSACTIONAL. */
  core.String mode;

  /** The mutation to perform. Optional. */
  Mutation mutation;

  /** The transaction identifier, returned by a call to beginTransaction. Must be set when mode is TRANSACTIONAL. */
  core.String transaction;

  /** Create new CommitRequest from JSON data */
  CommitRequest.fromJson(core.Map json) {
    if (json.containsKey("mode")) {
      mode = json["mode"];
    }
    if (json.containsKey("mutation")) {
      mutation = new Mutation.fromJson(json["mutation"]);
    }
    if (json.containsKey("transaction")) {
      transaction = json["transaction"];
    }
  }

  /** Create JSON Object for CommitRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (mode != null) {
      output["mode"] = mode;
    }
    if (mutation != null) {
      output["mutation"] = mutation.toJson();
    }
    if (transaction != null) {
      output["transaction"] = transaction;
    }

    return output;
  }

  /** Return String representation of CommitRequest */
  core.String toString() => JSON.encode(this.toJson());

}

class CommitResponse {

  ResponseHeader header;

  /** The result of performing the mutation (if any). */
  MutationResult mutationResult;

  /** Create new CommitResponse from JSON data */
  CommitResponse.fromJson(core.Map json) {
    if (json.containsKey("header")) {
      header = new ResponseHeader.fromJson(json["header"]);
    }
    if (json.containsKey("mutationResult")) {
      mutationResult = new MutationResult.fromJson(json["mutationResult"]);
    }
  }

  /** Create JSON Object for CommitResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (header != null) {
      output["header"] = header.toJson();
    }
    if (mutationResult != null) {
      output["mutationResult"] = mutationResult.toJson();
    }

    return output;
  }

  /** Return String representation of CommitResponse */
  core.String toString() => JSON.encode(this.toJson());

}

class CompositeFilter {

  /** The list of filters to combine. Must contain at least one filter. */
  core.List<Filter> filters;

  /** The operator for combining multiple filters. Only "and" is currently supported. */
  core.String operator;

  /** Create new CompositeFilter from JSON data */
  CompositeFilter.fromJson(core.Map json) {
    if (json.containsKey("filters")) {
      filters = json["filters"].map((filtersItem) => new Filter.fromJson(filtersItem)).toList();
    }
    if (json.containsKey("operator")) {
      operator = json["operator"];
    }
  }

  /** Create JSON Object for CompositeFilter */
  core.Map toJson() {
    var output = new core.Map();

    if (filters != null) {
      output["filters"] = filters.map((filtersItem) => filtersItem.toJson()).toList();
    }
    if (operator != null) {
      output["operator"] = operator;
    }

    return output;
  }

  /** Return String representation of CompositeFilter */
  core.String toString() => JSON.encode(this.toJson());

}

class Entity {

  /** The entity's key.

An entity must have a key, unless otherwise documented (for example, an entity in Value.entityValue may have no key). An entity's kind is its key's path's last element's kind, or null if it has no key. */
  Key key;

  /** The entity's properties. */
  core.Map<core.String, Property> properties;

  /** Create new Entity from JSON data */
  Entity.fromJson(core.Map json) {
    if (json.containsKey("key")) {
      key = new Key.fromJson(json["key"]);
    }
    if (json.containsKey("properties")) {
      properties = _mapMap(json["properties"], (propertiesItem) => new Property.fromJson(propertiesItem));
    }
  }

  /** Create JSON Object for Entity */
  core.Map toJson() {
    var output = new core.Map();

    if (key != null) {
      output["key"] = key.toJson();
    }
    if (properties != null) {
      output["properties"] = _mapMap(properties, (propertiesItem) => propertiesItem.toJson());
    }

    return output;
  }

  /** Return String representation of Entity */
  core.String toString() => JSON.encode(this.toJson());

}

class EntityResult {

  /** The resulting entity. */
  Entity entity;

  /** Create new EntityResult from JSON data */
  EntityResult.fromJson(core.Map json) {
    if (json.containsKey("entity")) {
      entity = new Entity.fromJson(json["entity"]);
    }
  }

  /** Create JSON Object for EntityResult */
  core.Map toJson() {
    var output = new core.Map();

    if (entity != null) {
      output["entity"] = entity.toJson();
    }

    return output;
  }

  /** Return String representation of EntityResult */
  core.String toString() => JSON.encode(this.toJson());

}

class Filter {

  /** A composite filter. */
  CompositeFilter compositeFilter;

  /** A filter on a property. */
  PropertyFilter propertyFilter;

  /** Create new Filter from JSON data */
  Filter.fromJson(core.Map json) {
    if (json.containsKey("compositeFilter")) {
      compositeFilter = new CompositeFilter.fromJson(json["compositeFilter"]);
    }
    if (json.containsKey("propertyFilter")) {
      propertyFilter = new PropertyFilter.fromJson(json["propertyFilter"]);
    }
  }

  /** Create JSON Object for Filter */
  core.Map toJson() {
    var output = new core.Map();

    if (compositeFilter != null) {
      output["compositeFilter"] = compositeFilter.toJson();
    }
    if (propertyFilter != null) {
      output["propertyFilter"] = propertyFilter.toJson();
    }

    return output;
  }

  /** Return String representation of Filter */
  core.String toString() => JSON.encode(this.toJson());

}

class GqlQuery {

  /** When false, the query string must not contain a literal. */
  core.bool allowLiteral;

  /** A named argument must set field GqlQueryArg.name. No two named arguments may have the same name. For each non-reserved named binding site in the query string, there must be a named argument with that name, but not necessarily the inverse. */
  core.List<GqlQueryArg> nameArgs;

  /** Numbered binding site @1 references the first numbered argument, effectively using 1-based indexing, rather than the usual 0. A numbered argument must NOT set field GqlQueryArg.name. For each binding site numbered i in query_string, there must be an ith numbered argument. The inverse must also be true. */
  core.List<GqlQueryArg> numberArgs;

  core.String queryString;

  /** Create new GqlQuery from JSON data */
  GqlQuery.fromJson(core.Map json) {
    if (json.containsKey("allowLiteral")) {
      allowLiteral = json["allowLiteral"];
    }
    if (json.containsKey("nameArgs")) {
      nameArgs = json["nameArgs"].map((nameArgsItem) => new GqlQueryArg.fromJson(nameArgsItem)).toList();
    }
    if (json.containsKey("numberArgs")) {
      numberArgs = json["numberArgs"].map((numberArgsItem) => new GqlQueryArg.fromJson(numberArgsItem)).toList();
    }
    if (json.containsKey("queryString")) {
      queryString = json["queryString"];
    }
  }

  /** Create JSON Object for GqlQuery */
  core.Map toJson() {
    var output = new core.Map();

    if (allowLiteral != null) {
      output["allowLiteral"] = allowLiteral;
    }
    if (nameArgs != null) {
      output["nameArgs"] = nameArgs.map((nameArgsItem) => nameArgsItem.toJson()).toList();
    }
    if (numberArgs != null) {
      output["numberArgs"] = numberArgs.map((numberArgsItem) => numberArgsItem.toJson()).toList();
    }
    if (queryString != null) {
      output["queryString"] = queryString;
    }

    return output;
  }

  /** Return String representation of GqlQuery */
  core.String toString() => JSON.encode(this.toJson());

}

class GqlQueryArg {

  core.String cursor;

  /** Must match regex "[A-Za-z_$][A-Za-z_$0-9]*". Must not match regex "__.*__". Must not be "". */
  core.String name;

  Value value;

  /** Create new GqlQueryArg from JSON data */
  GqlQueryArg.fromJson(core.Map json) {
    if (json.containsKey("cursor")) {
      cursor = json["cursor"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("value")) {
      value = new Value.fromJson(json["value"]);
    }
  }

  /** Create JSON Object for GqlQueryArg */
  core.Map toJson() {
    var output = new core.Map();

    if (cursor != null) {
      output["cursor"] = cursor;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (value != null) {
      output["value"] = value.toJson();
    }

    return output;
  }

  /** Return String representation of GqlQueryArg */
  core.String toString() => JSON.encode(this.toJson());

}

class Key {

  /** Entities are partitioned into subsets, currently identified by a dataset (usually implicitly specified by the project) and namespace ID. Queries are scoped to a single partition. */
  PartitionId partitionId;

  /** The entity path. An entity path consists of one or more elements composed of a kind and a string or numerical identifier, which identify entities. The first element identifies a root entity, the second element identifies a child of the root entity, the third element a child of the second entity, and so forth. The entities identified by all prefixes of the path are called the element's ancestors. An entity path is always fully complete: ALL of the entity's ancestors are required to be in the path along with the entity identifier itself. The only exception is that in some documented cases, the identifier in the last path element (for the entity) itself may be omitted. A path can never be empty. */
  core.List<KeyPathElement> path;

  /** Create new Key from JSON data */
  Key.fromJson(core.Map json) {
    if (json.containsKey("partitionId")) {
      partitionId = new PartitionId.fromJson(json["partitionId"]);
    }
    if (json.containsKey("path")) {
      path = json["path"].map((pathItem) => new KeyPathElement.fromJson(pathItem)).toList();
    }
  }

  /** Create JSON Object for Key */
  core.Map toJson() {
    var output = new core.Map();

    if (partitionId != null) {
      output["partitionId"] = partitionId.toJson();
    }
    if (path != null) {
      output["path"] = path.map((pathItem) => pathItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of Key */
  core.String toString() => JSON.encode(this.toJson());

}

/** A (kind, ID/name) pair used to construct a key path.

At most one of name or ID may be set. If either is set, the element is complete. If neither is set, the element is incomplete. */
class KeyPathElement {

  /** The ID of the entity. Always > 0. */
  core.int id;

  /** The kind of the entity. Kinds matching regex "__.*__" are reserved/read-only. Cannot be "". */
  core.String kind;

  /** The name of the entity. Names matching regex "__.*__" are reserved/read-only. Cannot be "". */
  core.String name;

  /** Create new KeyPathElement from JSON data */
  KeyPathElement.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = (json["id"] is core.String) ? core.int.parse(json["id"]) : json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
  }

  /** Create JSON Object for KeyPathElement */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }

    return output;
  }

  /** Return String representation of KeyPathElement */
  core.String toString() => JSON.encode(this.toJson());

}

class KindExpression {

  /** The name of the kind. */
  core.String name;

  /** Create new KindExpression from JSON data */
  KindExpression.fromJson(core.Map json) {
    if (json.containsKey("name")) {
      name = json["name"];
    }
  }

  /** Create JSON Object for KindExpression */
  core.Map toJson() {
    var output = new core.Map();

    if (name != null) {
      output["name"] = name;
    }

    return output;
  }

  /** Return String representation of KindExpression */
  core.String toString() => JSON.encode(this.toJson());

}

class LookupRequest {

  /** Keys of entities to look up from the datastore. */
  core.List<Key> keys;

  /** Options for this lookup request. Optional. */
  ReadOptions readOptions;

  /** Create new LookupRequest from JSON data */
  LookupRequest.fromJson(core.Map json) {
    if (json.containsKey("keys")) {
      keys = json["keys"].map((keysItem) => new Key.fromJson(keysItem)).toList();
    }
    if (json.containsKey("readOptions")) {
      readOptions = new ReadOptions.fromJson(json["readOptions"]);
    }
  }

  /** Create JSON Object for LookupRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (keys != null) {
      output["keys"] = keys.map((keysItem) => keysItem.toJson()).toList();
    }
    if (readOptions != null) {
      output["readOptions"] = readOptions.toJson();
    }

    return output;
  }

  /** Return String representation of LookupRequest */
  core.String toString() => JSON.encode(this.toJson());

}

class LookupResponse {

  /** A list of keys that were not looked up due to resource constraints. */
  core.List<Key> deferred;

  /** Entities found. */
  core.List<EntityResult> found;

  ResponseHeader header;

  /** Entities not found, with only the key populated. */
  core.List<EntityResult> missing;

  /** Create new LookupResponse from JSON data */
  LookupResponse.fromJson(core.Map json) {
    if (json.containsKey("deferred")) {
      deferred = json["deferred"].map((deferredItem) => new Key.fromJson(deferredItem)).toList();
    }
    if (json.containsKey("found")) {
      found = json["found"].map((foundItem) => new EntityResult.fromJson(foundItem)).toList();
    }
    if (json.containsKey("header")) {
      header = new ResponseHeader.fromJson(json["header"]);
    }
    if (json.containsKey("missing")) {
      missing = json["missing"].map((missingItem) => new EntityResult.fromJson(missingItem)).toList();
    }
  }

  /** Create JSON Object for LookupResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (deferred != null) {
      output["deferred"] = deferred.map((deferredItem) => deferredItem.toJson()).toList();
    }
    if (found != null) {
      output["found"] = found.map((foundItem) => foundItem.toJson()).toList();
    }
    if (header != null) {
      output["header"] = header.toJson();
    }
    if (missing != null) {
      output["missing"] = missing.map((missingItem) => missingItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of LookupResponse */
  core.String toString() => JSON.encode(this.toJson());

}

class Mutation {

  /** Keys of entities to delete. Each key must have a complete key path and must not be reserved/read-only. */
  core.List<Key> delete;

  /** Ignore a user specified read-only period. Optional. */
  core.bool force;

  /** Entities to insert. Each inserted entity's key must have a complete path and must not be reserved/read-only. */
  core.List<Entity> insert;

  /** Insert entities with a newly allocated ID. Each inserted entity's key must omit the final identifier in its path and must not be reserved/read-only. */
  core.List<Entity> insertAutoId;

  /** Entities to update. Each updated entity's key must have a complete path and must not be reserved/read-only. */
  core.List<Entity> update;

  /** Entities to upsert. Each upserted entity's key must have a complete path and must not be reserved/read-only. */
  core.List<Entity> upsert;

  /** Create new Mutation from JSON data */
  Mutation.fromJson(core.Map json) {
    if (json.containsKey("delete")) {
      delete = json["delete"].map((deleteItem) => new Key.fromJson(deleteItem)).toList();
    }
    if (json.containsKey("force")) {
      force = json["force"];
    }
    if (json.containsKey("insert")) {
      insert = json["insert"].map((insertItem) => new Entity.fromJson(insertItem)).toList();
    }
    if (json.containsKey("insertAutoId")) {
      insertAutoId = json["insertAutoId"].map((insertAutoIdItem) => new Entity.fromJson(insertAutoIdItem)).toList();
    }
    if (json.containsKey("update")) {
      update = json["update"].map((updateItem) => new Entity.fromJson(updateItem)).toList();
    }
    if (json.containsKey("upsert")) {
      upsert = json["upsert"].map((upsertItem) => new Entity.fromJson(upsertItem)).toList();
    }
  }

  /** Create JSON Object for Mutation */
  core.Map toJson() {
    var output = new core.Map();

    if (delete != null) {
      output["delete"] = delete.map((deleteItem) => deleteItem.toJson()).toList();
    }
    if (force != null) {
      output["force"] = force;
    }
    if (insert != null) {
      output["insert"] = insert.map((insertItem) => insertItem.toJson()).toList();
    }
    if (insertAutoId != null) {
      output["insertAutoId"] = insertAutoId.map((insertAutoIdItem) => insertAutoIdItem.toJson()).toList();
    }
    if (update != null) {
      output["update"] = update.map((updateItem) => updateItem.toJson()).toList();
    }
    if (upsert != null) {
      output["upsert"] = upsert.map((upsertItem) => upsertItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of Mutation */
  core.String toString() => JSON.encode(this.toJson());

}

class MutationResult {

  /** Number of index writes. */
  core.int indexUpdates;

  /** Keys for insertAutoId entities. One per entity from the request, in the same order. */
  core.List<Key> insertAutoIdKeys;

  /** Create new MutationResult from JSON data */
  MutationResult.fromJson(core.Map json) {
    if (json.containsKey("indexUpdates")) {
      indexUpdates = json["indexUpdates"];
    }
    if (json.containsKey("insertAutoIdKeys")) {
      insertAutoIdKeys = json["insertAutoIdKeys"].map((insertAutoIdKeysItem) => new Key.fromJson(insertAutoIdKeysItem)).toList();
    }
  }

  /** Create JSON Object for MutationResult */
  core.Map toJson() {
    var output = new core.Map();

    if (indexUpdates != null) {
      output["indexUpdates"] = indexUpdates;
    }
    if (insertAutoIdKeys != null) {
      output["insertAutoIdKeys"] = insertAutoIdKeys.map((insertAutoIdKeysItem) => insertAutoIdKeysItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of MutationResult */
  core.String toString() => JSON.encode(this.toJson());

}

class PartitionId {

  /** The dataset ID. */
  core.String datasetId;

  /** The namespace. */
  core.String namespace;

  /** Create new PartitionId from JSON data */
  PartitionId.fromJson(core.Map json) {
    if (json.containsKey("datasetId")) {
      datasetId = json["datasetId"];
    }
    if (json.containsKey("namespace")) {
      namespace = json["namespace"];
    }
  }

  /** Create JSON Object for PartitionId */
  core.Map toJson() {
    var output = new core.Map();

    if (datasetId != null) {
      output["datasetId"] = datasetId;
    }
    if (namespace != null) {
      output["namespace"] = namespace;
    }

    return output;
  }

  /** Return String representation of PartitionId */
  core.String toString() => JSON.encode(this.toJson());

}

class Property {

  /** A blob key value. */
  core.String blobKeyValue;

  /** A blob value. */
  core.String blobValue;

  /** A boolean value. */
  core.bool booleanValue;

  /** A timestamp value. */
  core.String dateTimeValue;

  /** A double value. */
  core.num doubleValue;

  /** An entity value. May have no key. May have a key with an incomplete key path. May have a reserved/read-only key. */
  Entity entityValue;

  /** If the value should be indexed.

The indexed property may be set for a null value. When indexed is true, stringValue is limited to 500 characters and the blob value is limited to 500 bytes. Input values by default have indexed set to true; however, you can explicitly set indexed to true if you want. (An output value never has indexed explicitly set to true.) If a value is itself an entity, it cannot have indexed set to true. */
  core.bool indexed;

  /** An integer value. */
  core.int integerValue;

  /** A key value. */
  Key keyValue;

  /** A list value. Cannot contain another list value. Cannot also have a meaning and indexing set. */
  core.List<Value> listValue;

  /** The meaning field is reserved and should not be used. */
  core.int meaning;

  /** A UTF-8 encoded string value. */
  core.String stringValue;

  /** Create new Property from JSON data */
  Property.fromJson(core.Map json) {
    if (json.containsKey("blobKeyValue")) {
      blobKeyValue = json["blobKeyValue"];
    }
    if (json.containsKey("blobValue")) {
      blobValue = json["blobValue"];
    }
    if (json.containsKey("booleanValue")) {
      booleanValue = json["booleanValue"];
    }
    if (json.containsKey("dateTimeValue")) {
      dateTimeValue = json["dateTimeValue"];
    }
    if (json.containsKey("doubleValue")) {
      doubleValue = json["doubleValue"];
    }
    if (json.containsKey("entityValue")) {
      entityValue = new Entity.fromJson(json["entityValue"]);
    }
    if (json.containsKey("indexed")) {
      indexed = json["indexed"];
    }
    if (json.containsKey("integerValue")) {
      integerValue = (json["integerValue"] is core.String) ? core.int.parse(json["integerValue"]) : json["integerValue"];
    }
    if (json.containsKey("keyValue")) {
      keyValue = new Key.fromJson(json["keyValue"]);
    }
    if (json.containsKey("listValue")) {
      listValue = json["listValue"].map((listValueItem) => new Value.fromJson(listValueItem)).toList();
    }
    if (json.containsKey("meaning")) {
      meaning = json["meaning"];
    }
    if (json.containsKey("stringValue")) {
      stringValue = json["stringValue"];
    }
  }

  /** Create JSON Object for Property */
  core.Map toJson() {
    var output = new core.Map();

    if (blobKeyValue != null) {
      output["blobKeyValue"] = blobKeyValue;
    }
    if (blobValue != null) {
      output["blobValue"] = blobValue;
    }
    if (booleanValue != null) {
      output["booleanValue"] = booleanValue;
    }
    if (dateTimeValue != null) {
      output["dateTimeValue"] = dateTimeValue;
    }
    if (doubleValue != null) {
      output["doubleValue"] = doubleValue;
    }
    if (entityValue != null) {
      output["entityValue"] = entityValue.toJson();
    }
    if (indexed != null) {
      output["indexed"] = indexed;
    }
    if (integerValue != null) {
      output["integerValue"] = integerValue;
    }
    if (keyValue != null) {
      output["keyValue"] = keyValue.toJson();
    }
    if (listValue != null) {
      output["listValue"] = listValue.map((listValueItem) => listValueItem.toJson()).toList();
    }
    if (meaning != null) {
      output["meaning"] = meaning;
    }
    if (stringValue != null) {
      output["stringValue"] = stringValue;
    }

    return output;
  }

  /** Return String representation of Property */
  core.String toString() => JSON.encode(this.toJson());

}

class PropertyExpression {

  /** The aggregation function to apply to the property. Optional. Can only be used when grouping by at least one property. Must then be set on all properties in the projection that are not being grouped by. Aggregation functions: first selects the first result as determined by the query's order. */
  core.String aggregationFunction;

  /** The property to project. */
  PropertyReference property;

  /** Create new PropertyExpression from JSON data */
  PropertyExpression.fromJson(core.Map json) {
    if (json.containsKey("aggregationFunction")) {
      aggregationFunction = json["aggregationFunction"];
    }
    if (json.containsKey("property")) {
      property = new PropertyReference.fromJson(json["property"]);
    }
  }

  /** Create JSON Object for PropertyExpression */
  core.Map toJson() {
    var output = new core.Map();

    if (aggregationFunction != null) {
      output["aggregationFunction"] = aggregationFunction;
    }
    if (property != null) {
      output["property"] = property.toJson();
    }

    return output;
  }

  /** Return String representation of PropertyExpression */
  core.String toString() => JSON.encode(this.toJson());

}

class PropertyFilter {

  /** The operator to filter by. One of lessThan, lessThanOrEqual, greaterThan, greaterThanOrEqual, equal, or hasAncestor. */
  core.String operator;

  /** The property to filter by. */
  PropertyReference property;

  /** The value to compare the property to. */
  Value value;

  /** Create new PropertyFilter from JSON data */
  PropertyFilter.fromJson(core.Map json) {
    if (json.containsKey("operator")) {
      operator = json["operator"];
    }
    if (json.containsKey("property")) {
      property = new PropertyReference.fromJson(json["property"]);
    }
    if (json.containsKey("value")) {
      value = new Value.fromJson(json["value"]);
    }
  }

  /** Create JSON Object for PropertyFilter */
  core.Map toJson() {
    var output = new core.Map();

    if (operator != null) {
      output["operator"] = operator;
    }
    if (property != null) {
      output["property"] = property.toJson();
    }
    if (value != null) {
      output["value"] = value.toJson();
    }

    return output;
  }

  /** Return String representation of PropertyFilter */
  core.String toString() => JSON.encode(this.toJson());

}

class PropertyOrder {

  /** The direction to order by. One of ascending or descending. Optional, defaults to ascending. */
  core.String direction;

  /** The property to order by. */
  PropertyReference property;

  /** Create new PropertyOrder from JSON data */
  PropertyOrder.fromJson(core.Map json) {
    if (json.containsKey("direction")) {
      direction = json["direction"];
    }
    if (json.containsKey("property")) {
      property = new PropertyReference.fromJson(json["property"]);
    }
  }

  /** Create JSON Object for PropertyOrder */
  core.Map toJson() {
    var output = new core.Map();

    if (direction != null) {
      output["direction"] = direction;
    }
    if (property != null) {
      output["property"] = property.toJson();
    }

    return output;
  }

  /** Return String representation of PropertyOrder */
  core.String toString() => JSON.encode(this.toJson());

}

class PropertyReference {

  /** The name of the property. */
  core.String name;

  /** Create new PropertyReference from JSON data */
  PropertyReference.fromJson(core.Map json) {
    if (json.containsKey("name")) {
      name = json["name"];
    }
  }

  /** Create JSON Object for PropertyReference */
  core.Map toJson() {
    var output = new core.Map();

    if (name != null) {
      output["name"] = name;
    }

    return output;
  }

  /** Return String representation of PropertyReference */
  core.String toString() => JSON.encode(this.toJson());

}

class Query {

  /** An ending point for the query results. Optional. Query cursors are returned in query result batches. */
  core.String endCursor;

  /** The filter to apply (optional). */
  Filter filter;

  /** The properties to group by (if empty, no grouping is applied to the result set). */
  core.List<PropertyReference> groupBy;

  /** The kinds to query (if empty, returns entities from all kinds). */
  core.List<KindExpression> kinds;

  /** The maximum number of results to return. Applies after all other constraints. Optional. */
  core.int limit;

  /** The number of results to skip. Applies before limit, but after all other constraints (optional, defaults to 0). */
  core.int offset;

  /** The order to apply to the query results (if empty, order is unspecified). */
  core.List<PropertyOrder> order;

  /** The projection to return. If not set the entire entity is returned. */
  core.List<PropertyExpression> projection;

  /** A starting point for the query results. Optional. Query cursors are returned in query result batches. */
  core.String startCursor;

  /** Create new Query from JSON data */
  Query.fromJson(core.Map json) {
    if (json.containsKey("endCursor")) {
      endCursor = json["endCursor"];
    }
    if (json.containsKey("filter")) {
      filter = new Filter.fromJson(json["filter"]);
    }
    if (json.containsKey("groupBy")) {
      groupBy = json["groupBy"].map((groupByItem) => new PropertyReference.fromJson(groupByItem)).toList();
    }
    if (json.containsKey("kinds")) {
      kinds = json["kinds"].map((kindsItem) => new KindExpression.fromJson(kindsItem)).toList();
    }
    if (json.containsKey("limit")) {
      limit = json["limit"];
    }
    if (json.containsKey("offset")) {
      offset = json["offset"];
    }
    if (json.containsKey("order")) {
      order = json["order"].map((orderItem) => new PropertyOrder.fromJson(orderItem)).toList();
    }
    if (json.containsKey("projection")) {
      projection = json["projection"].map((projectionItem) => new PropertyExpression.fromJson(projectionItem)).toList();
    }
    if (json.containsKey("startCursor")) {
      startCursor = json["startCursor"];
    }
  }

  /** Create JSON Object for Query */
  core.Map toJson() {
    var output = new core.Map();

    if (endCursor != null) {
      output["endCursor"] = endCursor;
    }
    if (filter != null) {
      output["filter"] = filter.toJson();
    }
    if (groupBy != null) {
      output["groupBy"] = groupBy.map((groupByItem) => groupByItem.toJson()).toList();
    }
    if (kinds != null) {
      output["kinds"] = kinds.map((kindsItem) => kindsItem.toJson()).toList();
    }
    if (limit != null) {
      output["limit"] = limit;
    }
    if (offset != null) {
      output["offset"] = offset;
    }
    if (order != null) {
      output["order"] = order.map((orderItem) => orderItem.toJson()).toList();
    }
    if (projection != null) {
      output["projection"] = projection.map((projectionItem) => projectionItem.toJson()).toList();
    }
    if (startCursor != null) {
      output["startCursor"] = startCursor;
    }

    return output;
  }

  /** Return String representation of Query */
  core.String toString() => JSON.encode(this.toJson());

}

class QueryResultBatch {

  /** A cursor that points to the position after the last result in the batch. May be absent. */
  core.String endCursor;

  /** The result type for every entity in entityResults. full for full entities, projection for entities with only projected properties, keyOnly for entities with only a key. */
  core.String entityResultType;

  /** The results for this batch. */
  core.List<EntityResult> entityResults;

  /** The state of the query after the current batch. One of notFinished, moreResultsAfterLimit, noMoreResults. */
  core.String moreResults;

  /** The number of results skipped because of Query.offset. */
  core.int skippedResults;

  /** Create new QueryResultBatch from JSON data */
  QueryResultBatch.fromJson(core.Map json) {
    if (json.containsKey("endCursor")) {
      endCursor = json["endCursor"];
    }
    if (json.containsKey("entityResultType")) {
      entityResultType = json["entityResultType"];
    }
    if (json.containsKey("entityResults")) {
      entityResults = json["entityResults"].map((entityResultsItem) => new EntityResult.fromJson(entityResultsItem)).toList();
    }
    if (json.containsKey("moreResults")) {
      moreResults = json["moreResults"];
    }
    if (json.containsKey("skippedResults")) {
      skippedResults = json["skippedResults"];
    }
  }

  /** Create JSON Object for QueryResultBatch */
  core.Map toJson() {
    var output = new core.Map();

    if (endCursor != null) {
      output["endCursor"] = endCursor;
    }
    if (entityResultType != null) {
      output["entityResultType"] = entityResultType;
    }
    if (entityResults != null) {
      output["entityResults"] = entityResults.map((entityResultsItem) => entityResultsItem.toJson()).toList();
    }
    if (moreResults != null) {
      output["moreResults"] = moreResults;
    }
    if (skippedResults != null) {
      output["skippedResults"] = skippedResults;
    }

    return output;
  }

  /** Return String representation of QueryResultBatch */
  core.String toString() => JSON.encode(this.toJson());

}

class ReadOptions {

  /** The read consistency to use. One of default, strong, or eventual. Cannot be set when transaction is set. Lookup and ancestor queries default to strong, global queries default to eventual and cannot be set to strong. Optional. Default is default. */
  core.String readConsistency;

  /** The transaction to use. Optional. */
  core.String transaction;

  /** Create new ReadOptions from JSON data */
  ReadOptions.fromJson(core.Map json) {
    if (json.containsKey("readConsistency")) {
      readConsistency = json["readConsistency"];
    }
    if (json.containsKey("transaction")) {
      transaction = json["transaction"];
    }
  }

  /** Create JSON Object for ReadOptions */
  core.Map toJson() {
    var output = new core.Map();

    if (readConsistency != null) {
      output["readConsistency"] = readConsistency;
    }
    if (transaction != null) {
      output["transaction"] = transaction;
    }

    return output;
  }

  /** Return String representation of ReadOptions */
  core.String toString() => JSON.encode(this.toJson());

}

class ResponseHeader {

  /** The kind, fixed to "datastore#responseHeader". */
  core.String kind;

  /** Create new ResponseHeader from JSON data */
  ResponseHeader.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for ResponseHeader */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of ResponseHeader */
  core.String toString() => JSON.encode(this.toJson());

}

class RollbackRequest {

  /** The transaction identifier, returned by a call to beginTransaction. */
  core.String transaction;

  /** Create new RollbackRequest from JSON data */
  RollbackRequest.fromJson(core.Map json) {
    if (json.containsKey("transaction")) {
      transaction = json["transaction"];
    }
  }

  /** Create JSON Object for RollbackRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (transaction != null) {
      output["transaction"] = transaction;
    }

    return output;
  }

  /** Return String representation of RollbackRequest */
  core.String toString() => JSON.encode(this.toJson());

}

class RollbackResponse {

  ResponseHeader header;

  /** Create new RollbackResponse from JSON data */
  RollbackResponse.fromJson(core.Map json) {
    if (json.containsKey("header")) {
      header = new ResponseHeader.fromJson(json["header"]);
    }
  }

  /** Create JSON Object for RollbackResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (header != null) {
      output["header"] = header.toJson();
    }

    return output;
  }

  /** Return String representation of RollbackResponse */
  core.String toString() => JSON.encode(this.toJson());

}

class RunQueryRequest {

  /** The GQL query to run. Either this field or field query must be set, but not both. */
  GqlQuery gqlQuery;

  /** Entities are partitioned into subsets, identified by a dataset (usually implicitly specified by the project) and namespace ID. Queries are scoped to a single partition. */
  PartitionId partitionId;

  /** The query to run. Either this field or field gql_query must be set, but not both. */
  Query query;

  /** The options for this query. */
  ReadOptions readOptions;

  /** Create new RunQueryRequest from JSON data */
  RunQueryRequest.fromJson(core.Map json) {
    if (json.containsKey("gqlQuery")) {
      gqlQuery = new GqlQuery.fromJson(json["gqlQuery"]);
    }
    if (json.containsKey("partitionId")) {
      partitionId = new PartitionId.fromJson(json["partitionId"]);
    }
    if (json.containsKey("query")) {
      query = new Query.fromJson(json["query"]);
    }
    if (json.containsKey("readOptions")) {
      readOptions = new ReadOptions.fromJson(json["readOptions"]);
    }
  }

  /** Create JSON Object for RunQueryRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (gqlQuery != null) {
      output["gqlQuery"] = gqlQuery.toJson();
    }
    if (partitionId != null) {
      output["partitionId"] = partitionId.toJson();
    }
    if (query != null) {
      output["query"] = query.toJson();
    }
    if (readOptions != null) {
      output["readOptions"] = readOptions.toJson();
    }

    return output;
  }

  /** Return String representation of RunQueryRequest */
  core.String toString() => JSON.encode(this.toJson());

}

class RunQueryResponse {

  /** A batch of query results (always present). */
  QueryResultBatch batch;

  ResponseHeader header;

  /** Create new RunQueryResponse from JSON data */
  RunQueryResponse.fromJson(core.Map json) {
    if (json.containsKey("batch")) {
      batch = new QueryResultBatch.fromJson(json["batch"]);
    }
    if (json.containsKey("header")) {
      header = new ResponseHeader.fromJson(json["header"]);
    }
  }

  /** Create JSON Object for RunQueryResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (batch != null) {
      output["batch"] = batch.toJson();
    }
    if (header != null) {
      output["header"] = header.toJson();
    }

    return output;
  }

  /** Return String representation of RunQueryResponse */
  core.String toString() => JSON.encode(this.toJson());

}

class Value {

  /** A blob key value. */
  core.String blobKeyValue;

  /** A blob value. */
  core.String blobValue;

  /** A boolean value. */
  core.bool booleanValue;

  /** A timestamp value. */
  core.String dateTimeValue;

  /** A double value. */
  core.num doubleValue;

  /** An entity value. May have no key. May have a key with an incomplete key path. May have a reserved/read-only key. */
  Entity entityValue;

  /** If the value should be indexed.

The indexed property may be set for a null value. When indexed is true, stringValue is limited to 500 characters and the blob value is limited to 500 bytes. Input values by default have indexed set to true; however, you can explicitly set indexed to true if you want. (An output value never has indexed explicitly set to true.) If a value is itself an entity, it cannot have indexed set to true. */
  core.bool indexed;

  /** An integer value. */
  core.int integerValue;

  /** A key value. */
  Key keyValue;

  /** A list value. Cannot contain another list value. Cannot also have a meaning and indexing set. */
  core.List<Value> listValue;

  /** The meaning field is reserved and should not be used. */
  core.int meaning;

  /** A UTF-8 encoded string value. */
  core.String stringValue;

  /** Create new Value from JSON data */
  Value.fromJson(core.Map json) {
    if (json.containsKey("blobKeyValue")) {
      blobKeyValue = json["blobKeyValue"];
    }
    if (json.containsKey("blobValue")) {
      blobValue = json["blobValue"];
    }
    if (json.containsKey("booleanValue")) {
      booleanValue = json["booleanValue"];
    }
    if (json.containsKey("dateTimeValue")) {
      dateTimeValue = json["dateTimeValue"];
    }
    if (json.containsKey("doubleValue")) {
      doubleValue = json["doubleValue"];
    }
    if (json.containsKey("entityValue")) {
      entityValue = new Entity.fromJson(json["entityValue"]);
    }
    if (json.containsKey("indexed")) {
      indexed = json["indexed"];
    }
    if (json.containsKey("integerValue")) {
      integerValue = (json["integerValue"] is core.String) ? core.int.parse(json["integerValue"]) : json["integerValue"];
    }
    if (json.containsKey("keyValue")) {
      keyValue = new Key.fromJson(json["keyValue"]);
    }
    if (json.containsKey("listValue")) {
      listValue = json["listValue"].map((listValueItem) => new Value.fromJson(listValueItem)).toList();
    }
    if (json.containsKey("meaning")) {
      meaning = json["meaning"];
    }
    if (json.containsKey("stringValue")) {
      stringValue = json["stringValue"];
    }
  }

  /** Create JSON Object for Value */
  core.Map toJson() {
    var output = new core.Map();

    if (blobKeyValue != null) {
      output["blobKeyValue"] = blobKeyValue;
    }
    if (blobValue != null) {
      output["blobValue"] = blobValue;
    }
    if (booleanValue != null) {
      output["booleanValue"] = booleanValue;
    }
    if (dateTimeValue != null) {
      output["dateTimeValue"] = dateTimeValue;
    }
    if (doubleValue != null) {
      output["doubleValue"] = doubleValue;
    }
    if (entityValue != null) {
      output["entityValue"] = entityValue.toJson();
    }
    if (indexed != null) {
      output["indexed"] = indexed;
    }
    if (integerValue != null) {
      output["integerValue"] = integerValue;
    }
    if (keyValue != null) {
      output["keyValue"] = keyValue.toJson();
    }
    if (listValue != null) {
      output["listValue"] = listValue.map((listValueItem) => listValueItem.toJson()).toList();
    }
    if (meaning != null) {
      output["meaning"] = meaning;
    }
    if (stringValue != null) {
      output["stringValue"] = stringValue;
    }

    return output;
  }

  /** Return String representation of Value */
  core.String toString() => JSON.encode(this.toJson());

}

core.Map _mapMap(core.Map source, [core.Object convert(core.Object source) = null]) {
  assert(source != null);
  var result = new dart_collection.LinkedHashMap();
  source.forEach((core.String key, value) {
    assert(key != null);
    if(convert == null) {
      result[key] = value;
    } else {
      result[key] = convert(value);
    }
  });
  return result;
}
