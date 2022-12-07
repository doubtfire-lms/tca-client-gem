# TCAClient::SimilarityGenerationSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **search_repositories** | **Array&lt;String&gt;** | List of repositories to search |  |
| **submission_auto_excludes** | **Array&lt;String&gt;** | List of submission IDs to exclude from report | [optional] |
| **auto_exclude_self_matching_scope** | **String** | self matching submissions to exclude from report | [optional] |
| **priority** | **Boolean** | Priority level of report generation | [optional] |

## Example

```ruby
require 'tca_client'

instance = TCAClient::SimilarityGenerationSettings.new(
  search_repositories: null,
  submission_auto_excludes: null,
  auto_exclude_self_matching_scope: null,
  priority: false
)
```

