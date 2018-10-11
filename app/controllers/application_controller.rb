class ApplicationController < ActionController::API

  def index
    tmp_headers = request.headers.sort.map do |k, v|
      hash = {}
      next unless k.is_a?(String) && v.is_a?(String)
      hash[k] = v
      hash
    end
    tmp_env = request.env.sort.map do |k, v|
      hash = {}
      next unless k.is_a?(String) && v.is_a?(String)
      hash[k] = v
      hash
    end
    @headers = tmp_headers + tmp_env
    render json: @headers
  end
end
