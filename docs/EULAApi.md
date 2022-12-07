# TCAClient::EULAApi

All URIs are relative to *https://app-us.turnitin.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**eula_version_id_accept_post**](EULAApi.md#eula_version_id_accept_post) | **POST** /eula/{version_id}/accept | Accepts a particular EULA version on behalf of an external user |
| [**eula_version_id_accept_user_id_get**](EULAApi.md#eula_version_id_accept_user_id_get) | **GET** /eula/{version_id}/accept/{user_id} | Queries the acceptences of a particular EULA version on behalf of an external user |
| [**eula_version_id_get**](EULAApi.md#eula_version_id_get) | **GET** /eula/{version_id} | Gets information about a particular EULA version |
| [**eula_version_id_view_get**](EULAApi.md#eula_version_id_view_get) | **GET** /eula/{version_id}/view | Gets the text of a particular EULA version |


## eula_version_id_accept_post

> <EulaAcceptListItem> eula_version_id_accept_post(x_turnitin_integration_name, x_turnitin_integration_version, version_id, data)

Accepts a particular EULA version on behalf of an external user

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

api_instance = TCAClient::EULAApi.new
x_turnitin_integration_name = 'myintegration' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'v1.0.2' # String | the version of the integration platform being used
version_id = 'latest' # String | The EULA version ID (or `latest`) 
data = TCAClient::EulaAcceptRequest.new # EulaAcceptRequest | 

begin
  # Accepts a particular EULA version on behalf of an external user
  result = api_instance.eula_version_id_accept_post(x_turnitin_integration_name, x_turnitin_integration_version, version_id, data)
  p result
rescue TCAClient::ApiError => e
  puts "Error when calling EULAApi->eula_version_id_accept_post: #{e}"
end
```

#### Using the eula_version_id_accept_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EulaAcceptListItem>, Integer, Hash)> eula_version_id_accept_post_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, version_id, data)

```ruby
begin
  # Accepts a particular EULA version on behalf of an external user
  data, status_code, headers = api_instance.eula_version_id_accept_post_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, version_id, data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EulaAcceptListItem>
rescue TCAClient::ApiError => e
  puts "Error when calling EULAApi->eula_version_id_accept_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_turnitin_integration_name** | **String** | a human readable string representing the type of integration being used |  |
| **x_turnitin_integration_version** | **String** | the version of the integration platform being used |  |
| **version_id** | **String** | The EULA version ID (or &#x60;latest&#x60;)  |  |
| **data** | [**EulaAcceptRequest**](EulaAcceptRequest.md) |  |  |

### Return type

[**EulaAcceptListItem**](EulaAcceptListItem.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## eula_version_id_accept_user_id_get

> <Array<EulaAcceptListItem>> eula_version_id_accept_user_id_get(x_turnitin_integration_name, x_turnitin_integration_version, version_id, user_id)

Queries the acceptences of a particular EULA version on behalf of an external user

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

api_instance = TCAClient::EULAApi.new
x_turnitin_integration_name = 'myintegration' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'v1.0.2' # String | the version of the integration platform being used
version_id = 'latest' # String | The EULA version ID (or `latest`) 
user_id = 'user_id_example' # String | The user associated with the EULA status 

begin
  # Queries the acceptences of a particular EULA version on behalf of an external user
  result = api_instance.eula_version_id_accept_user_id_get(x_turnitin_integration_name, x_turnitin_integration_version, version_id, user_id)
  p result
rescue TCAClient::ApiError => e
  puts "Error when calling EULAApi->eula_version_id_accept_user_id_get: #{e}"
end
```

#### Using the eula_version_id_accept_user_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<EulaAcceptListItem>>, Integer, Hash)> eula_version_id_accept_user_id_get_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, version_id, user_id)

```ruby
begin
  # Queries the acceptences of a particular EULA version on behalf of an external user
  data, status_code, headers = api_instance.eula_version_id_accept_user_id_get_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, version_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<EulaAcceptListItem>>
rescue TCAClient::ApiError => e
  puts "Error when calling EULAApi->eula_version_id_accept_user_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_turnitin_integration_name** | **String** | a human readable string representing the type of integration being used |  |
| **x_turnitin_integration_version** | **String** | the version of the integration platform being used |  |
| **version_id** | **String** | The EULA version ID (or &#x60;latest&#x60;)  |  |
| **user_id** | **String** | The user associated with the EULA status  |  |

### Return type

[**Array&lt;EulaAcceptListItem&gt;**](EulaAcceptListItem.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## eula_version_id_get

> <EulaVersion> eula_version_id_get(x_turnitin_integration_name, x_turnitin_integration_version, version_id, opts)

Gets information about a particular EULA version

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

api_instance = TCAClient::EULAApi.new
x_turnitin_integration_name = 'myintegration' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'v1.0.2' # String | the version of the integration platform being used
version_id = 'latest' # String | The EULA version ID (or `latest`) 
opts = {
  lang: 'en-US' # String | The desired language of the specified EULA version
}

begin
  # Gets information about a particular EULA version
  result = api_instance.eula_version_id_get(x_turnitin_integration_name, x_turnitin_integration_version, version_id, opts)
  p result
rescue TCAClient::ApiError => e
  puts "Error when calling EULAApi->eula_version_id_get: #{e}"
end
```

#### Using the eula_version_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EulaVersion>, Integer, Hash)> eula_version_id_get_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, version_id, opts)

```ruby
begin
  # Gets information about a particular EULA version
  data, status_code, headers = api_instance.eula_version_id_get_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, version_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EulaVersion>
rescue TCAClient::ApiError => e
  puts "Error when calling EULAApi->eula_version_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_turnitin_integration_name** | **String** | a human readable string representing the type of integration being used |  |
| **x_turnitin_integration_version** | **String** | the version of the integration platform being used |  |
| **version_id** | **String** | The EULA version ID (or &#x60;latest&#x60;)  |  |
| **lang** | **String** | The desired language of the specified EULA version | [optional] |

### Return type

[**EulaVersion**](EulaVersion.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## eula_version_id_view_get

> String eula_version_id_view_get(x_turnitin_integration_name, x_turnitin_integration_version, version_id, opts)

Gets the text of a particular EULA version

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

api_instance = TCAClient::EULAApi.new
x_turnitin_integration_name = 'myintegration' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'v1.0.2' # String | the version of the integration platform being used
version_id = 'latest' # String | The EULA version ID (or `latest`) 
opts = {
  lang: 'en-US' # String | The desired language of the specified EULA version
}

begin
  # Gets the text of a particular EULA version
  result = api_instance.eula_version_id_view_get(x_turnitin_integration_name, x_turnitin_integration_version, version_id, opts)
  p result
rescue TCAClient::ApiError => e
  puts "Error when calling EULAApi->eula_version_id_view_get: #{e}"
end
```

#### Using the eula_version_id_view_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> eula_version_id_view_get_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, version_id, opts)

```ruby
begin
  # Gets the text of a particular EULA version
  data, status_code, headers = api_instance.eula_version_id_view_get_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, version_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue TCAClient::ApiError => e
  puts "Error when calling EULAApi->eula_version_id_view_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_turnitin_integration_name** | **String** | a human readable string representing the type of integration being used |  |
| **x_turnitin_integration_version** | **String** | the version of the integration platform being used |  |
| **version_id** | **String** | The EULA version ID (or &#x60;latest&#x60;)  |  |
| **lang** | **String** | The desired language of the specified EULA version | [optional] |

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain; charset=utf-8, application/html

