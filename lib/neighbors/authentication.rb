module Neighbors
  module Authentication
    def oauthed?
      !oauth_token.nil?
    end
  end
end
