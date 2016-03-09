module Plurb
  class Client

    QUALIFIERS = [
      'says', 'was', 'is', 'thinks', 'feels', 'wonders', 'has', 'asks',
      'hopes', 'will', 'needs', 'wishes', 'wants', 'hates', 'gives', 'shares',
      'likes', 'loves', ''
    ]

    def initialize(app_key, app_secret)
      @oauth_consumer = OAuth::Consumer.new(
        app_key,
        app_secret,
        {
          scheme:             :header,
          http_method:        :post,
          site:               ::Plurb::URL::SITE,
          request_token_path: ::Plurb::URL::REQUEST_TOKEN,
          access_token_path:  ::Plurb::URL::ACCESS_TOKEN,
          authorize_path:     ::Plurb::URL::AUTHORIZE
        }
      )
    end

    def authorize(token, token_secret)
      @client = OAuth::AccessToken.new(@oauth_consumer, token, token_secret)
    end

    def get_plurks(options={})
      get_response(
        ::Plurb::URL::GET_PLURKS,
        options
      )
    end

    def plurk(content, qualifier='', options={})
      q = qualifier.downcase
      q = QUALIFIERS.include?(q) ? q : ''

      get_response(
        ::Plurb::URL::PLURK_ADD,
        {
          content: content,
          qualifier: q
        }.merge(options)
      )
    end

    def delete_plurk(plurk_id)
      get_response(
        ::Plurb::URL::PLURK_DELETE,
        plurk_id: plurk_id
      )
    end

    def edit_plurk(plurk_id, content)
      get_response(
        ::Plurb::URL::PLURK_EDIT,
        {
          plurk_id: plurk_id,
          content: content
        }
      )
    end

    private
    def get_response(target_path, request_data)
      response = @client.post(
        target_path,
        request_data
      )
      JSON.parse(response.body)
    end
  end
end
