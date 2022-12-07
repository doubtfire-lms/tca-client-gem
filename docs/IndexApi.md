# TCAClient::IndexApi

All URIs are relative to *https://app-us.turnitin.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_index_status**](IndexApi.md#get_index_status) | **GET** /submissions/{id}/index | Return index state of submission |
| [**index_submission**](IndexApi.md#index_submission) | **PUT** /submissions/{id}/index | Index and return index state of submission |


## get_index_status

> <IndexStateSettings> get_index_status(x_turnitin_integration_name, x_turnitin_integration_version, id)

Return index state of submission

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

api_instance = TCAClient::IndexApi.new
x_turnitin_integration_name = 'myintegration' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'v1.0.2' # String | the version of the integration platform being used
id = 'id_example' # String | The Submission ID (returned upon a successful POST to /submissions) 

begin
  # Return index state of submission
  result = api_instance.get_index_status(x_turnitin_integration_name, x_turnitin_integration_version, id)
  p result
rescue TCAClient::ApiError => e
  puts "Error when calling IndexApi->get_index_status: #{e}"
end
```

#### Using the get_index_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IndexStateSettings>, Integer, Hash)> get_index_status_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, id)

```ruby
begin
  # Return index state of submission
  data, status_code, headers = api_instance.get_index_status_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IndexStateSettings>
rescue TCAClient::ApiError => e
  puts "Error when calling IndexApi->get_index_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_turnitin_integration_name** | **String** | a human readable string representing the type of integration being used |  |
| **x_turnitin_integration_version** | **String** | the version of the integration platform being used |  |
| **id** | **String** | The Submission ID (returned upon a successful POST to /submissions)  |  |

### Return type

[**IndexStateSettings**](IndexStateSettings.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## index_submission

> <IndexStateSettings> index_submission(x_turnitin_integration_name, x_turnitin_integration_version, id, opts)

Index and return index state of submission

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

api_instance = TCAClient::IndexApi.new
x_turnitin_integration_name = 'myintegration' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'v1.0.2' # String | the version of the integration platform being used
id = 'id_example' # String | The Submission ID (returned upon a successful POST to /submissions) 
opts = {
  asynchronous: true # Boolean | asynchronous request
}

begin
  # Index and return index state of submission
  result = api_instance.index_submission(x_turnitin_integration_name, x_turnitin_integration_version, id, opts)
  p result
rescue TCAClient::ApiError => e
  puts "Error when calling IndexApi->index_submission: #{e}"
end
```

#### Using the index_submission_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IndexStateSettings>, Integer, Hash)> index_submission_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, id, opts)

```ruby
begin
  # Index and return index state of submission
  data, status_code, headers = api_instance.index_submission_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IndexStateSettings>
rescue TCAClient::ApiError => e
  puts "Error when calling IndexApi->index_submission_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_turnitin_integration_name** | **String** | a human readable string representing the type of integration being used |  |
| **x_turnitin_integration_version** | **String** | the version of the integration platform being used |  |
| **id** | **String** | The Submission ID (returned upon a successful POST to /submissions)  |  |
| **asynchronous** | **Boolean** | asynchronous request | [optional] |

### Return type

[**IndexStateSettings**](IndexStateSettings.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

