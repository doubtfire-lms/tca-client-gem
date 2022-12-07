# TCAClient::GroupsApi

All URIs are relative to *https://app-us.turnitin.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_group_attachment**](GroupsApi.md#add_group_attachment) | **POST** /groups/{group_id}/attachments | Add attachment to a group. will create a group if it does not exist. |
| [**delete_group_attachment**](GroupsApi.md#delete_group_attachment) | **DELETE** /groups/{group_id}/attachments/{attach_id} | Hard delete group attachment |
| [**get_group**](GroupsApi.md#get_group) | **GET** /groups/{group_id} | Get group, group context and group context owners info |
| [**get_group_attachment**](GroupsApi.md#get_group_attachment) | **GET** /groups/{group_id}/attachments/{attach_id} | Get group attachment |
| [**get_group_attachments**](GroupsApi.md#get_group_attachments) | **GET** /groups/{group_id}/attachments | Get all attachments |
| [**groups_group_id_put**](GroupsApi.md#groups_group_id_put) | **PUT** /groups/{group_id} | upsert group, group context and group context owners info |
| [**update_group_attachment**](GroupsApi.md#update_group_attachment) | **PATCH** /groups/{group_id}/attachments/{attach_id} | Patch a group attachment |
| [**upload_group_attachment**](GroupsApi.md#upload_group_attachment) | **PUT** /groups/{group_id}/attachments/{attach_id}/original | Upload Submitted File |


## add_group_attachment

> <AddGroupAttachmentResponse> add_group_attachment(x_turnitin_integration_name, x_turnitin_integration_version, group_id, data)

Add attachment to a group. will create a group if it does not exist.

### Examples

```ruby
require 'time'
require 'tca_client'
# setup authorization
TCAClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = TCAClient::GroupsApi.new
x_turnitin_integration_name = 'myintegration' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'v1.0.2' # String | the version of the integration platform being used
group_id = 'group_id_example' # String | group_id
data = TCAClient::AddGroupAttachmentRequest.new # AddGroupAttachmentRequest | 

begin
  # Add attachment to a group. will create a group if it does not exist.
  result = api_instance.add_group_attachment(x_turnitin_integration_name, x_turnitin_integration_version, group_id, data)
  p result
rescue TCAClient::ApiError => e
  puts "Error when calling GroupsApi->add_group_attachment: #{e}"
end
```

#### Using the add_group_attachment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddGroupAttachmentResponse>, Integer, Hash)> add_group_attachment_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, group_id, data)

```ruby
begin
  # Add attachment to a group. will create a group if it does not exist.
  data, status_code, headers = api_instance.add_group_attachment_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, group_id, data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddGroupAttachmentResponse>
rescue TCAClient::ApiError => e
  puts "Error when calling GroupsApi->add_group_attachment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_turnitin_integration_name** | **String** | a human readable string representing the type of integration being used |  |
| **x_turnitin_integration_version** | **String** | the version of the integration platform being used |  |
| **group_id** | **String** | group_id |  |
| **data** | [**AddGroupAttachmentRequest**](AddGroupAttachmentRequest.md) |  |  |

### Return type

[**AddGroupAttachmentResponse**](AddGroupAttachmentResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_group_attachment

> delete_group_attachment(x_turnitin_integration_name, x_turnitin_integration_version, group_id, attach_id)

Hard delete group attachment

### Examples

```ruby
require 'time'
require 'tca_client'
# setup authorization
TCAClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = TCAClient::GroupsApi.new
x_turnitin_integration_name = 'myintegration' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'v1.0.2' # String | the version of the integration platform being used
group_id = 'group_id_example' # String | group_id
attach_id = 'attach_id_example' # String | The attachment ID (returned from a successful group attachment request) 

begin
  # Hard delete group attachment
  api_instance.delete_group_attachment(x_turnitin_integration_name, x_turnitin_integration_version, group_id, attach_id)
rescue TCAClient::ApiError => e
  puts "Error when calling GroupsApi->delete_group_attachment: #{e}"
end
```

#### Using the delete_group_attachment_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_group_attachment_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, group_id, attach_id)

```ruby
begin
  # Hard delete group attachment
  data, status_code, headers = api_instance.delete_group_attachment_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, group_id, attach_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue TCAClient::ApiError => e
  puts "Error when calling GroupsApi->delete_group_attachment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_turnitin_integration_name** | **String** | a human readable string representing the type of integration being used |  |
| **x_turnitin_integration_version** | **String** | the version of the integration platform being used |  |
| **group_id** | **String** | group_id |  |
| **attach_id** | **String** | The attachment ID (returned from a successful group attachment request)  |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_group

> <AggregateGroup> get_group(x_turnitin_integration_name, x_turnitin_integration_version, group_id)

Get group, group context and group context owners info

### Examples

```ruby
require 'time'
require 'tca_client'
# setup authorization
TCAClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = TCAClient::GroupsApi.new
x_turnitin_integration_name = 'myintegration' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'v1.0.2' # String | the version of the integration platform being used
group_id = 'group_id_example' # String | group_id

begin
  # Get group, group context and group context owners info
  result = api_instance.get_group(x_turnitin_integration_name, x_turnitin_integration_version, group_id)
  p result
rescue TCAClient::ApiError => e
  puts "Error when calling GroupsApi->get_group: #{e}"
end
```

#### Using the get_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AggregateGroup>, Integer, Hash)> get_group_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, group_id)

```ruby
begin
  # Get group, group context and group context owners info
  data, status_code, headers = api_instance.get_group_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AggregateGroup>
rescue TCAClient::ApiError => e
  puts "Error when calling GroupsApi->get_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_turnitin_integration_name** | **String** | a human readable string representing the type of integration being used |  |
| **x_turnitin_integration_version** | **String** | the version of the integration platform being used |  |
| **group_id** | **String** | group_id |  |

### Return type

[**AggregateGroup**](AggregateGroup.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_group_attachment

> <GroupAttachmentResponse> get_group_attachment(x_turnitin_integration_name, x_turnitin_integration_version, group_id, attach_id)

Get group attachment

### Examples

```ruby
require 'time'
require 'tca_client'
# setup authorization
TCAClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = TCAClient::GroupsApi.new
x_turnitin_integration_name = 'myintegration' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'v1.0.2' # String | the version of the integration platform being used
group_id = 'group_id_example' # String | group_id
attach_id = 'attach_id_example' # String | The attachment ID (returned from a successful group attachment request) 

begin
  # Get group attachment
  result = api_instance.get_group_attachment(x_turnitin_integration_name, x_turnitin_integration_version, group_id, attach_id)
  p result
rescue TCAClient::ApiError => e
  puts "Error when calling GroupsApi->get_group_attachment: #{e}"
end
```

#### Using the get_group_attachment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupAttachmentResponse>, Integer, Hash)> get_group_attachment_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, group_id, attach_id)

```ruby
begin
  # Get group attachment
  data, status_code, headers = api_instance.get_group_attachment_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, group_id, attach_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupAttachmentResponse>
rescue TCAClient::ApiError => e
  puts "Error when calling GroupsApi->get_group_attachment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_turnitin_integration_name** | **String** | a human readable string representing the type of integration being used |  |
| **x_turnitin_integration_version** | **String** | the version of the integration platform being used |  |
| **group_id** | **String** | group_id |  |
| **attach_id** | **String** | The attachment ID (returned from a successful group attachment request)  |  |

### Return type

[**GroupAttachmentResponse**](GroupAttachmentResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_group_attachments

> <GetGroupAttachments200Response> get_group_attachments(x_turnitin_integration_name, x_turnitin_integration_version, group_id)

Get all attachments

### Examples

```ruby
require 'time'
require 'tca_client'
# setup authorization
TCAClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = TCAClient::GroupsApi.new
x_turnitin_integration_name = 'myintegration' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'v1.0.2' # String | the version of the integration platform being used
group_id = 'group_id_example' # String | group_id

begin
  # Get all attachments
  result = api_instance.get_group_attachments(x_turnitin_integration_name, x_turnitin_integration_version, group_id)
  p result
rescue TCAClient::ApiError => e
  puts "Error when calling GroupsApi->get_group_attachments: #{e}"
end
```

#### Using the get_group_attachments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetGroupAttachments200Response>, Integer, Hash)> get_group_attachments_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, group_id)

```ruby
begin
  # Get all attachments
  data, status_code, headers = api_instance.get_group_attachments_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetGroupAttachments200Response>
rescue TCAClient::ApiError => e
  puts "Error when calling GroupsApi->get_group_attachments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_turnitin_integration_name** | **String** | a human readable string representing the type of integration being used |  |
| **x_turnitin_integration_version** | **String** | the version of the integration platform being used |  |
| **group_id** | **String** | group_id |  |

### Return type

[**GetGroupAttachments200Response**](GetGroupAttachments200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## groups_group_id_put

> <AggregateGroup> groups_group_id_put(x_turnitin_integration_name, x_turnitin_integration_version, group_id, data)

upsert group, group context and group context owners info

### Examples

```ruby
require 'time'
require 'tca_client'
# setup authorization
TCAClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = TCAClient::GroupsApi.new
x_turnitin_integration_name = 'myintegration' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'v1.0.2' # String | the version of the integration platform being used
group_id = 'group_id_example' # String | group_id
data = TCAClient::AggregateGroup.new # AggregateGroup | 

begin
  # upsert group, group context and group context owners info
  result = api_instance.groups_group_id_put(x_turnitin_integration_name, x_turnitin_integration_version, group_id, data)
  p result
rescue TCAClient::ApiError => e
  puts "Error when calling GroupsApi->groups_group_id_put: #{e}"
end
```

#### Using the groups_group_id_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AggregateGroup>, Integer, Hash)> groups_group_id_put_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, group_id, data)

```ruby
begin
  # upsert group, group context and group context owners info
  data, status_code, headers = api_instance.groups_group_id_put_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, group_id, data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AggregateGroup>
rescue TCAClient::ApiError => e
  puts "Error when calling GroupsApi->groups_group_id_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_turnitin_integration_name** | **String** | a human readable string representing the type of integration being used |  |
| **x_turnitin_integration_version** | **String** | the version of the integration platform being used |  |
| **group_id** | **String** | group_id |  |
| **data** | [**AggregateGroup**](AggregateGroup.md) |  |  |

### Return type

[**AggregateGroup**](AggregateGroup.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_group_attachment

> <GroupAttachmentResponse> update_group_attachment(x_turnitin_integration_name, x_turnitin_integration_version, group_id, attach_id, data)

Patch a group attachment

### Examples

```ruby
require 'time'
require 'tca_client'
# setup authorization
TCAClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = TCAClient::GroupsApi.new
x_turnitin_integration_name = 'myintegration' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'v1.0.2' # String | the version of the integration platform being used
group_id = 'group_id_example' # String | group_id
attach_id = 'attach_id_example' # String | The attachment ID (returned from a successful group attachment request) 
data = TCAClient::AddGroupAttachmentRequest.new # AddGroupAttachmentRequest | 

begin
  # Patch a group attachment
  result = api_instance.update_group_attachment(x_turnitin_integration_name, x_turnitin_integration_version, group_id, attach_id, data)
  p result
rescue TCAClient::ApiError => e
  puts "Error when calling GroupsApi->update_group_attachment: #{e}"
end
```

#### Using the update_group_attachment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupAttachmentResponse>, Integer, Hash)> update_group_attachment_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, group_id, attach_id, data)

```ruby
begin
  # Patch a group attachment
  data, status_code, headers = api_instance.update_group_attachment_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, group_id, attach_id, data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupAttachmentResponse>
rescue TCAClient::ApiError => e
  puts "Error when calling GroupsApi->update_group_attachment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_turnitin_integration_name** | **String** | a human readable string representing the type of integration being used |  |
| **x_turnitin_integration_version** | **String** | the version of the integration platform being used |  |
| **group_id** | **String** | group_id |  |
| **attach_id** | **String** | The attachment ID (returned from a successful group attachment request)  |  |
| **data** | [**AddGroupAttachmentRequest**](AddGroupAttachmentRequest.md) |  |  |

### Return type

[**GroupAttachmentResponse**](GroupAttachmentResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## upload_group_attachment

> <SuccessMessage> upload_group_attachment(x_turnitin_integration_name, x_turnitin_integration_version, group_id, attach_id, content_disposition, file)

Upload Submitted File

### Examples

```ruby
require 'time'
require 'tca_client'
# setup authorization
TCAClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = TCAClient::GroupsApi.new
x_turnitin_integration_name = 'myintegration' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'v1.0.2' # String | the version of the integration platform being used
group_id = 'group_id_example' # String | The Group ID (required to already exist) 
attach_id = 'attach_id_example' # String | The attachment ID (returned from a successful group attachment request) 
content_disposition = 'inline; filename="MyFile.docx"' # String | *must include the \"filename\" parameter, e.g. `inline; filename=\"MyFile.docx\"` 
file = { ... } # Object | the attachment file

begin
  # Upload Submitted File
  result = api_instance.upload_group_attachment(x_turnitin_integration_name, x_turnitin_integration_version, group_id, attach_id, content_disposition, file)
  p result
rescue TCAClient::ApiError => e
  puts "Error when calling GroupsApi->upload_group_attachment: #{e}"
end
```

#### Using the upload_group_attachment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SuccessMessage>, Integer, Hash)> upload_group_attachment_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, group_id, attach_id, content_disposition, file)

```ruby
begin
  # Upload Submitted File
  data, status_code, headers = api_instance.upload_group_attachment_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, group_id, attach_id, content_disposition, file)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SuccessMessage>
rescue TCAClient::ApiError => e
  puts "Error when calling GroupsApi->upload_group_attachment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_turnitin_integration_name** | **String** | a human readable string representing the type of integration being used |  |
| **x_turnitin_integration_version** | **String** | the version of the integration platform being used |  |
| **group_id** | **String** | The Group ID (required to already exist)  |  |
| **attach_id** | **String** | The attachment ID (returned from a successful group attachment request)  |  |
| **content_disposition** | **String** | *must include the \&quot;filename\&quot; parameter, e.g. &#x60;inline; filename&#x3D;\&quot;MyFile.docx\&quot;&#x60;  |  |
| **file** | **Object** | the attachment file |  |

### Return type

[**SuccessMessage**](SuccessMessage.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: binary/octet-stream
- **Accept**: application/json

