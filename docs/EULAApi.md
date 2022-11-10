# TCAClient::EULAApi

All URIs are relative to *https://{tenantName}.{hostName}/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**eula_version_id_accept_post**](EULAApi.md#eula_version_id_accept_post) | **POST** /eula/{version_id}/accept | Accepts a particular EULA version on behalf of an external user
[**eula_version_id_accept_user_id_get**](EULAApi.md#eula_version_id_accept_user_id_get) | **GET** /eula/{version_id}/accept/{user_id} | Queries the acceptences of a particular EULA version on behalf of an external user
[**eula_version_id_get**](EULAApi.md#eula_version_id_get) | **GET** /eula/{version_id} | Gets information about a particular EULA version
[**eula_version_id_view_get**](EULAApi.md#eula_version_id_view_get) | **GET** /eula/{version_id}/view | Gets the text of a particular EULA version

# **eula_version_id_accept_post**
> EulaAcceptListItem eula_version_id_accept_post(bodyx_turnitin_integration_namex_turnitin_integration_versionversion_id)

Accepts a particular EULA version on behalf of an external user

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

api_instance = TCAClient::EULAApi.new
body = TCAClient::EulaAcceptRequest.new # EulaAcceptRequest | 
x_turnitin_integration_name = 'x_turnitin_integration_name_example' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'x_turnitin_integration_version_example' # String | the version of the integration platform being used
version_id = 'version_id_example' # String | The EULA version ID (or `latest`) 


begin
  #Accepts a particular EULA version on behalf of an external user
  result = api_instance.eula_version_id_accept_post(bodyx_turnitin_integration_namex_turnitin_integration_versionversion_id)
  p result
rescue TCAClient::ApiError => e
  puts "Exception when calling EULAApi->eula_version_id_accept_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**EulaAcceptRequest**](EulaAcceptRequest.md)|  | 
 **x_turnitin_integration_name** | **String**| a human readable string representing the type of integration being used | 
 **x_turnitin_integration_version** | **String**| the version of the integration platform being used | 
 **version_id** | **String**| The EULA version ID (or &#x60;latest&#x60;)  | 

### Return type

[**EulaAcceptListItem**](EulaAcceptListItem.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **eula_version_id_accept_user_id_get**
> Array&lt;EulaAcceptListItem&gt; eula_version_id_accept_user_id_get(x_turnitin_integration_name, x_turnitin_integration_version, version_id, user_id)

Queries the acceptences of a particular EULA version on behalf of an external user

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

api_instance = TCAClient::EULAApi.new
x_turnitin_integration_name = 'x_turnitin_integration_name_example' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'x_turnitin_integration_version_example' # String | the version of the integration platform being used
version_id = 'version_id_example' # String | The EULA version ID (or `latest`) 
user_id = 'user_id_example' # String | The user associated with the EULA status 


begin
  #Queries the acceptences of a particular EULA version on behalf of an external user
  result = api_instance.eula_version_id_accept_user_id_get(x_turnitin_integration_name, x_turnitin_integration_version, version_id, user_id)
  p result
rescue TCAClient::ApiError => e
  puts "Exception when calling EULAApi->eula_version_id_accept_user_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_turnitin_integration_name** | **String**| a human readable string representing the type of integration being used | 
 **x_turnitin_integration_version** | **String**| the version of the integration platform being used | 
 **version_id** | **String**| The EULA version ID (or &#x60;latest&#x60;)  | 
 **user_id** | **String**| The user associated with the EULA status  | 

### Return type

[**Array&lt;EulaAcceptListItem&gt;**](EulaAcceptListItem.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **eula_version_id_get**
> EulaVersion eula_version_id_get(x_turnitin_integration_name, x_turnitin_integration_version, version_id, opts)

Gets information about a particular EULA version

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

api_instance = TCAClient::EULAApi.new
x_turnitin_integration_name = 'x_turnitin_integration_name_example' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'x_turnitin_integration_version_example' # String | the version of the integration platform being used
version_id = 'version_id_example' # String | The EULA version ID (or `latest`) 
opts = { 
  lang: 'lang_example' # String | The desired language of the specified EULA version
}

begin
  #Gets information about a particular EULA version
  result = api_instance.eula_version_id_get(x_turnitin_integration_name, x_turnitin_integration_version, version_id, opts)
  p result
rescue TCAClient::ApiError => e
  puts "Exception when calling EULAApi->eula_version_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_turnitin_integration_name** | **String**| a human readable string representing the type of integration being used | 
 **x_turnitin_integration_version** | **String**| the version of the integration platform being used | 
 **version_id** | **String**| The EULA version ID (or &#x60;latest&#x60;)  | 
 **lang** | **String**| The desired language of the specified EULA version | [optional] 

### Return type

[**EulaVersion**](EulaVersion.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **eula_version_id_view_get**
> String eula_version_id_view_get(x_turnitin_integration_name, x_turnitin_integration_version, version_id, opts)

Gets the text of a particular EULA version

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

api_instance = TCAClient::EULAApi.new
x_turnitin_integration_name = 'x_turnitin_integration_name_example' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'x_turnitin_integration_version_example' # String | the version of the integration platform being used
version_id = 'version_id_example' # String | The EULA version ID (or `latest`) 
opts = { 
  lang: 'lang_example' # String | The desired language of the specified EULA version
}

begin
  #Gets the text of a particular EULA version
  result = api_instance.eula_version_id_view_get(x_turnitin_integration_name, x_turnitin_integration_version, version_id, opts)
  p result
rescue TCAClient::ApiError => e
  puts "Exception when calling EULAApi->eula_version_id_view_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_turnitin_integration_name** | **String**| a human readable string representing the type of integration being used | 
 **x_turnitin_integration_version** | **String**| the version of the integration platform being used | 
 **version_id** | **String**| The EULA version ID (or &#x60;latest&#x60;)  | 
 **lang** | **String**| The desired language of the specified EULA version | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain; charset=utf-8, application/html



