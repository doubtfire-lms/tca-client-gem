# TCAClient::WebhookApi

All URIs are relative to *https://app-us.turnitin.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_webhook**](WebhookApi.md#delete_webhook) | **DELETE** /webhooks/{id} | Delete Webhook endpoint |
| [**get_webhook**](WebhookApi.md#get_webhook) | **GET** /webhooks/{id} | Get Webhook endpoint info |
| [**update_webhook**](WebhookApi.md#update_webhook) | **PATCH** /webhooks/{id} | Update Webhook endpoint info |
| [**webhooks_get**](WebhookApi.md#webhooks_get) | **GET** /webhooks | List registered Webhook endpoints |
| [**webhooks_post**](WebhookApi.md#webhooks_post) | **POST** /webhooks | Register a Webhook endpoint |


## delete_webhook

> delete_webhook(x_turnitin_integration_name, x_turnitin_integration_version, id)

Delete Webhook endpoint

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

api_instance = TCAClient::WebhookApi.new
x_turnitin_integration_name = 'myintegration' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'v1.0.2' # String | the version of the integration platform being used
id = 'id_example' # String | 

begin
  # Delete Webhook endpoint
  api_instance.delete_webhook(x_turnitin_integration_name, x_turnitin_integration_version, id)
rescue TCAClient::ApiError => e
  puts "Error when calling WebhookApi->delete_webhook: #{e}"
end
```

#### Using the delete_webhook_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_webhook_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, id)

```ruby
begin
  # Delete Webhook endpoint
  data, status_code, headers = api_instance.delete_webhook_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue TCAClient::ApiError => e
  puts "Error when calling WebhookApi->delete_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_turnitin_integration_name** | **String** | a human readable string representing the type of integration being used |  |
| **x_turnitin_integration_version** | **String** | the version of the integration platform being used |  |
| **id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_webhook

> <Webhook> get_webhook(x_turnitin_integration_name, x_turnitin_integration_version, id)

Get Webhook endpoint info

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

api_instance = TCAClient::WebhookApi.new
x_turnitin_integration_name = 'myintegration' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'v1.0.2' # String | the version of the integration platform being used
id = 'id_example' # String | 

begin
  # Get Webhook endpoint info
  result = api_instance.get_webhook(x_turnitin_integration_name, x_turnitin_integration_version, id)
  p result
rescue TCAClient::ApiError => e
  puts "Error when calling WebhookApi->get_webhook: #{e}"
end
```

#### Using the get_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Webhook>, Integer, Hash)> get_webhook_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, id)

```ruby
begin
  # Get Webhook endpoint info
  data, status_code, headers = api_instance.get_webhook_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Webhook>
rescue TCAClient::ApiError => e
  puts "Error when calling WebhookApi->get_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_turnitin_integration_name** | **String** | a human readable string representing the type of integration being used |  |
| **x_turnitin_integration_version** | **String** | the version of the integration platform being used |  |
| **id** | **String** |  |  |

### Return type

[**Webhook**](Webhook.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_webhook

> <Webhook> update_webhook(x_turnitin_integration_name, x_turnitin_integration_version, id, data)

Update Webhook endpoint info

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

api_instance = TCAClient::WebhookApi.new
x_turnitin_integration_name = 'myintegration' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'v1.0.2' # String | the version of the integration platform being used
id = 'id_example' # String | 
data = TCAClient::WebhookPathRequest.new({event_types: ['SUBMISSION_COMPLETE']}) # WebhookPathRequest | 

begin
  # Update Webhook endpoint info
  result = api_instance.update_webhook(x_turnitin_integration_name, x_turnitin_integration_version, id, data)
  p result
rescue TCAClient::ApiError => e
  puts "Error when calling WebhookApi->update_webhook: #{e}"
end
```

#### Using the update_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Webhook>, Integer, Hash)> update_webhook_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, id, data)

```ruby
begin
  # Update Webhook endpoint info
  data, status_code, headers = api_instance.update_webhook_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, id, data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Webhook>
rescue TCAClient::ApiError => e
  puts "Error when calling WebhookApi->update_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_turnitin_integration_name** | **String** | a human readable string representing the type of integration being used |  |
| **x_turnitin_integration_version** | **String** | the version of the integration platform being used |  |
| **id** | **String** |  |  |
| **data** | [**WebhookPathRequest**](WebhookPathRequest.md) |  |  |

### Return type

[**Webhook**](Webhook.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## webhooks_get

> <Array<Webhook>> webhooks_get(x_turnitin_integration_name, x_turnitin_integration_version)

List registered Webhook endpoints

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

api_instance = TCAClient::WebhookApi.new
x_turnitin_integration_name = 'myintegration' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'v1.0.2' # String | the version of the integration platform being used

begin
  # List registered Webhook endpoints
  result = api_instance.webhooks_get(x_turnitin_integration_name, x_turnitin_integration_version)
  p result
rescue TCAClient::ApiError => e
  puts "Error when calling WebhookApi->webhooks_get: #{e}"
end
```

#### Using the webhooks_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Webhook>>, Integer, Hash)> webhooks_get_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version)

```ruby
begin
  # List registered Webhook endpoints
  data, status_code, headers = api_instance.webhooks_get_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Webhook>>
rescue TCAClient::ApiError => e
  puts "Error when calling WebhookApi->webhooks_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_turnitin_integration_name** | **String** | a human readable string representing the type of integration being used |  |
| **x_turnitin_integration_version** | **String** | the version of the integration platform being used |  |

### Return type

[**Array&lt;Webhook&gt;**](Webhook.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## webhooks_post

> <Webhook> webhooks_post(x_turnitin_integration_name, x_turnitin_integration_version, data)

Register a Webhook endpoint

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

api_instance = TCAClient::WebhookApi.new
x_turnitin_integration_name = 'myintegration' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'v1.0.2' # String | the version of the integration platform being used
data = TCAClient::WebhookWithSecret.new({signing_secret: File.new('/path/to/some/file'), url: 'url_example', event_types: ['SUBMISSION_COMPLETE']}) # WebhookWithSecret | 

begin
  # Register a Webhook endpoint
  result = api_instance.webhooks_post(x_turnitin_integration_name, x_turnitin_integration_version, data)
  p result
rescue TCAClient::ApiError => e
  puts "Error when calling WebhookApi->webhooks_post: #{e}"
end
```

#### Using the webhooks_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Webhook>, Integer, Hash)> webhooks_post_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, data)

```ruby
begin
  # Register a Webhook endpoint
  data, status_code, headers = api_instance.webhooks_post_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Webhook>
rescue TCAClient::ApiError => e
  puts "Error when calling WebhookApi->webhooks_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_turnitin_integration_name** | **String** | a human readable string representing the type of integration being used |  |
| **x_turnitin_integration_version** | **String** | the version of the integration platform being used |  |
| **data** | [**WebhookWithSecret**](WebhookWithSecret.md) |  |  |

### Return type

[**Webhook**](Webhook.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

