# encoding: utf-8
require 'devise/mapping'

module Devise #:nodoc:
  module Oauth2Authenticatable #:nodoc:

    # OAuth2 view helpers to easily add the link to the OAuth2 connection popup and also the necessary JS code.
    #
    module Helpers
      
      # Creates the link to 
      def link_to_oauth2(scope, link_text, options={})
        
        callback_url = send("#{scope}_oauth_callback_url")
      
        link_to link_text, Devise::oauth2_client.web_server.authorize_url(
            :redirect_uri => callback_url,  
            :scope => Devise::requested_scope
          ), options
      end
    end
  end
end

::ActionView::Base.send :include, Devise::Oauth2Authenticatable::Helpers