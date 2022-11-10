# TCAClient::IndexApi

All URIs are relative to *https://{tenantName}.{hostName}/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_index_status**](IndexApi.md#get_index_status) | **GET** /submissions/{id}/index | Return index state of submission
[**index_submission**](IndexApi.md#index_submission) | **PUT** /submissions/{id}/index | Index and return index state of submission

# **get_index_status**
> IndexStateSettings get_index_status(x_turnitin_integration_name, x_turnitin_integration_version, id)

Return index state of submission

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

api_instance = TCAClient::IndexApi.new
x_turnitin_integration_name = 'x_turnitin_integration_name_example' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'x_turnitin_integration_version_example' # String | the version of the integration platform being used
id = 'id_example' # String | The Submission ID (returned upon a successful POST to /submissions) 


begin
  #Return index state of submission
  result = api_instance.get_index_status(x_turnitin_integration_name, x_turnitin_integration_version, id)
  p result
rescue TCAClient::ApiError => e
  puts "Exception when calling IndexApi->get_index_status: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_turnitin_integration_name** | **String**| a human readable string representing the type of integration being used | 
 **x_turnitin_integration_version** | **String**| the version of the integration platform being used | 
 **id** | **String**| The Submission ID (returned upon a successful POST to /submissions)  | 

### Return type

[**IndexStateSettings**](IndexStateSettings.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **index_submission**
> IndexStateSettings index_submission(x_turnitin_integration_name, x_turnitin_integration_version, id)

Index and return index state of submission

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

api_instance = TCAClient::IndexApi.new
x_turnitin_integration_name = 'x_turnitin_integration_name_example' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'x_turnitin_integration_version_example' # String | the version of the integration platform being used
id = 'id_example' # String | The Submission ID (returned upon a successful POST to /submissions) 


begin
  #Index and return index state of submission
  result = api_instance.index_submission(x_turnitin_integration_name, x_turnitin_integration_version, id)
  p result
rescue TCAClient::ApiError => e
  puts "Exception when calling IndexApi->index_submission: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_turnitin_integration_name** | **String**| a human readable string representing the type of integration being used | 
 **x_turnitin_integration_version** | **String**| the version of the integration platform being used | 
 **id** | **String**| The Submission ID (returned upon a successful POST to /submissions)  | 

### Return type

[**IndexStateSettings**](IndexStateSettings.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



