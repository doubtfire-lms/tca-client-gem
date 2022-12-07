# TCAClient::ViewerPermissions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **may_view_submission_full_source** | **Boolean** | Optional individual permission which override the default permission set. | [optional] |
| **may_view_match_submission_info** | **Boolean** | Optional individual permission which override the default permission set. | [optional] |
| **may_view_flags_panel** | **Boolean** | Optional individual permission which override the default permission set | [optional] |
| **may_view_document_details_panel** | **Boolean** | Optional individual permission which override the default permission set | [optional] |
| **may_view_sections_exclusion_panel** | **Boolean** | Optional individual permission which override the default permission set | [optional] |

## Example

```ruby
require 'tca_client'

instance = TCAClient::ViewerPermissions.new(
  may_view_submission_full_source: null,
  may_view_match_submission_info: null,
  may_view_flags_panel: null,
  may_view_document_details_panel: null,
  may_view_sections_exclusion_panel: null
)
```

