class ApplicationController < ActionController::API

  def index
    @headers = request.headers.sort.map do |k, v|
      hash = {}
      next unless k.is_a?(String) && v.is_a?(String)
      hash[k] = v
      hash
    end.compact
    render json: @headers
  end
end
