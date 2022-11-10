# TCAClient::FeaturesApi

All URIs are relative to *https://{tenantName}.{hostName}/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**features_enabled_get**](FeaturesApi.md#features_enabled_get) | **GET** /features-enabled | Get information about what features are allowed by the current license

# **features_enabled_get**
> FeaturesEnabled features_enabled_get(x_turnitin_integration_name, x_turnitin_integration_version)

Get information about what features are allowed by the current license

### Example
```ruby
# load the gem
require 'tca_client'
# setup authorization
TCAClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = TCAClient::FeaturesApi.new
x_turnitin_integration_name = 'x_turnitin_integration_name_example' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'x_turnitin_integration_version_example' # String | the version of the integration platform being used


begin
  #Get information about what features are allowed by the current license
  result = api_instance.features_enabled_get(x_turnitin_integration_name, x_turnitin_integration_version)
  p result
rescue TCAClient::ApiError => e
  puts "Exception when calling FeaturesApi->features_enabled_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_turnitin_integration_name** | **String**| a human readable string representing the type of integration being used | 
 **x_turnitin_integration_version** | **String**| the version of the integration platform being used | 

### Return type

[**FeaturesEnabled**](FeaturesEnabled.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



