# TCAClient::SubmissionApi

All URIs are relative to *https://{tenantName}.{hostName}/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_submission**](SubmissionApi.md#create_submission) | **POST** /submissions | Create a new Submission
[**delete_submission**](SubmissionApi.md#delete_submission) | **DELETE** /submissions/{id} | Deletes a submission and associated similarity report.
[**get_submiddion_details**](SubmissionApi.md#get_submiddion_details) | **GET** /submissions/{id} | Get Submission Details
[**recover_submission**](SubmissionApi.md#recover_submission) | **PUT** /submissions/{id}/recover | Recover a soft deleted submission
[**upload_submitted_file**](SubmissionApi.md#upload_submitted_file) | **PUT** /submissions/{id}/original | Upload Submitted File

# **create_submission**
> SimpleSubmissionResponse create_submission(bodyx_turnitin_integration_namex_turnitin_integration_version)

Create a new Submission

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

api_instance = TCAClient::SubmissionApi.new
body = TCAClient::SubmissionBase.new # SubmissionBase | 
x_turnitin_integration_name = 'x_turnitin_integration_name_example' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'x_turnitin_integration_version_example' # String | the version of the integration platform being used


begin
  #Create a new Submission
  result = api_instance.create_submission(bodyx_turnitin_integration_namex_turnitin_integration_version)
  p result
rescue TCAClient::ApiError => e
  puts "Exception when calling SubmissionApi->create_submission: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SubmissionBase**](SubmissionBase.md)|  | 
 **x_turnitin_integration_name** | **String**| a human readable string representing the type of integration being used | 
 **x_turnitin_integration_version** | **String**| the version of the integration platform being used | 

### Return type

[**SimpleSubmissionResponse**](SimpleSubmissionResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_submission**
> SuccessMessage delete_submission(x_turnitin_integration_name, x_turnitin_integration_version, id, opts)

Deletes a submission and associated similarity report.

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

api_instance = TCAClient::SubmissionApi.new
x_turnitin_integration_name = 'x_turnitin_integration_name_example' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'x_turnitin_integration_version_example' # String | the version of the integration platform being used
id = 'id_example' # String | The Submission ID (returned upon a successful POST to /submissions) 
opts = { 
  hard: 'false' # String | Accepts true or false indicating either hard or soft delete. A soft delete removes the associated submission report/index and changes the saved submission state to DELETED. A hard deletion completely removes the submission information from Panda and TCA and removes the associated report/index, which can not be recovered. 
}

begin
  #Deletes a submission and associated similarity report.
  result = api_instance.delete_submission(x_turnitin_integration_name, x_turnitin_integration_version, id, opts)
  p result
rescue TCAClient::ApiError => e
  puts "Exception when calling SubmissionApi->delete_submission: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_turnitin_integration_name** | **String**| a human readable string representing the type of integration being used | 
 **x_turnitin_integration_version** | **String**| the version of the integration platform being used | 
 **id** | **String**| The Submission ID (returned upon a successful POST to /submissions)  | 
 **hard** | **String**| Accepts true or false indicating either hard or soft delete. A soft delete removes the associated submission report/index and changes the saved submission state to DELETED. A hard deletion completely removes the submission information from Panda and TCA and removes the associated report/index, which can not be recovered.  | [optional] [default to false]

### Return type

[**SuccessMessage**](SuccessMessage.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_submiddion_details**
> Submission get_submiddion_details(x_turnitin_integration_name, x_turnitin_integration_version, id)

Get Submission Details

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

api_instance = TCAClient::SubmissionApi.new
x_turnitin_integration_name = 'x_turnitin_integration_name_example' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'x_turnitin_integration_version_example' # String | the version of the integration platform being used
id = 'id_example' # String | The Submission ID (returned upon a successful POST to /submissions) 


begin
  #Get Submission Details
  result = api_instance.get_submiddion_details(x_turnitin_integration_name, x_turnitin_integration_version, id)
  p result
rescue TCAClient::ApiError => e
  puts "Exception when calling SubmissionApi->get_submiddion_details: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_turnitin_integration_name** | **String**| a human readable string representing the type of integration being used | 
 **x_turnitin_integration_version** | **String**| the version of the integration platform being used | 
 **id** | **String**| The Submission ID (returned upon a successful POST to /submissions)  | 

### Return type

[**Submission**](Submission.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **recover_submission**
> SimpleSubmissionResponse recover_submission(x_turnitin_integration_name, x_turnitin_integration_version, id)

Recover a soft deleted submission

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

api_instance = TCAClient::SubmissionApi.new
x_turnitin_integration_name = 'x_turnitin_integration_name_example' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'x_turnitin_integration_version_example' # String | the version of the integration platform being used
id = 'id_example' # String | The Submission ID (returned upon a successful POST to /submissions) 


begin
  #Recover a soft deleted submission
  result = api_instance.recover_submission(x_turnitin_integration_name, x_turnitin_integration_version, id)
  p result
rescue TCAClient::ApiError => e
  puts "Exception when calling SubmissionApi->recover_submission: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_turnitin_integration_name** | **String**| a human readable string representing the type of integration being used | 
 **x_turnitin_integration_version** | **String**| the version of the integration platform being used | 
 **id** | **String**| The Submission ID (returned upon a successful POST to /submissions)  | 

### Return type

[**SimpleSubmissionResponse**](SimpleSubmissionResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **upload_submitted_file**
> SuccessMessage upload_submitted_file(bodyx_turnitin_integration_namex_turnitin_integration_versioncontent_typecontent_dispositionid)

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

api_instance = TCAClient::SubmissionApi.new
body = nil # Object | the user's submitted file
x_turnitin_integration_name = 'x_turnitin_integration_name_example' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'x_turnitin_integration_version_example' # String | the version of the integration platform being used
content_type = 'content_type_example' # String | *Must be 'binary/octet-stream' 
content_disposition = 'content_disposition_example' # String | *must include the \"filename\" parameter, e.g. `inline; filename=\"MyFile.docx\"`. To support UTF-8 filenames, you must URL encode the header 
id = 'id_example' # String | The Submission ID (returned upon a successful POST to /submissions) 


begin
  #Upload Submitted File
  result = api_instance.upload_submitted_file(bodyx_turnitin_integration_namex_turnitin_integration_versioncontent_typecontent_dispositionid)
  p result
rescue TCAClient::ApiError => e
  puts "Exception when calling SubmissionApi->upload_submitted_file: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Object**](Object.md)| the user&#x27;s submitted file | 
 **x_turnitin_integration_name** | **String**| a human readable string representing the type of integration being used | 
 **x_turnitin_integration_version** | **String**| the version of the integration platform being used | 
 **content_type** | **String**| *Must be &#x27;binary/octet-stream&#x27;  | 
 **content_disposition** | **String**| *must include the \&quot;filename\&quot; parameter, e.g. &#x60;inline; filename&#x3D;\&quot;MyFile.docx\&quot;&#x60;. To support UTF-8 filenames, you must URL encode the header  | 
 **id** | **String**| The Submission ID (returned upon a successful POST to /submissions)  | 

### Return type

[**SuccessMessage**](SuccessMessage.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: binary/octet-stream
 - **Accept**: application/json



