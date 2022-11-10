# TCAClient::SimilarityMetadata

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**overall_match_percentage** | **Integer** | Represents the percentage match against all sources | 
**internet_match_percentage** | **Integer** | Represents the percentage match against internet | [optional] 
**publication_match_percentage** | **Integer** | Represents the percentage match against all publications | [optional] 
**submitted_works_match_percentage** | **Integer** | Represents the percentage match against all submitted works | [optional] 
**submission_id** | **String** |  | 
**status** | **String** | possible values PENDING, COMPLETE | 
**time_generated** | **String** | Time the report finished generating.  If not set the report has not finished generating | 
**time_requested** | **String** | Time the report was requested | 
**top_matches** | [**Array&lt;SimilarityMetadataTopMatches&gt;**](SimilarityMetadataTopMatches.md) | Top matches | 
**top_source_largest_matched_word_count** | **Integer** | Largest individual matched word count, 0 if there isn&#x27;t a match to this submission. | 

