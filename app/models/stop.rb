require 'uri'
require 'net/http'
class Stop < ApplicationRecord
    validates :StopNumber, presence: true
    validates :StopDescription, presence: true, length: { minimum: 10 }

    def updateApi

        uri = URI('https://api.octranspo1.com/v2.0/GetRouteSummaryForStop?appID=3f1b4147&apiKey=eabb08d5fb7b0e822ff4da911996b3c3&stopNo=6941&format=XML')
        res = Net::HTTP.get_response(uri)
        puts res.body if res.is_a?(Net::HTTPSuccess)
    end
end
