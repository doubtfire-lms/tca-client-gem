# TCAClient::SimilarityViewerUrlSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **author_metadata_override** | [**AuthorMetadataOverride**](AuthorMetadataOverride.md) |  | [optional] |
| **viewer_user_id** | **String** | viewer&#39;s user ID | [optional] |
| **locale** | **String** | two character locale language setting (e.g. &#39;en&#39; or &#39;de&#39;) or full value | [optional] |
| **viewer_default_permission_set** | **String** | Default viewer permission set, accepts INSTRUCTOR, LEARNER, EDITOR, USER, APPLICANT, ADMINISTRATOR, UNDEFINED | [optional] |
| **viewer_permissions** | [**ViewerPermissions**](ViewerPermissions.md) |  | [optional] |
| **eula** | [**Eula**](Eula.md) |  | [optional] |
| **sidebar** | [**Sidebar**](Sidebar.md) |  | [optional] |
| **similarity** | [**SimilaritySettings**](SimilaritySettings.md) |  | [optional] |
| **annotations** | [**AnnotationsSettings**](AnnotationsSettings.md) |  | [optional] |

## Example

```ruby
require 'tca_client'

instance = TCAClient::SimilarityViewerUrlSettings.new(
  author_metadata_override: null,
  viewer_user_id: null,
  locale: null,
  viewer_default_permission_set: null,
  viewer_permissions: null,
  eula: null,
  sidebar: null,
  similarity: null,
  annotations: null
)
```

