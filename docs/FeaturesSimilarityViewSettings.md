# TCAClient::FeaturesSimilarityViewSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **exclude_quotes** | **Boolean** | If set to true, text in quotes will not count as similar content  | [optional] |
| **exclude_bibliography** | **Boolean** | If set to true, text in a bibliography section will not count as similar content  | [optional] |
| **exclude_citations** | **Boolean** | If set to true, text in citations will not count as similar content  | [optional] |
| **exclude_abstract** | **Boolean** | If set to true, text in the abstract section of the submission will not count as similar content  | [optional] |
| **exclude_methods** | **Boolean** | If set to true, text in the method section of the submission will not count as similar content  | [optional] |
| **exclude_small_matches** | **Boolean** | If set, similarity matches that match less than the specified amount of words will not count as similar content  | [optional] |
| **exclude_internet** | **Boolean** | If set to true, text matched to the internet collection will not count as similar content  | [optional] |
| **exclude_publications** | **Boolean** | If set to true, text matched to the publications collection will not count as similar content  | [optional] |
| **exclude_crossref** | **Boolean** | If set to true, text matched to the Crossref collection will not count as similar content  | [optional] |
| **exclude_crossref_posted_content** | **Boolean** | If set to true, text matched to the Crossref Posted Content collection will not count as similar content  | [optional] |
| **exclude_submitted_works** | **Boolean** | If set to true, text matched to the submitted works collection will not count as similar content calculated as if submitted work was not part of the paper  | [optional] |
| **exclude_custom_sections** | **Boolean** | If set to true, text matched to the custom sections defined in the admin settings will not count as similar content calculated as if section was not part of the paper  | [optional] |
| **exclude_preprints** | **Boolean** | If set to true, it will exclude preprints. A preprint is a version of a scholarly or scientific paper that precedes formal peer review and publication in a peer-reviewed scholarly or scientific journal.  | [optional] |

## Example

```ruby
require 'tca_client'

instance = TCAClient::FeaturesSimilarityViewSettings.new(
  exclude_quotes: true,
  exclude_bibliography: true,
  exclude_citations: true,
  exclude_abstract: true,
  exclude_methods: true,
  exclude_small_matches: true,
  exclude_internet: true,
  exclude_publications: true,
  exclude_crossref: true,
  exclude_crossref_posted_content: true,
  exclude_submitted_works: true,
  exclude_custom_sections: true,
  exclude_preprints: true
)
```

