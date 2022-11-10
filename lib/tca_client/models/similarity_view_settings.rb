=begin
#Turnitin Core API

#Turnitin Core API (TCA) provides direct API access to the core functionality provided by Turnitin. TCA supports file submission, similarity report generation, group management, and visualization of report matches via Cloud Viewer or PDF download. Below is the full flow to successfully set up an integration scope, an API Key, and make calls to TCA. Integration Scope and API Key management is done via the Admin Console UI by logging in as an admin user. For more details, go to our [developer portal documentation page](https://developers.turnitin.com/docs). ## Integration Scope and API Key Management TCA API calls must provide an API Key for authentication, so you must first have at least one integration scope associated with at least one API Key to use TCA. ### Admin Console UI First, login to Admin Console UI as an *Admin* user with permission to create Integration Scopes, under a tenant that is licensed to use the TCA product Integration Scopes (you can create a new one, or add keys to existing)    * Click `Integrations` in the side bar --> `+ Add Integration` at top the top of the page --> Enter a name --> `Add` Button   API Keys   * Click `Integrations` in the side bar --> `Create API Key` Button next to a given Integration Scope -->   Enter a name --> click `Create and View button`   * Copy/Save the key manually or click save to clipboard button to copy it (this is the only time it will show)  ## TCA Flow    *  Register a webhook   *  Create a submission   *  Upload a file for the submission   *  Wait for the submission upload to process      * If you registered a webhook, a callback will be sent to it when upload is complete      * The status of the *submission* will also update to `COMPLETE`   *  Request a Similarity Report   *  Wait for similarity report to process      * If you registered a webhook, a callback will be sent to it when report is complete      * The status of the *report* will also be updated to `COMPLETE`   *  Request a URL with parameters to view the Similarity Report 

OpenAPI spec version: 1.0.249

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.35
=end

require 'date'

module TCAClient
  class SimilarityViewSettings
    # If set to true, text in quotes will not count as similar content 
    attr_accessor :exclude_quotes

    # If set to true, text in a bibliography section will not count as similar content 
    attr_accessor :exclude_bibliography

    # If set to true, text in citations will not count as similar content 
    attr_accessor :exclude_citations

    # If set to true, text in the abstract section of the submission will not count as similar content 
    attr_accessor :exclude_abstract

    # If set to true, text in the method section of the submission will not count as similar content 
    attr_accessor :exclude_methods

    # If set, similarity matches that match less than the specified amount of words will not count as similar content 
    attr_accessor :exclude_small_matches

    # If set to true, text matched to the internet collection will not count as similar content 
    attr_accessor :exclude_internet

    # If set to true, text matched to the publications collection will not count as similar content 
    attr_accessor :exclude_publications

    # If set to true, text matched to the Crossref collection will not count as similar content 
    attr_accessor :exclude_crossref

    # If set to true, text matched to the Crossref Posted Content collection will not count as similar content 
    attr_accessor :exclude_crossref_posted_content

    # If set to true, text matched to the submitted works collection will not count as similar content calculated as if submitted work was not part of the paper 
    attr_accessor :exclude_submitted_works

    # If set to true, text matched to the custom sections defined in the admin settings will not count as similar content calculated as if section was not part of the paper 
    attr_accessor :exclude_custom_sections

    # If set to true, it will exclude preprints. A preprint is a version of a scholarly or scientific paper that precedes formal peer review and publication in a peer-reviewed scholarly or scientific journal. 
    attr_accessor :exclude_preprints

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'exclude_quotes' => :'exclude_quotes',
        :'exclude_bibliography' => :'exclude_bibliography',
        :'exclude_citations' => :'exclude_citations',
        :'exclude_abstract' => :'exclude_abstract',
        :'exclude_methods' => :'exclude_methods',
        :'exclude_small_matches' => :'exclude_small_matches',
        :'exclude_internet' => :'exclude_internet',
        :'exclude_publications' => :'exclude_publications',
        :'exclude_crossref' => :'exclude_crossref',
        :'exclude_crossref_posted_content' => :'exclude_crossref_posted_content',
        :'exclude_submitted_works' => :'exclude_submitted_works',
        :'exclude_custom_sections' => :'exclude_custom_sections',
        :'exclude_preprints' => :'exclude_preprints'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'exclude_quotes' => :'Object',
        :'exclude_bibliography' => :'Object',
        :'exclude_citations' => :'Object',
        :'exclude_abstract' => :'Object',
        :'exclude_methods' => :'Object',
        :'exclude_small_matches' => :'Object',
        :'exclude_internet' => :'Object',
        :'exclude_publications' => :'Object',
        :'exclude_crossref' => :'Object',
        :'exclude_crossref_posted_content' => :'Object',
        :'exclude_submitted_works' => :'Object',
        :'exclude_custom_sections' => :'Object',
        :'exclude_preprints' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end
  
    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `TCAClient::SimilarityViewSettings` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `TCAClient::SimilarityViewSettings`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'exclude_quotes')
        self.exclude_quotes = attributes[:'exclude_quotes']
      end

      if attributes.key?(:'exclude_bibliography')
        self.exclude_bibliography = attributes[:'exclude_bibliography']
      end

      if attributes.key?(:'exclude_citations')
        self.exclude_citations = attributes[:'exclude_citations']
      end

      if attributes.key?(:'exclude_abstract')
        self.exclude_abstract = attributes[:'exclude_abstract']
      end

      if attributes.key?(:'exclude_methods')
        self.exclude_methods = attributes[:'exclude_methods']
      end

      if attributes.key?(:'exclude_small_matches')
        self.exclude_small_matches = attributes[:'exclude_small_matches']
      end

      if attributes.key?(:'exclude_internet')
        self.exclude_internet = attributes[:'exclude_internet']
      end

      if attributes.key?(:'exclude_publications')
        self.exclude_publications = attributes[:'exclude_publications']
      end

      if attributes.key?(:'exclude_crossref')
        self.exclude_crossref = attributes[:'exclude_crossref']
      end

      if attributes.key?(:'exclude_crossref_posted_content')
        self.exclude_crossref_posted_content = attributes[:'exclude_crossref_posted_content']
      end

      if attributes.key?(:'exclude_submitted_works')
        self.exclude_submitted_works = attributes[:'exclude_submitted_works']
      end

      if attributes.key?(:'exclude_custom_sections')
        self.exclude_custom_sections = attributes[:'exclude_custom_sections']
      end

      if attributes.key?(:'exclude_preprints')
        self.exclude_preprints = attributes[:'exclude_preprints']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          exclude_quotes == o.exclude_quotes &&
          exclude_bibliography == o.exclude_bibliography &&
          exclude_citations == o.exclude_citations &&
          exclude_abstract == o.exclude_abstract &&
          exclude_methods == o.exclude_methods &&
          exclude_small_matches == o.exclude_small_matches &&
          exclude_internet == o.exclude_internet &&
          exclude_publications == o.exclude_publications &&
          exclude_crossref == o.exclude_crossref &&
          exclude_crossref_posted_content == o.exclude_crossref_posted_content &&
          exclude_submitted_works == o.exclude_submitted_works &&
          exclude_custom_sections == o.exclude_custom_sections &&
          exclude_preprints == o.exclude_preprints
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [exclude_quotes, exclude_bibliography, exclude_citations, exclude_abstract, exclude_methods, exclude_small_matches, exclude_internet, exclude_publications, exclude_crossref, exclude_crossref_posted_content, exclude_submitted_works, exclude_custom_sections, exclude_preprints].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        elsif attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        TCAClient.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end  end
end
