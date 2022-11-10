# TCAClient::SubmissionBase

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [****](.md) | Submission id, optional field | [optional] 
**owner** | **String** | ID of the owning user | [optional] 
**owner_default_permission_set** | **String** | Default viewer permission set, accepts INSTRUCTOR, LEARNER, EDITOR, USER, APPLICANT, ADMINISTRATOR, UNDEFINED | [optional] 
**title** | **String** | the title of the submission | [optional] 
**submitter** | **String** | (optional) ID of the submitting user, if different from the owning user | [optional] 
**submitter_default_permission_set** | **String** | Default submitter permission set, accepts INSTRUCTOR, LEARNER, EDITOR, USER, APPLICANT, ADMINISTRATOR, UNDEFINED | [optional] 
**eula** | [**Eula**](Eula.md) |  | [optional] 
**metadata** | [**SubmissionBaseMetadata**](SubmissionBaseMetadata.md) |  | [optional] 
**extract_text_only** | **BOOLEAN** | (optional) indicates if the submission should be treated as a text only submission. A text only submission cannot generate full reports or be viewed in the viewer, but can use the index only endpoint to be indexed | [optional] 

