# TCAClient::Sidebar

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **default_mode** | **String** | The default mode shown in the sidebar panel. The selected mode must be enabled in the tenant&#39;s license, request parameter, as well as the viewer&#39;s permission. The default mode is similarity.  | [optional] |

## Example

```ruby
require 'tca_client'

instance = TCAClient::Sidebar.new(
  default_mode: null
)
```

