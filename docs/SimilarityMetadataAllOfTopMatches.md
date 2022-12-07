# TCAClient::SimilarityMetadataAllOfTopMatches

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Source name | [optional] |
| **percentage** | **Float** | Match percentage | [optional] |
| **submission_id** | **String** | Matching submission id | [optional] |
| **source_type** | **String** | Matching submission source type (INTERNET, PUBLICATION, SUBMITTED_WORK) | [optional] |
| **matched_word_count_total** | **Float** | number of matching words | [optional] |
| **submitted_date** | **String** | date match was submitted | [optional] |
| **institution_name** | **String** | intitution name for matched SUBMITTED_WORK types | [optional] |

## Example

```ruby
require 'tca_client'

instance = TCAClient::SimilarityMetadataAllOfTopMatches.new(
  name: null,
  percentage: null,
  submission_id: null,
  source_type: null,
  matched_word_count_total: null,
  submitted_date: null,
  institution_name: null
)
```

