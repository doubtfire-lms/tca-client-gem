# TCAClient::SimilarityApi

All URIs are relative to *https://{tenantName}.{hostName}/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**download_similarity_report_pdf**](SimilarityApi.md#download_similarity_report_pdf) | **GET** /submissions/{id}/similarity/pdf/{pdf_id} | GET download pdf
[**get_similarity_report_pdf_status**](SimilarityApi.md#get_similarity_report_pdf_status) | **GET** /submissions/{id}/similarity/pdf/{pdf_id}/status | GET pdf download status
[**get_similarity_report_results**](SimilarityApi.md#get_similarity_report_results) | **GET** /submissions/{id}/similarity | Get Similarity Report Results
[**get_similarity_report_url**](SimilarityApi.md#get_similarity_report_url) | **POST** /submissions/{id}/viewer-url | Returns a URL to access Cloud Viewer
[**request_similarity_report**](SimilarityApi.md#request_similarity_report) | **PUT** /submissions/{id}/similarity | Request Similarity Report generation
[**request_similarity_report_pdf**](SimilarityApi.md#request_similarity_report_pdf) | **POST** /submissions/{id}/similarity/pdf | Request Pdf download and returns the Pdf Id

# **download_similarity_report_pdf**
> String download_similarity_report_pdf(x_turnitin_integration_name, x_turnitin_integration_version, id, pdf_id)

GET download pdf

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

api_instance = TCAClient::SimilarityApi.new
x_turnitin_integration_name = 'x_turnitin_integration_name_example' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'x_turnitin_integration_version_example' # String | the version of the integration platform being used
id = 'id_example' # String | The Submission ID (returned upon a successful POST to /submissions) 
pdf_id = 'pdf_id_example' # String | The Pdf ID (returned upon a successful POST to /submissions/{submission_id}/similarity/pdf) 


begin
  #GET download pdf
  result = api_instance.download_similarity_report_pdf(x_turnitin_integration_name, x_turnitin_integration_version, id, pdf_id)
  p result
rescue TCAClient::ApiError => e
  puts "Exception when calling SimilarityApi->download_similarity_report_pdf: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_turnitin_integration_name** | **String**| a human readable string representing the type of integration being used | 
 **x_turnitin_integration_version** | **String**| the version of the integration platform being used | 
 **id** | **String**| The Submission ID (returned upon a successful POST to /submissions)  | 
 **pdf_id** | **String**| The Pdf ID (returned upon a successful POST to /submissions/{submission_id}/similarity/pdf)  | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/pdf, application/json



# **get_similarity_report_pdf_status**
> PdfStatusResponse get_similarity_report_pdf_status(x_turnitin_integration_name, x_turnitin_integration_version, id, pdf_id)

GET pdf download status

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

api_instance = TCAClient::SimilarityApi.new
x_turnitin_integration_name = 'x_turnitin_integration_name_example' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'x_turnitin_integration_version_example' # String | the version of the integration platform being used
id = 'id_example' # String | The Submission ID (returned upon a successful POST to /submissions) 
pdf_id = 'pdf_id_example' # String | The Pdf ID (returned upon a successful POST to /submissions/{submission_id}/similarity/pdf) 


begin
  #GET pdf download status
  result = api_instance.get_similarity_report_pdf_status(x_turnitin_integration_name, x_turnitin_integration_version, id, pdf_id)
  p result
rescue TCAClient::ApiError => e
  puts "Exception when calling SimilarityApi->get_similarity_report_pdf_status: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_turnitin_integration_name** | **String**| a human readable string representing the type of integration being used | 
 **x_turnitin_integration_version** | **String**| the version of the integration platform being used | 
 **id** | **String**| The Submission ID (returned upon a successful POST to /submissions)  | 
 **pdf_id** | **String**| The Pdf ID (returned upon a successful POST to /submissions/{submission_id}/similarity/pdf)  | 

### Return type

[**PdfStatusResponse**](PdfStatusResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_similarity_report_results**
> SimilarityMetadata get_similarity_report_results(x_turnitin_integration_name, x_turnitin_integration_version, id)

Get Similarity Report Results

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

api_instance = TCAClient::SimilarityApi.new
x_turnitin_integration_name = 'x_turnitin_integration_name_example' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'x_turnitin_integration_version_example' # String | the version of the integration platform being used
id = 'id_example' # String | The Submission ID (returned upon a successful POST to /submissions) 


begin
  #Get Similarity Report Results
  result = api_instance.get_similarity_report_results(x_turnitin_integration_name, x_turnitin_integration_version, id)
  p result
rescue TCAClient::ApiError => e
  puts "Exception when calling SimilarityApi->get_similarity_report_results: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_turnitin_integration_name** | **String**| a human readable string representing the type of integration being used | 
 **x_turnitin_integration_version** | **String**| the version of the integration platform being used | 
 **id** | **String**| The Submission ID (returned upon a successful POST to /submissions)  | 

### Return type

[**SimilarityMetadata**](SimilarityMetadata.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_similarity_report_url**
> SimilarityViewerUrlResponse get_similarity_report_url(bodyx_turnitin_integration_namex_turnitin_integration_versionid)

Returns a URL to access Cloud Viewer

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

api_instance = TCAClient::SimilarityApi.new
body = TCAClient::SimilarityViewerUrlSettings.new # SimilarityViewerUrlSettings | 
x_turnitin_integration_name = 'x_turnitin_integration_name_example' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'x_turnitin_integration_version_example' # String | the version of the integration platform being used
id = 'id_example' # String | The Submission ID (returned upon a successful POST to /submissions) 


begin
  #Returns a URL to access Cloud Viewer
  result = api_instance.get_similarity_report_url(bodyx_turnitin_integration_namex_turnitin_integration_versionid)
  p result
rescue TCAClient::ApiError => e
  puts "Exception when calling SimilarityApi->get_similarity_report_url: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SimilarityViewerUrlSettings**](SimilarityViewerUrlSettings.md)|  | 
 **x_turnitin_integration_name** | **String**| a human readable string representing the type of integration being used | 
 **x_turnitin_integration_version** | **String**| the version of the integration platform being used | 
 **id** | **String**| The Submission ID (returned upon a successful POST to /submissions)  | 

### Return type

[**SimilarityViewerUrlResponse**](SimilarityViewerUrlResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **request_similarity_report**
> SuccessMessage request_similarity_report(bodyx_turnitin_integration_namex_turnitin_integration_versionid)

Request Similarity Report generation

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

api_instance = TCAClient::SimilarityApi.new
body = TCAClient::SimilarityPutRequest.new # SimilarityPutRequest | 
x_turnitin_integration_name = 'x_turnitin_integration_name_example' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'x_turnitin_integration_version_example' # String | the version of the integration platform being used
id = 'id_example' # String | The Submission ID (returned upon a successful POST to /submissions) 


begin
  #Request Similarity Report generation
  result = api_instance.request_similarity_report(bodyx_turnitin_integration_namex_turnitin_integration_versionid)
  p result
rescue TCAClient::ApiError => e
  puts "Exception when calling SimilarityApi->request_similarity_report: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SimilarityPutRequest**](SimilarityPutRequest.md)|  | 
 **x_turnitin_integration_name** | **String**| a human readable string representing the type of integration being used | 
 **x_turnitin_integration_version** | **String**| the version of the integration platform being used | 
 **id** | **String**| The Submission ID (returned upon a successful POST to /submissions)  | 

### Return type

[**SuccessMessage**](SuccessMessage.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **request_similarity_report_pdf**
> RequestPdfResponse request_similarity_report_pdf(x_turnitin_integration_name, x_turnitin_integration_version, id)

Request Pdf download and returns the Pdf Id

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

api_instance = TCAClient::SimilarityApi.new
x_turnitin_integration_name = 'x_turnitin_integration_name_example' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'x_turnitin_integration_version_example' # String | the version of the integration platform being used
id = 'id_example' # String | The Submission ID (returned upon a successful POST to /submissions) 


begin
  #Request Pdf download and returns the Pdf Id
  result = api_instance.request_similarity_report_pdf(x_turnitin_integration_name, x_turnitin_integration_version, id)
  p result
rescue TCAClient::ApiError => e
  puts "Exception when calling SimilarityApi->request_similarity_report_pdf: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_turnitin_integration_name** | **String**| a human readable string representing the type of integration being used | 
 **x_turnitin_integration_version** | **String**| the version of the integration platform being used | 
 **id** | **String**| The Submission ID (returned upon a successful POST to /submissions)  | 

### Return type

[**RequestPdfResponse**](RequestPdfResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



