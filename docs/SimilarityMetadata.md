# TCAClient::SimilarityMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **overall_match_percentage** | **Integer** | Represents the percentage match against all sources |  |
| **internet_match_percentage** | **Integer** | Represents the percentage match against internet | [optional] |
| **publication_match_percentage** | **Integer** | Represents the percentage match against all publications | [optional] |
| **submitted_works_match_percentage** | **Integer** | Represents the percentage match against all submitted works | [optional] |
| **submission_id** | **String** |  |  |
| **status** | **String** | possible values PENDING, COMPLETE |  |
| **time_generated** | **String** | Time the report finished generating.  If not set the report has not finished generating |  |
| **time_requested** | **String** | Time the report was requested |  |
| **top_matches** | [**Array&lt;SimilarityMetadataAllOfTopMatches&gt;**](SimilarityMetadataAllOfTopMatches.md) | Top matches |  |
| **top_source_largest_matched_word_count** | **Integer** | Largest individual matched word count, 0 if there isn&#39;t a match to this submission. |  |

## Example

```ruby
require 'tca_client'

instance = TCAClient::SimilarityMetadata.new(
  overall_match_percentage: null,
  internet_match_percentage: null,
  publication_match_percentage: null,
  submitted_works_match_percentage: null,
  submission_id: null,
  status: null,
  time_generated: null,
  time_requested: null,
  top_matches: null,
  top_source_largest_matched_word_count: null
)
```

