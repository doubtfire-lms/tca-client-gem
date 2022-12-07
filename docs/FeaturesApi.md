# TCAClient::FeaturesApi

All URIs are relative to *https://app-us.turnitin.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**features_enabled_get**](FeaturesApi.md#features_enabled_get) | **GET** /features-enabled | Get information about what features are allowed by the current license |


## features_enabled_get

> <FeaturesEnabled> features_enabled_get(x_turnitin_integration_name, x_turnitin_integration_version)

Get information about what features are allowed by the current license

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

api_instance = TCAClient::FeaturesApi.new
x_turnitin_integration_name = 'myintegration' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'v1.0.2' # String | the version of the integration platform being used

begin
  # Get information about what features are allowed by the current license
  result = api_instance.features_enabled_get(x_turnitin_integration_name, x_turnitin_integration_version)
  p result
rescue TCAClient::ApiError => e
  puts "Error when calling FeaturesApi->features_enabled_get: #{e}"
end
```

#### Using the features_enabled_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeaturesEnabled>, Integer, Hash)> features_enabled_get_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version)

```ruby
begin
  # Get information about what features are allowed by the current license
  data, status_code, headers = api_instance.features_enabled_get_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeaturesEnabled>
rescue TCAClient::ApiError => e
  puts "Error when calling FeaturesApi->features_enabled_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_turnitin_integration_name** | **String** | a human readable string representing the type of integration being used |  |
| **x_turnitin_integration_version** | **String** | the version of the integration platform being used |  |

### Return type

[**FeaturesEnabled**](FeaturesEnabled.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

