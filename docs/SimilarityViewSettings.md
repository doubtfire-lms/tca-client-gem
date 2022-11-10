# TCAClient::SimilarityViewSettings

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**exclude_quotes** | **BOOLEAN** | If set to true, text in quotes will not count as similar content  | [optional] 
**exclude_bibliography** | **BOOLEAN** | If set to true, text in a bibliography section will not count as similar content  | [optional] 
**exclude_citations** | **BOOLEAN** | If set to true, text in citations will not count as similar content  | [optional] 
**exclude_abstract** | **BOOLEAN** | If set to true, text in the abstract section of the submission will not count as similar content  | [optional] 
**exclude_methods** | **BOOLEAN** | If set to true, text in the method section of the submission will not count as similar content  | [optional] 
**exclude_small_matches** | **Integer** | If set, similarity matches that match less than the specified amount of words will not count as similar content  | [optional] 
**exclude_internet** | **BOOLEAN** | If set to true, text matched to the internet collection will not count as similar content  | [optional] 
**exclude_publications** | **BOOLEAN** | If set to true, text matched to the publications collection will not count as similar content  | [optional] 
**exclude_crossref** | **BOOLEAN** | If set to true, text matched to the Crossref collection will not count as similar content  | [optional] 
**exclude_crossref_posted_content** | **BOOLEAN** | If set to true, text matched to the Crossref Posted Content collection will not count as similar content  | [optional] 
**exclude_submitted_works** | **BOOLEAN** | If set to true, text matched to the submitted works collection will not count as similar content calculated as if submitted work was not part of the paper  | [optional] 
**exclude_custom_sections** | **BOOLEAN** | If set to true, text matched to the custom sections defined in the admin settings will not count as similar content calculated as if section was not part of the paper  | [optional] 
**exclude_preprints** | **BOOLEAN** | If set to true, it will exclude preprints. A preprint is a version of a scholarly or scientific paper that precedes formal peer review and publication in a peer-reviewed scholarly or scientific journal.  | [optional] 

