module ClinicalTrials
  class Client
    module Api

      # Returns search results for given term
      # @param term [String] The term to search for
      # @param options [Hash] A customizable set of options. 
      # @return {Hash}
      # @see http://clinicaltrials.gov/ct2/info/linking
      # @example
      #   searc("lyme disease")

      def search(parameters, options={})
        url = "ct2/results?displayxml=true"
        if parameters
          url += "&#{parameters.map { |key, val| "#{key}=#{val}"}.join("&")}"
        end
        get(url, options)
      end

      def retrieve(nct_id, options={})
        url = "show/#{nct_id}?displayxml=true"
        get(url, options)
      end
    end
  end
end
