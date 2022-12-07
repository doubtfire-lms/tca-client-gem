# TCAClient::PDFStatusWebhookRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | The requesting Pdf status | [optional] |
| **id** | **String** | the PDF ID | [optional] |
| **submission_id** | **String** | the associated submission ID | [optional] |
| **metadata** | [**SubmissionCompleteWebhookRequestAllOfMetadata**](SubmissionCompleteWebhookRequestAllOfMetadata.md) |  | [optional] |

## Example

```ruby
require 'tca_client'

instance = TCAClient::PDFStatusWebhookRequest.new(
  status: null,
  id: null,
  submission_id: null,
  metadata: null
)
```

