require "net/http"
class RequestsData

  def self.request(uri)
    Net::HTTP.get(uri)
  end

end