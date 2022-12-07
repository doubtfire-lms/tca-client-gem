# TCAClient::SimilarityScoreData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **overall_match_percentage** | **Integer** | Represents the percentage match against all sources |  |
| **internet_match_percentage** | **Integer** | Represents the percentage match against internet | [optional] |
| **publication_match_percentage** | **Integer** | Represents the percentage match against all publications | [optional] |
| **submitted_works_match_percentage** | **Integer** | Represents the percentage match against all submitted works | [optional] |

## Example

```ruby
require 'tca_client'

instance = TCAClient::SimilarityScoreData.new(
  overall_match_percentage: null,
  internet_match_percentage: null,
  publication_match_percentage: null,
  submitted_works_match_percentage: null
)
```

