# TCAClient::WebhookApi

All URIs are relative to *https://{tenantName}.{hostName}/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_webhook**](WebhookApi.md#delete_webhook) | **DELETE** /webhooks/{id} | Delete Webhook endpoint
[**get_webhook**](WebhookApi.md#get_webhook) | **GET** /webhooks/{id} | Get Webhook endpoint info
[**update_webhook**](WebhookApi.md#update_webhook) | **PATCH** /webhooks/{id} | Update Webhook endpoint info
[**webhooks_get**](WebhookApi.md#webhooks_get) | **GET** /webhooks | List registered Webhook endpoints
[**webhooks_post**](WebhookApi.md#webhooks_post) | **POST** /webhooks | Register a Webhook endpoint

# **delete_webhook**
> delete_webhook(x_turnitin_integration_name, x_turnitin_integration_version, id)

Delete Webhook endpoint

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

api_instance = TCAClient::WebhookApi.new
x_turnitin_integration_name = 'x_turnitin_integration_name_example' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'x_turnitin_integration_version_example' # String | the version of the integration platform being used
id = 'id_example' # String | 


begin
  #Delete Webhook endpoint
  api_instance.delete_webhook(x_turnitin_integration_name, x_turnitin_integration_version, id)
rescue TCAClient::ApiError => e
  puts "Exception when calling WebhookApi->delete_webhook: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_turnitin_integration_name** | **String**| a human readable string representing the type of integration being used | 
 **x_turnitin_integration_version** | **String**| the version of the integration platform being used | 
 **id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_webhook**
> Webhook get_webhook(x_turnitin_integration_name, x_turnitin_integration_version, id)

Get Webhook endpoint info

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

api_instance = TCAClient::WebhookApi.new
x_turnitin_integration_name = 'x_turnitin_integration_name_example' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'x_turnitin_integration_version_example' # String | the version of the integration platform being used
id = 'id_example' # String | 


begin
  #Get Webhook endpoint info
  result = api_instance.get_webhook(x_turnitin_integration_name, x_turnitin_integration_version, id)
  p result
rescue TCAClient::ApiError => e
  puts "Exception when calling WebhookApi->get_webhook: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_turnitin_integration_name** | **String**| a human readable string representing the type of integration being used | 
 **x_turnitin_integration_version** | **String**| the version of the integration platform being used | 
 **id** | **String**|  | 

### Return type

[**Webhook**](Webhook.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_webhook**
> Webhook update_webhook(bodyx_turnitin_integration_namex_turnitin_integration_versionid)

Update Webhook endpoint info

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

api_instance = TCAClient::WebhookApi.new
body = TCAClient::WebhookPathRequest.new # WebhookPathRequest | 
x_turnitin_integration_name = 'x_turnitin_integration_name_example' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'x_turnitin_integration_version_example' # String | the version of the integration platform being used
id = 'id_example' # String | 


begin
  #Update Webhook endpoint info
  result = api_instance.update_webhook(bodyx_turnitin_integration_namex_turnitin_integration_versionid)
  p result
rescue TCAClient::ApiError => e
  puts "Exception when calling WebhookApi->update_webhook: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**WebhookPathRequest**](WebhookPathRequest.md)|  | 
 **x_turnitin_integration_name** | **String**| a human readable string representing the type of integration being used | 
 **x_turnitin_integration_version** | **String**| the version of the integration platform being used | 
 **id** | **String**|  | 

### Return type

[**Webhook**](Webhook.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **webhooks_get**
> Array&lt;Webhook&gt; webhooks_get(x_turnitin_integration_name, x_turnitin_integration_version)

List registered Webhook endpoints

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

api_instance = TCAClient::WebhookApi.new
x_turnitin_integration_name = 'x_turnitin_integration_name_example' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'x_turnitin_integration_version_example' # String | the version of the integration platform being used


begin
  #List registered Webhook endpoints
  result = api_instance.webhooks_get(x_turnitin_integration_name, x_turnitin_integration_version)
  p result
rescue TCAClient::ApiError => e
  puts "Exception when calling WebhookApi->webhooks_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_turnitin_integration_name** | **String**| a human readable string representing the type of integration being used | 
 **x_turnitin_integration_version** | **String**| the version of the integration platform being used | 

### Return type

[**Array&lt;Webhook&gt;**](Webhook.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **webhooks_post**
> Webhook webhooks_post(bodyx_turnitin_integration_namex_turnitin_integration_version)

Register a Webhook endpoint

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

api_instance = TCAClient::WebhookApi.new
body = TCAClient::WebhookWithSecret.new # WebhookWithSecret | 
x_turnitin_integration_name = 'x_turnitin_integration_name_example' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'x_turnitin_integration_version_example' # String | the version of the integration platform being used


begin
  #Register a Webhook endpoint
  result = api_instance.webhooks_post(bodyx_turnitin_integration_namex_turnitin_integration_version)
  p result
rescue TCAClient::ApiError => e
  puts "Exception when calling WebhookApi->webhooks_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**WebhookWithSecret**](WebhookWithSecret.md)|  | 
 **x_turnitin_integration_name** | **String**| a human readable string representing the type of integration being used | 
 **x_turnitin_integration_version** | **String**| the version of the integration platform being used | 

### Return type

[**Webhook**](Webhook.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



