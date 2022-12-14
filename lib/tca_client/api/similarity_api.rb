=begin
#Turnitin Core API

#Turnitin Core API (TCA) provides direct API access to the core functionality provided by Turnitin. TCA supports file submission, similarity report generation, group management, and visualization of report matches via Cloud Viewer or PDF download. Below is the full flow to successfully set up an integration scope, an API Key, and make calls to TCA. Integration Scope and API Key management is done via the Admin Console UI by logging in as an admin user. For more details, go to our [developer portal documentation page](https://developers.turnitin.com/docs). ## Integration Scope and API Key Management TCA API calls must provide an API Key for authentication, so you must first have at least one integration scope associated with at least one API Key to use TCA. ### Admin Console UI First, login to Admin Console UI as an *Admin* user with permission to create Integration Scopes, under a tenant that is licensed to use the TCA product Integration Scopes (you can create a new one, or add keys to existing)    * Click `Integrations` in the side bar --> `+ Add Integration` at top the top of the page --> Enter a name --> `Add` Button   API Keys   * Click `Integrations` in the side bar --> `Create API Key` Button next to a given Integration Scope -->   Enter a name --> click `Create and View button`   * Copy/Save the key manually or click save to clipboard button to copy it (this is the only time it will show)  ## TCA Flow    *  Register a webhook   *  Create a submission   *  Upload a file for the submission   *  Wait for the submission upload to process      * If you registered a webhook, a callback will be sent to it when upload is complete      * The status of the *submission* will also update to `COMPLETE`   *  Request a Similarity Report   *  Wait for similarity report to process      * If you registered a webhook, a callback will be sent to it when report is complete      * The status of the *report* will also be updated to `COMPLETE`   *  Request a URL with parameters to view the Similarity Report 

The version of the OpenAPI document: 1.0.258

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.3.0-SNAPSHOT

=end

require 'cgi'

module TCAClient
  class SimilarityApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # GET download pdf
    # @param x_turnitin_integration_name [String] a human readable string representing the type of integration being used
    # @param x_turnitin_integration_version [String] the version of the integration platform being used
    # @param id [String] The Submission ID (returned upon a successful POST to /submissions) 
    # @param pdf_id [String] The Pdf ID (returned upon a successful POST to /submissions/{submission_id}/similarity/pdf) 
    # @param [Hash] opts the optional parameters
    # @return [File]
    def download_similarity_report_pdf(x_turnitin_integration_name, x_turnitin_integration_version, id, pdf_id, opts = {})
      data, _status_code, _headers = download_similarity_report_pdf_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, id, pdf_id, opts)
      data
    end

    # GET download pdf
    # @param x_turnitin_integration_name [String] a human readable string representing the type of integration being used
    # @param x_turnitin_integration_version [String] the version of the integration platform being used
    # @param id [String] The Submission ID (returned upon a successful POST to /submissions) 
    # @param pdf_id [String] The Pdf ID (returned upon a successful POST to /submissions/{submission_id}/similarity/pdf) 
    # @param [Hash] opts the optional parameters
    # @return [Array<(File, Integer, Hash)>] File data, response status code and response headers
    def download_similarity_report_pdf_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, id, pdf_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SimilarityApi.download_similarity_report_pdf ...'
      end
      # verify the required parameter 'x_turnitin_integration_name' is set
      if @api_client.config.client_side_validation && x_turnitin_integration_name.nil?
        fail ArgumentError, "Missing the required parameter 'x_turnitin_integration_name' when calling SimilarityApi.download_similarity_report_pdf"
      end
      # verify the required parameter 'x_turnitin_integration_version' is set
      if @api_client.config.client_side_validation && x_turnitin_integration_version.nil?
        fail ArgumentError, "Missing the required parameter 'x_turnitin_integration_version' when calling SimilarityApi.download_similarity_report_pdf"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SimilarityApi.download_similarity_report_pdf"
      end
      # verify the required parameter 'pdf_id' is set
      if @api_client.config.client_side_validation && pdf_id.nil?
        fail ArgumentError, "Missing the required parameter 'pdf_id' when calling SimilarityApi.download_similarity_report_pdf"
      end
      # resource path
      local_var_path = '/submissions/{id}/similarity/pdf/{pdf_id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s)).sub('{' + 'pdf_id' + '}', CGI.escape(pdf_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/pdf', 'application/json'])
      header_params[:'X-Turnitin-Integration-Name'] = x_turnitin_integration_name
      header_params[:'X-Turnitin-Integration-Version'] = x_turnitin_integration_version

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'File'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"SimilarityApi.download_similarity_report_pdf",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SimilarityApi#download_similarity_report_pdf\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # GET pdf download status
    # @param x_turnitin_integration_name [String] a human readable string representing the type of integration being used
    # @param x_turnitin_integration_version [String] the version of the integration platform being used
    # @param id [String] The Submission ID (returned upon a successful POST to /submissions) 
    # @param pdf_id [String] The Pdf ID (returned upon a successful POST to /submissions/{submission_id}/similarity/pdf) 
    # @param [Hash] opts the optional parameters
    # @return [PdfStatusResponse]
    def get_similarity_report_pdf_status(x_turnitin_integration_name, x_turnitin_integration_version, id, pdf_id, opts = {})
      data, _status_code, _headers = get_similarity_report_pdf_status_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, id, pdf_id, opts)
      data
    end

    # GET pdf download status
    # @param x_turnitin_integration_name [String] a human readable string representing the type of integration being used
    # @param x_turnitin_integration_version [String] the version of the integration platform being used
    # @param id [String] The Submission ID (returned upon a successful POST to /submissions) 
    # @param pdf_id [String] The Pdf ID (returned upon a successful POST to /submissions/{submission_id}/similarity/pdf) 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PdfStatusResponse, Integer, Hash)>] PdfStatusResponse data, response status code and response headers
    def get_similarity_report_pdf_status_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, id, pdf_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SimilarityApi.get_similarity_report_pdf_status ...'
      end
      # verify the required parameter 'x_turnitin_integration_name' is set
      if @api_client.config.client_side_validation && x_turnitin_integration_name.nil?
        fail ArgumentError, "Missing the required parameter 'x_turnitin_integration_name' when calling SimilarityApi.get_similarity_report_pdf_status"
      end
      # verify the required parameter 'x_turnitin_integration_version' is set
      if @api_client.config.client_side_validation && x_turnitin_integration_version.nil?
        fail ArgumentError, "Missing the required parameter 'x_turnitin_integration_version' when calling SimilarityApi.get_similarity_report_pdf_status"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SimilarityApi.get_similarity_report_pdf_status"
      end
      # verify the required parameter 'pdf_id' is set
      if @api_client.config.client_side_validation && pdf_id.nil?
        fail ArgumentError, "Missing the required parameter 'pdf_id' when calling SimilarityApi.get_similarity_report_pdf_status"
      end
      # resource path
      local_var_path = '/submissions/{id}/similarity/pdf/{pdf_id}/status'.sub('{' + 'id' + '}', CGI.escape(id.to_s)).sub('{' + 'pdf_id' + '}', CGI.escape(pdf_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-Turnitin-Integration-Name'] = x_turnitin_integration_name
      header_params[:'X-Turnitin-Integration-Version'] = x_turnitin_integration_version

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PdfStatusResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"SimilarityApi.get_similarity_report_pdf_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SimilarityApi#get_similarity_report_pdf_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Similarity Report Results
    # @param x_turnitin_integration_name [String] a human readable string representing the type of integration being used
    # @param x_turnitin_integration_version [String] the version of the integration platform being used
    # @param id [String] The Submission ID (returned upon a successful POST to /submissions) 
    # @param [Hash] opts the optional parameters
    # @return [SimilarityMetadata]
    def get_similarity_report_results(x_turnitin_integration_name, x_turnitin_integration_version, id, opts = {})
      data, _status_code, _headers = get_similarity_report_results_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, id, opts)
      data
    end

    # Get Similarity Report Results
    # @param x_turnitin_integration_name [String] a human readable string representing the type of integration being used
    # @param x_turnitin_integration_version [String] the version of the integration platform being used
    # @param id [String] The Submission ID (returned upon a successful POST to /submissions) 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SimilarityMetadata, Integer, Hash)>] SimilarityMetadata data, response status code and response headers
    def get_similarity_report_results_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SimilarityApi.get_similarity_report_results ...'
      end
      # verify the required parameter 'x_turnitin_integration_name' is set
      if @api_client.config.client_side_validation && x_turnitin_integration_name.nil?
        fail ArgumentError, "Missing the required parameter 'x_turnitin_integration_name' when calling SimilarityApi.get_similarity_report_results"
      end
      # verify the required parameter 'x_turnitin_integration_version' is set
      if @api_client.config.client_side_validation && x_turnitin_integration_version.nil?
        fail ArgumentError, "Missing the required parameter 'x_turnitin_integration_version' when calling SimilarityApi.get_similarity_report_results"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SimilarityApi.get_similarity_report_results"
      end
      # resource path
      local_var_path = '/submissions/{id}/similarity'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-Turnitin-Integration-Name'] = x_turnitin_integration_name
      header_params[:'X-Turnitin-Integration-Version'] = x_turnitin_integration_version

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SimilarityMetadata'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"SimilarityApi.get_similarity_report_results",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SimilarityApi#get_similarity_report_results\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a URL to access Cloud Viewer
    # @param x_turnitin_integration_name [String] a human readable string representing the type of integration being used
    # @param x_turnitin_integration_version [String] the version of the integration platform being used
    # @param id [String] The Submission ID (returned upon a successful POST to /submissions) 
    # @param data [SimilarityViewerUrlSettings] 
    # @param [Hash] opts the optional parameters
    # @return [SimilarityViewerUrlResponse]
    def get_similarity_report_url(x_turnitin_integration_name, x_turnitin_integration_version, id, data, opts = {})
      data, _status_code, _headers = get_similarity_report_url_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, id, data, opts)
      data
    end

    # Returns a URL to access Cloud Viewer
    # @param x_turnitin_integration_name [String] a human readable string representing the type of integration being used
    # @param x_turnitin_integration_version [String] the version of the integration platform being used
    # @param id [String] The Submission ID (returned upon a successful POST to /submissions) 
    # @param data [SimilarityViewerUrlSettings] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SimilarityViewerUrlResponse, Integer, Hash)>] SimilarityViewerUrlResponse data, response status code and response headers
    def get_similarity_report_url_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, id, data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SimilarityApi.get_similarity_report_url ...'
      end
      # verify the required parameter 'x_turnitin_integration_name' is set
      if @api_client.config.client_side_validation && x_turnitin_integration_name.nil?
        fail ArgumentError, "Missing the required parameter 'x_turnitin_integration_name' when calling SimilarityApi.get_similarity_report_url"
      end
      # verify the required parameter 'x_turnitin_integration_version' is set
      if @api_client.config.client_side_validation && x_turnitin_integration_version.nil?
        fail ArgumentError, "Missing the required parameter 'x_turnitin_integration_version' when calling SimilarityApi.get_similarity_report_url"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SimilarityApi.get_similarity_report_url"
      end
      # verify the required parameter 'data' is set
      if @api_client.config.client_side_validation && data.nil?
        fail ArgumentError, "Missing the required parameter 'data' when calling SimilarityApi.get_similarity_report_url"
      end
      # resource path
      local_var_path = '/submissions/{id}/viewer-url'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'X-Turnitin-Integration-Name'] = x_turnitin_integration_name
      header_params[:'X-Turnitin-Integration-Version'] = x_turnitin_integration_version

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(data)

      # return_type
      return_type = opts[:debug_return_type] || 'SimilarityViewerUrlResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"SimilarityApi.get_similarity_report_url",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SimilarityApi#get_similarity_report_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Request Similarity Report generation
    # @param x_turnitin_integration_name [String] a human readable string representing the type of integration being used
    # @param x_turnitin_integration_version [String] the version of the integration platform being used
    # @param id [String] The Submission ID (returned upon a successful POST to /submissions) 
    # @param data [SimilarityPutRequest] 
    # @param [Hash] opts the optional parameters
    # @return [SuccessMessage]
    def request_similarity_report(x_turnitin_integration_name, x_turnitin_integration_version, id, data, opts = {})
      data, _status_code, _headers = request_similarity_report_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, id, data, opts)
      data
    end

    # Request Similarity Report generation
    # @param x_turnitin_integration_name [String] a human readable string representing the type of integration being used
    # @param x_turnitin_integration_version [String] the version of the integration platform being used
    # @param id [String] The Submission ID (returned upon a successful POST to /submissions) 
    # @param data [SimilarityPutRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SuccessMessage, Integer, Hash)>] SuccessMessage data, response status code and response headers
    def request_similarity_report_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, id, data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SimilarityApi.request_similarity_report ...'
      end
      # verify the required parameter 'x_turnitin_integration_name' is set
      if @api_client.config.client_side_validation && x_turnitin_integration_name.nil?
        fail ArgumentError, "Missing the required parameter 'x_turnitin_integration_name' when calling SimilarityApi.request_similarity_report"
      end
      # verify the required parameter 'x_turnitin_integration_version' is set
      if @api_client.config.client_side_validation && x_turnitin_integration_version.nil?
        fail ArgumentError, "Missing the required parameter 'x_turnitin_integration_version' when calling SimilarityApi.request_similarity_report"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SimilarityApi.request_similarity_report"
      end
      # verify the required parameter 'data' is set
      if @api_client.config.client_side_validation && data.nil?
        fail ArgumentError, "Missing the required parameter 'data' when calling SimilarityApi.request_similarity_report"
      end
      # resource path
      local_var_path = '/submissions/{id}/similarity'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'X-Turnitin-Integration-Name'] = x_turnitin_integration_name
      header_params[:'X-Turnitin-Integration-Version'] = x_turnitin_integration_version

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(data)

      # return_type
      return_type = opts[:debug_return_type] || 'SuccessMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"SimilarityApi.request_similarity_report",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SimilarityApi#request_similarity_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Request Pdf download and returns the Pdf Id
    # @param x_turnitin_integration_name [String] a human readable string representing the type of integration being used
    # @param x_turnitin_integration_version [String] the version of the integration platform being used
    # @param id [String] The Submission ID (returned upon a successful POST to /submissions) 
    # @param generate_similarity_pdf [GenerateSimilarityPDF] 
    # @param [Hash] opts the optional parameters
    # @return [RequestPdfResponse]
    def request_similarity_report_pdf(x_turnitin_integration_name, x_turnitin_integration_version, id, generate_similarity_pdf, opts = {})
      data, _status_code, _headers = request_similarity_report_pdf_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, id, generate_similarity_pdf, opts)
      data
    end

    # Request Pdf download and returns the Pdf Id
    # @param x_turnitin_integration_name [String] a human readable string representing the type of integration being used
    # @param x_turnitin_integration_version [String] the version of the integration platform being used
    # @param id [String] The Submission ID (returned upon a successful POST to /submissions) 
    # @param generate_similarity_pdf [GenerateSimilarityPDF] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(RequestPdfResponse, Integer, Hash)>] RequestPdfResponse data, response status code and response headers
    def request_similarity_report_pdf_with_http_info(x_turnitin_integration_name, x_turnitin_integration_version, id, generate_similarity_pdf, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SimilarityApi.request_similarity_report_pdf ...'
      end
      # verify the required parameter 'x_turnitin_integration_name' is set
      if @api_client.config.client_side_validation && x_turnitin_integration_name.nil?
        fail ArgumentError, "Missing the required parameter 'x_turnitin_integration_name' when calling SimilarityApi.request_similarity_report_pdf"
      end
      # verify the required parameter 'x_turnitin_integration_version' is set
      if @api_client.config.client_side_validation && x_turnitin_integration_version.nil?
        fail ArgumentError, "Missing the required parameter 'x_turnitin_integration_version' when calling SimilarityApi.request_similarity_report_pdf"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SimilarityApi.request_similarity_report_pdf"
      end
      # verify the required parameter 'generate_similarity_pdf' is set
      if @api_client.config.client_side_validation && generate_similarity_pdf.nil?
        fail ArgumentError, "Missing the required parameter 'generate_similarity_pdf' when calling SimilarityApi.request_similarity_report_pdf"
      end
      # resource path
      local_var_path = '/submissions/{id}/similarity/pdf'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'X-Turnitin-Integration-Name'] = x_turnitin_integration_name
      header_params[:'X-Turnitin-Integration-Version'] = x_turnitin_integration_version

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(generate_similarity_pdf)

      # return_type
      return_type = opts[:debug_return_type] || 'RequestPdfResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"SimilarityApi.request_similarity_report_pdf",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SimilarityApi#request_similarity_report_pdf\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
