# TCAClient::SubmissionApi

All URIs are relative to *https://app-us.turnitin.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_submission**](SubmissionApi.md#create_submission) | **POST** /submissions | Create a new Submission |
| [**delete_submission**](SubmissionApi.md#delete_submission) | **DELETE** /submissions/{id} | Deletes a submission and associated similarity report. |
| [**get_submission_details**](SubmissionApi.md#get_submission_details) | **GET** /submissions/{id} | Get Submission Details |
| [**recover_submission**](SubmissionApi.md#recover_submission) | **PUT** /submissions/{id}/recover | Recover a soft deleted submission |
| [**upload_submitted_file**](SubmissionApi.md#upload_submitted_file) | **PUT** /submissions/{id}/original | Upload Submitted File |


## create_submission

> <SimpleSubmissionResponse> create_submission(x_turnitin_integration_name, x_turnitin_integration_version, data)

Create a new Submission

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

api_instance = TCAClient::SubmissionApi.new
x_turnitin_integration_name = 'myintegration' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'v1.0.2' # String | the version of the integration platform being used
data = TCAClient::SubmissionBase.new # SubmissionBase | 

begin
  # Create a new Submission
  result = api_instance.create_submission(x_turnitin_integration_name, x_turnitin_integration_version, data)
  p result
rescue TCAClient::ApiError => e
  puts "Error when calling SubmissionApi->create_submission: #{e}"
end
```

#### Using the create_submission_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SimpleSubmissionResponse>, Integer, Hash)> create_submission_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, data)

```ruby
begin
  # Create a new Submission
  data, status_code, headers = api_instance.create_submission_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SimpleSubmissionResponse>
rescue TCAClient::ApiError => e
  puts "Error when calling SubmissionApi->create_submission_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_turnitin_integration_name** | **String** | a human readable string representing the type of integration being used |  |
| **x_turnitin_integration_version** | **String** | the version of the integration platform being used |  |
| **data** | [**SubmissionBase**](SubmissionBase.md) |  |  |

### Return type

[**SimpleSubmissionResponse**](SimpleSubmissionResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_submission

> <SuccessMessage> delete_submission(x_turnitin_integration_name, x_turnitin_integration_version, id, opts)

Deletes a submission and associated similarity report.

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

api_instance = TCAClient::SubmissionApi.new
x_turnitin_integration_name = 'myintegration' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'v1.0.2' # String | the version of the integration platform being used
id = 'id_example' # String | The Submission ID (returned upon a successful POST to /submissions) 
opts = {
  hard: 'hard_example' # String | Accepts true or false indicating either hard or soft delete. A soft delete removes the associated submission report/index and changes the saved submission state to DELETED. A hard deletion completely removes the submission information from Panda and TCA and removes the associated report/index, which can not be recovered. 
}

begin
  # Deletes a submission and associated similarity report.
  result = api_instance.delete_submission(x_turnitin_integration_name, x_turnitin_integration_version, id, opts)
  p result
rescue TCAClient::ApiError => e
  puts "Error when calling SubmissionApi->delete_submission: #{e}"
end
```

#### Using the delete_submission_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SuccessMessage>, Integer, Hash)> delete_submission_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, id, opts)

```ruby
begin
  # Deletes a submission and associated similarity report.
  data, status_code, headers = api_instance.delete_submission_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SuccessMessage>
rescue TCAClient::ApiError => e
  puts "Error when calling SubmissionApi->delete_submission_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_turnitin_integration_name** | **String** | a human readable string representing the type of integration being used |  |
| **x_turnitin_integration_version** | **String** | the version of the integration platform being used |  |
| **id** | **String** | The Submission ID (returned upon a successful POST to /submissions)  |  |
| **hard** | **String** | Accepts true or false indicating either hard or soft delete. A soft delete removes the associated submission report/index and changes the saved submission state to DELETED. A hard deletion completely removes the submission information from Panda and TCA and removes the associated report/index, which can not be recovered.  | [optional][default to &#39;false&#39;] |

### Return type

[**SuccessMessage**](SuccessMessage.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_submission_details

> <Submission> get_submission_details(x_turnitin_integration_name, x_turnitin_integration_version, id)

Get Submission Details

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

api_instance = TCAClient::SubmissionApi.new
x_turnitin_integration_name = 'myintegration' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'v1.0.2' # String | the version of the integration platform being used
id = 'id_example' # String | The Submission ID (returned upon a successful POST to /submissions) 

begin
  # Get Submission Details
  result = api_instance.get_submission_details(x_turnitin_integration_name, x_turnitin_integration_version, id)
  p result
rescue TCAClient::ApiError => e
  puts "Error when calling SubmissionApi->get_submission_details: #{e}"
end
```

#### Using the get_submission_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Submission>, Integer, Hash)> get_submission_details_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, id)

```ruby
begin
  # Get Submission Details
  data, status_code, headers = api_instance.get_submission_details_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Submission>
rescue TCAClient::ApiError => e
  puts "Error when calling SubmissionApi->get_submission_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_turnitin_integration_name** | **String** | a human readable string representing the type of integration being used |  |
| **x_turnitin_integration_version** | **String** | the version of the integration platform being used |  |
| **id** | **String** | The Submission ID (returned upon a successful POST to /submissions)  |  |

### Return type

[**Submission**](Submission.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## recover_submission

> <SimpleSubmissionResponse> recover_submission(x_turnitin_integration_name, x_turnitin_integration_version, id)

Recover a soft deleted submission

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

api_instance = TCAClient::SubmissionApi.new
x_turnitin_integration_name = 'myintegration' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'v1.0.2' # String | the version of the integration platform being used
id = 'id_example' # String | The Submission ID (returned upon a successful POST to /submissions) 

begin
  # Recover a soft deleted submission
  result = api_instance.recover_submission(x_turnitin_integration_name, x_turnitin_integration_version, id)
  p result
rescue TCAClient::ApiError => e
  puts "Error when calling SubmissionApi->recover_submission: #{e}"
end
```

#### Using the recover_submission_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SimpleSubmissionResponse>, Integer, Hash)> recover_submission_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, id)

```ruby
begin
  # Recover a soft deleted submission
  data, status_code, headers = api_instance.recover_submission_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SimpleSubmissionResponse>
rescue TCAClient::ApiError => e
  puts "Error when calling SubmissionApi->recover_submission_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_turnitin_integration_name** | **String** | a human readable string representing the type of integration being used |  |
| **x_turnitin_integration_version** | **String** | the version of the integration platform being used |  |
| **id** | **String** | The Submission ID (returned upon a successful POST to /submissions)  |  |

### Return type

[**SimpleSubmissionResponse**](SimpleSubmissionResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## upload_submitted_file

> <SuccessMessage> upload_submitted_file(x_turnitin_integration_name, x_turnitin_integration_version, id, content_type, content_disposition, file)

Upload Submitted File

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

api_instance = TCAClient::SubmissionApi.new
x_turnitin_integration_name = 'myintegration' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'v1.0.2' # String | the version of the integration platform being used
id = 'id_example' # String | The Submission ID (returned upon a successful POST to /submissions) 
content_type = 'content_type_example' # String | *Must be 'binary/octet-stream' 
content_disposition = 'inline; filename="MyFile.docx"' # String | *must include the \"filename\" parameter, e.g. `inline; filename=\"MyFile.docx\"`. To support UTF-8 filenames, you must URL encode the header 
file = { ... } # Object | the user's submitted file

begin
  # Upload Submitted File
  result = api_instance.upload_submitted_file(x_turnitin_integration_name, x_turnitin_integration_version, id, content_type, content_disposition, file)
  p result
rescue TCAClient::ApiError => e
  puts "Error when calling SubmissionApi->upload_submitted_file: #{e}"
end
```

#### Using the upload_submitted_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SuccessMessage>, Integer, Hash)> upload_submitted_file_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, id, content_type, content_disposition, file)

```ruby
begin
  # Upload Submitted File
  data, status_code, headers = api_instance.upload_submitted_file_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, id, content_type, content_disposition, file)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SuccessMessage>
rescue TCAClient::ApiError => e
  puts "Error when calling SubmissionApi->upload_submitted_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_turnitin_integration_name** | **String** | a human readable string representing the type of integration being used |  |
| **x_turnitin_integration_version** | **String** | the version of the integration platform being used |  |
| **id** | **String** | The Submission ID (returned upon a successful POST to /submissions)  |  |
| **content_type** | **String** | *Must be &#39;binary/octet-stream&#39;  |  |
| **content_disposition** | **String** | *must include the \&quot;filename\&quot; parameter, e.g. &#x60;inline; filename&#x3D;\&quot;MyFile.docx\&quot;&#x60;. To support UTF-8 filenames, you must URL encode the header  |  |
| **file** | **Object** | the user&#39;s submitted file |  |

### Return type

[**SuccessMessage**](SuccessMessage.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: binary/octet-stream
- **Accept**: application/json

