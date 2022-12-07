# TCAClient::SimilarityApi

All URIs are relative to *https://app-us.turnitin.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**download_similarity_report_pdf**](SimilarityApi.md#download_similarity_report_pdf) | **GET** /submissions/{id}/similarity/pdf/{pdf_id} | GET download pdf |
| [**get_similarity_report_pdf_status**](SimilarityApi.md#get_similarity_report_pdf_status) | **GET** /submissions/{id}/similarity/pdf/{pdf_id}/status | GET pdf download status |
| [**get_similarity_report_results**](SimilarityApi.md#get_similarity_report_results) | **GET** /submissions/{id}/similarity | Get Similarity Report Results |
| [**get_similarity_report_url**](SimilarityApi.md#get_similarity_report_url) | **POST** /submissions/{id}/viewer-url | Returns a URL to access Cloud Viewer |
| [**request_similarity_report**](SimilarityApi.md#request_similarity_report) | **PUT** /submissions/{id}/similarity | Request Similarity Report generation |
| [**request_similarity_report_pdf**](SimilarityApi.md#request_similarity_report_pdf) | **POST** /submissions/{id}/similarity/pdf | Request Pdf download and returns the Pdf Id |


## download_similarity_report_pdf

> File download_similarity_report_pdf(x_turnitin_integration_name, x_turnitin_integration_version, id, pdf_id)

GET download pdf

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

api_instance = TCAClient::SimilarityApi.new
x_turnitin_integration_name = 'myintegration' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'v1.0.2' # String | the version of the integration platform being used
id = 'id_example' # String | The Submission ID (returned upon a successful POST to /submissions) 
pdf_id = 'pdf_id_example' # String | The Pdf ID (returned upon a successful POST to /submissions/{submission_id}/similarity/pdf) 

begin
  # GET download pdf
  result = api_instance.download_similarity_report_pdf(x_turnitin_integration_name, x_turnitin_integration_version, id, pdf_id)
  p result
rescue TCAClient::ApiError => e
  puts "Error when calling SimilarityApi->download_similarity_report_pdf: #{e}"
end
```

#### Using the download_similarity_report_pdf_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> download_similarity_report_pdf_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, id, pdf_id)

```ruby
begin
  # GET download pdf
  data, status_code, headers = api_instance.download_similarity_report_pdf_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, id, pdf_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue TCAClient::ApiError => e
  puts "Error when calling SimilarityApi->download_similarity_report_pdf_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_turnitin_integration_name** | **String** | a human readable string representing the type of integration being used |  |
| **x_turnitin_integration_version** | **String** | the version of the integration platform being used |  |
| **id** | **String** | The Submission ID (returned upon a successful POST to /submissions)  |  |
| **pdf_id** | **String** | The Pdf ID (returned upon a successful POST to /submissions/{submission_id}/similarity/pdf)  |  |

### Return type

**File**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/pdf, application/json


## get_similarity_report_pdf_status

> <PdfStatusResponse> get_similarity_report_pdf_status(x_turnitin_integration_name, x_turnitin_integration_version, id, pdf_id)

GET pdf download status

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

api_instance = TCAClient::SimilarityApi.new
x_turnitin_integration_name = 'myintegration' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'v1.0.2' # String | the version of the integration platform being used
id = 'id_example' # String | The Submission ID (returned upon a successful POST to /submissions) 
pdf_id = 'pdf_id_example' # String | The Pdf ID (returned upon a successful POST to /submissions/{submission_id}/similarity/pdf) 

begin
  # GET pdf download status
  result = api_instance.get_similarity_report_pdf_status(x_turnitin_integration_name, x_turnitin_integration_version, id, pdf_id)
  p result
rescue TCAClient::ApiError => e
  puts "Error when calling SimilarityApi->get_similarity_report_pdf_status: #{e}"
end
```

#### Using the get_similarity_report_pdf_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PdfStatusResponse>, Integer, Hash)> get_similarity_report_pdf_status_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, id, pdf_id)

```ruby
begin
  # GET pdf download status
  data, status_code, headers = api_instance.get_similarity_report_pdf_status_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, id, pdf_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PdfStatusResponse>
rescue TCAClient::ApiError => e
  puts "Error when calling SimilarityApi->get_similarity_report_pdf_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_turnitin_integration_name** | **String** | a human readable string representing the type of integration being used |  |
| **x_turnitin_integration_version** | **String** | the version of the integration platform being used |  |
| **id** | **String** | The Submission ID (returned upon a successful POST to /submissions)  |  |
| **pdf_id** | **String** | The Pdf ID (returned upon a successful POST to /submissions/{submission_id}/similarity/pdf)  |  |

### Return type

[**PdfStatusResponse**](PdfStatusResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_similarity_report_results

> <SimilarityMetadata> get_similarity_report_results(x_turnitin_integration_name, x_turnitin_integration_version, id)

Get Similarity Report Results

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

api_instance = TCAClient::SimilarityApi.new
x_turnitin_integration_name = 'myintegration' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'v1.0.2' # String | the version of the integration platform being used
id = 'id_example' # String | The Submission ID (returned upon a successful POST to /submissions) 

begin
  # Get Similarity Report Results
  result = api_instance.get_similarity_report_results(x_turnitin_integration_name, x_turnitin_integration_version, id)
  p result
rescue TCAClient::ApiError => e
  puts "Error when calling SimilarityApi->get_similarity_report_results: #{e}"
end
```

#### Using the get_similarity_report_results_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SimilarityMetadata>, Integer, Hash)> get_similarity_report_results_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, id)

```ruby
begin
  # Get Similarity Report Results
  data, status_code, headers = api_instance.get_similarity_report_results_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SimilarityMetadata>
rescue TCAClient::ApiError => e
  puts "Error when calling SimilarityApi->get_similarity_report_results_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_turnitin_integration_name** | **String** | a human readable string representing the type of integration being used |  |
| **x_turnitin_integration_version** | **String** | the version of the integration platform being used |  |
| **id** | **String** | The Submission ID (returned upon a successful POST to /submissions)  |  |

### Return type

[**SimilarityMetadata**](SimilarityMetadata.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_similarity_report_url

> <SimilarityViewerUrlResponse> get_similarity_report_url(x_turnitin_integration_name, x_turnitin_integration_version, id, data)

Returns a URL to access Cloud Viewer

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

api_instance = TCAClient::SimilarityApi.new
x_turnitin_integration_name = 'myintegration' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'v1.0.2' # String | the version of the integration platform being used
id = 'id_example' # String | The Submission ID (returned upon a successful POST to /submissions) 
data = TCAClient::SimilarityViewerUrlSettings.new # SimilarityViewerUrlSettings | 

begin
  # Returns a URL to access Cloud Viewer
  result = api_instance.get_similarity_report_url(x_turnitin_integration_name, x_turnitin_integration_version, id, data)
  p result
rescue TCAClient::ApiError => e
  puts "Error when calling SimilarityApi->get_similarity_report_url: #{e}"
end
```

#### Using the get_similarity_report_url_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SimilarityViewerUrlResponse>, Integer, Hash)> get_similarity_report_url_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, id, data)

```ruby
begin
  # Returns a URL to access Cloud Viewer
  data, status_code, headers = api_instance.get_similarity_report_url_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, id, data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SimilarityViewerUrlResponse>
rescue TCAClient::ApiError => e
  puts "Error when calling SimilarityApi->get_similarity_report_url_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_turnitin_integration_name** | **String** | a human readable string representing the type of integration being used |  |
| **x_turnitin_integration_version** | **String** | the version of the integration platform being used |  |
| **id** | **String** | The Submission ID (returned upon a successful POST to /submissions)  |  |
| **data** | [**SimilarityViewerUrlSettings**](SimilarityViewerUrlSettings.md) |  |  |

### Return type

[**SimilarityViewerUrlResponse**](SimilarityViewerUrlResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## request_similarity_report

> <SuccessMessage> request_similarity_report(x_turnitin_integration_name, x_turnitin_integration_version, id, data)

Request Similarity Report generation

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

api_instance = TCAClient::SimilarityApi.new
x_turnitin_integration_name = 'myintegration' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'v1.0.2' # String | the version of the integration platform being used
id = 'id_example' # String | The Submission ID (returned upon a successful POST to /submissions) 
data = TCAClient::SimilarityPutRequest.new({generation_settings: TCAClient::SimilarityGenerationSettings.new({search_repositories: ['INTERNET']})}) # SimilarityPutRequest | 

begin
  # Request Similarity Report generation
  result = api_instance.request_similarity_report(x_turnitin_integration_name, x_turnitin_integration_version, id, data)
  p result
rescue TCAClient::ApiError => e
  puts "Error when calling SimilarityApi->request_similarity_report: #{e}"
end
```

#### Using the request_similarity_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SuccessMessage>, Integer, Hash)> request_similarity_report_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, id, data)

```ruby
begin
  # Request Similarity Report generation
  data, status_code, headers = api_instance.request_similarity_report_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, id, data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SuccessMessage>
rescue TCAClient::ApiError => e
  puts "Error when calling SimilarityApi->request_similarity_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_turnitin_integration_name** | **String** | a human readable string representing the type of integration being used |  |
| **x_turnitin_integration_version** | **String** | the version of the integration platform being used |  |
| **id** | **String** | The Submission ID (returned upon a successful POST to /submissions)  |  |
| **data** | [**SimilarityPutRequest**](SimilarityPutRequest.md) |  |  |

### Return type

[**SuccessMessage**](SuccessMessage.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## request_similarity_report_pdf

> <RequestPdfResponse> request_similarity_report_pdf(x_turnitin_integration_name, x_turnitin_integration_version, id, generate_similarity_pdf)

Request Pdf download and returns the Pdf Id

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

api_instance = TCAClient::SimilarityApi.new
x_turnitin_integration_name = 'myintegration' # String | a human readable string representing the type of integration being used
x_turnitin_integration_version = 'v1.0.2' # String | the version of the integration platform being used
id = 'id_example' # String | The Submission ID (returned upon a successful POST to /submissions) 
generate_similarity_pdf = TCAClient::GenerateSimilarityPDF.new # GenerateSimilarityPDF | 

begin
  # Request Pdf download and returns the Pdf Id
  result = api_instance.request_similarity_report_pdf(x_turnitin_integration_name, x_turnitin_integration_version, id, generate_similarity_pdf)
  p result
rescue TCAClient::ApiError => e
  puts "Error when calling SimilarityApi->request_similarity_report_pdf: #{e}"
end
```

#### Using the request_similarity_report_pdf_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RequestPdfResponse>, Integer, Hash)> request_similarity_report_pdf_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, id, generate_similarity_pdf)

```ruby
begin
  # Request Pdf download and returns the Pdf Id
  data, status_code, headers = api_instance.request_similarity_report_pdf_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, id, generate_similarity_pdf)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RequestPdfResponse>
rescue TCAClient::ApiError => e
  puts "Error when calling SimilarityApi->request_similarity_report_pdf_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_turnitin_integration_name** | **String** | a human readable string representing the type of integration being used |  |
| **x_turnitin_integration_version** | **String** | the version of the integration platform being used |  |
| **id** | **String** | The Submission ID (returned upon a successful POST to /submissions)  |  |
| **generate_similarity_pdf** | [**GenerateSimilarityPDF**](GenerateSimilarityPDF.md) |  |  |

### Return type

[**RequestPdfResponse**](RequestPdfResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

