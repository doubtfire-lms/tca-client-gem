# TCAClient::GroupsApi

All URIs are relative to *https://{tenantName}.{hostName}/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_group_attachment**](GroupsApi.md#add_group_attachment) | **POST** /groups/{group_id}/attachments | Add attachment to a group. will create a group if it does not exist.
[**delete_group_attachment**](GroupsApi.md#delete_group_attachment) | **DELETE** /groups/{group_id}/attachments/{attach_id} | Hard delete group attachment
[**get_group**](GroupsApi.md#get_group) | **GET** /groups/{group_id} | Get group, group context and group context owners info
[**get_group_attachment**](GroupsApi.md#get_group_attachment) | **GET** /groups/{group_id}/attachments/{attach_id} | Get group attachment
[**get_group_attachments**](GroupsApi.md#get_group_attachments) | **GET** /groups/{group_id}/attachments | Get all attachments
[**groups_group_id_put**](GroupsApi.md#groups_group_id_put) | **PUT** /groups/{group_id} | upsert group, group context and group context owners info
[**update_group_attachment**](GroupsApi.md#update_group_attachment) | **PATCH** /groups/{group_id}/attachments/{attach_id} | Patch a group attachment
[**upload_group_attachment**](GroupsApi.md#upload_group_attachment) | **PUT** /groups/{group_id}/attachments/{attach_id}/original | Upload Submitted File

# **add_group_attachment**
> AddGroupAttachmentResponse add_group_attachment(bodyx_turnitin_integration_namex_turnitin_integration_versiongroup_id)

Add attachment to a group. will create a group if it does not exist.

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

api_instance = TCAClient::GroupsApi.new
body = TCAClient::AddGroupAttachmentRequest.new # AddGroupAttachmentRequest | 
x_turnitin_integration_name = 'x_turnitin_integration_name_example' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'x_turnitin_integration_version_example' # String | the version of the integration platform being used
group_id = 'group_id_example' # String | group_id


begin
  #Add attachment to a group. will create a group if it does not exist.
  result = api_instance.add_group_attachment(bodyx_turnitin_integration_namex_turnitin_integration_versiongroup_id)
  p result
rescue TCAClient::ApiError => e
  puts "Exception when calling GroupsApi->add_group_attachment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AddGroupAttachmentRequest**](AddGroupAttachmentRequest.md)|  | 
 **x_turnitin_integration_name** | **String**| a human readable string representing the type of integration being used | 
 **x_turnitin_integration_version** | **String**| the version of the integration platform being used | 
 **group_id** | **String**| group_id | 

### Return type

[**AddGroupAttachmentResponse**](AddGroupAttachmentResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_group_attachment**
> delete_group_attachment(x_turnitin_integration_name, x_turnitin_integration_version, group_id, attach_id)

Hard delete group attachment

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

api_instance = TCAClient::GroupsApi.new
x_turnitin_integration_name = 'x_turnitin_integration_name_example' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'x_turnitin_integration_version_example' # String | the version of the integration platform being used
group_id = 'group_id_example' # String | group_id
attach_id = 'attach_id_example' # String | The attachment ID (returned from a successful group attachment request) 


begin
  #Hard delete group attachment
  api_instance.delete_group_attachment(x_turnitin_integration_name, x_turnitin_integration_version, group_id, attach_id)
rescue TCAClient::ApiError => e
  puts "Exception when calling GroupsApi->delete_group_attachment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_turnitin_integration_name** | **String**| a human readable string representing the type of integration being used | 
 **x_turnitin_integration_version** | **String**| the version of the integration platform being used | 
 **group_id** | **String**| group_id | 
 **attach_id** | **String**| The attachment ID (returned from a successful group attachment request)  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_group**
> AggregateGroup get_group(x_turnitin_integration_name, x_turnitin_integration_version, group_id)

Get group, group context and group context owners info

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

api_instance = TCAClient::GroupsApi.new
x_turnitin_integration_name = 'x_turnitin_integration_name_example' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'x_turnitin_integration_version_example' # String | the version of the integration platform being used
group_id = 'group_id_example' # String | group_id


begin
  #Get group, group context and group context owners info
  result = api_instance.get_group(x_turnitin_integration_name, x_turnitin_integration_version, group_id)
  p result
rescue TCAClient::ApiError => e
  puts "Exception when calling GroupsApi->get_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_turnitin_integration_name** | **String**| a human readable string representing the type of integration being used | 
 **x_turnitin_integration_version** | **String**| the version of the integration platform being used | 
 **group_id** | **String**| group_id | 

### Return type

[**AggregateGroup**](AggregateGroup.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_group_attachment**
> GroupAttachmentResponse get_group_attachment(x_turnitin_integration_name, x_turnitin_integration_version, group_id, attach_id)

Get group attachment

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

api_instance = TCAClient::GroupsApi.new
x_turnitin_integration_name = 'x_turnitin_integration_name_example' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'x_turnitin_integration_version_example' # String | the version of the integration platform being used
group_id = 'group_id_example' # String | group_id
attach_id = 'attach_id_example' # String | The attachment ID (returned from a successful group attachment request) 


begin
  #Get group attachment
  result = api_instance.get_group_attachment(x_turnitin_integration_name, x_turnitin_integration_version, group_id, attach_id)
  p result
rescue TCAClient::ApiError => e
  puts "Exception when calling GroupsApi->get_group_attachment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_turnitin_integration_name** | **String**| a human readable string representing the type of integration being used | 
 **x_turnitin_integration_version** | **String**| the version of the integration platform being used | 
 **group_id** | **String**| group_id | 
 **attach_id** | **String**| The attachment ID (returned from a successful group attachment request)  | 

### Return type

[**GroupAttachmentResponse**](GroupAttachmentResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_group_attachments**
> InlineResponse200 get_group_attachments(x_turnitin_integration_name, x_turnitin_integration_version, group_id)

Get all attachments

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

api_instance = TCAClient::GroupsApi.new
x_turnitin_integration_name = 'x_turnitin_integration_name_example' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'x_turnitin_integration_version_example' # String | the version of the integration platform being used
group_id = 'group_id_example' # String | group_id


begin
  #Get all attachments
  result = api_instance.get_group_attachments(x_turnitin_integration_name, x_turnitin_integration_version, group_id)
  p result
rescue TCAClient::ApiError => e
  puts "Exception when calling GroupsApi->get_group_attachments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_turnitin_integration_name** | **String**| a human readable string representing the type of integration being used | 
 **x_turnitin_integration_version** | **String**| the version of the integration platform being used | 
 **group_id** | **String**| group_id | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **groups_group_id_put**
> AggregateGroup groups_group_id_put(bodyx_turnitin_integration_namex_turnitin_integration_versiongroup_id)

upsert group, group context and group context owners info

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

api_instance = TCAClient::GroupsApi.new
body = TCAClient::AggregateGroup.new # AggregateGroup | 
x_turnitin_integration_name = 'x_turnitin_integration_name_example' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'x_turnitin_integration_version_example' # String | the version of the integration platform being used
group_id = 'group_id_example' # String | group_id


begin
  #upsert group, group context and group context owners info
  result = api_instance.groups_group_id_put(bodyx_turnitin_integration_namex_turnitin_integration_versiongroup_id)
  p result
rescue TCAClient::ApiError => e
  puts "Exception when calling GroupsApi->groups_group_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AggregateGroup**](AggregateGroup.md)|  | 
 **x_turnitin_integration_name** | **String**| a human readable string representing the type of integration being used | 
 **x_turnitin_integration_version** | **String**| the version of the integration platform being used | 
 **group_id** | **String**| group_id | 

### Return type

[**AggregateGroup**](AggregateGroup.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_group_attachment**
> GroupAttachmentResponse update_group_attachment(bodyx_turnitin_integration_namex_turnitin_integration_versiongroup_idattach_id)

Patch a group attachment

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

api_instance = TCAClient::GroupsApi.new
body = TCAClient::AddGroupAttachmentRequest.new # AddGroupAttachmentRequest | 
x_turnitin_integration_name = 'x_turnitin_integration_name_example' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'x_turnitin_integration_version_example' # String | the version of the integration platform being used
group_id = 'group_id_example' # String | group_id
attach_id = 'attach_id_example' # String | The attachment ID (returned from a successful group attachment request) 


begin
  #Patch a group attachment
  result = api_instance.update_group_attachment(bodyx_turnitin_integration_namex_turnitin_integration_versiongroup_idattach_id)
  p result
rescue TCAClient::ApiError => e
  puts "Exception when calling GroupsApi->update_group_attachment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AddGroupAttachmentRequest**](AddGroupAttachmentRequest.md)|  | 
 **x_turnitin_integration_name** | **String**| a human readable string representing the type of integration being used | 
 **x_turnitin_integration_version** | **String**| the version of the integration platform being used | 
 **group_id** | **String**| group_id | 
 **attach_id** | **String**| The attachment ID (returned from a successful group attachment request)  | 

### Return type

[**GroupAttachmentResponse**](GroupAttachmentResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **upload_group_attachment**
> SuccessMessage upload_group_attachment(bodyx_turnitin_integration_namex_turnitin_integration_versioncontent_dispositiongroup_idattach_id)

Upload Submitted File

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

api_instance = TCAClient::GroupsApi.new
body = nil # Object | the attachment file
x_turnitin_integration_name = 'x_turnitin_integration_name_example' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'x_turnitin_integration_version_example' # String | the version of the integration platform being used
content_disposition = 'content_disposition_example' # String | *must include the \"filename\" parameter, e.g. `inline; filename=\"MyFile.docx\"` 
group_id = 'group_id_example' # String | The Group ID (required to already exist) 
attach_id = 'attach_id_example' # String | The attachment ID (returned from a successful group attachment request) 


begin
  #Upload Submitted File
  result = api_instance.upload_group_attachment(bodyx_turnitin_integration_namex_turnitin_integration_versioncontent_dispositiongroup_idattach_id)
  p result
rescue TCAClient::ApiError => e
  puts "Exception when calling GroupsApi->upload_group_attachment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Object**](Object.md)| the attachment file | 
 **x_turnitin_integration_name** | **String**| a human readable string representing the type of integration being used | 
 **x_turnitin_integration_version** | **String**| the version of the integration platform being used | 
 **content_disposition** | **String**| *must include the \&quot;filename\&quot; parameter, e.g. &#x60;inline; filename&#x3D;\&quot;MyFile.docx\&quot;&#x60;  | 
 **group_id** | **String**| The Group ID (required to already exist)  | 
 **attach_id** | **String**| The attachment ID (returned from a successful group attachment request)  | 

### Return type

[**SuccessMessage**](SuccessMessage.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: binary/octet-stream
 - **Accept**: application/json



