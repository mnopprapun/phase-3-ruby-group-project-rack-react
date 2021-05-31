class Application 
  
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/Users/) 
      return [200, { 'Content-Type' => 'application/json' }, [ {:message => "blahblah"}.to_json ]]

    else
      resp.write "Path Not Found"

      if req.path.match(/Scores/) 
        return [200, { 'Content-Type' => 'application/json' }, [ {:message => "blahblah"}.to_json ]]
  
      else
        resp.write "Path Not Found"

      end

      if req.path.match(/Hi-Score-Board/) 
        return [200, { 'Content-Type' => 'application/json' }, [ {:message => "blahblah"}.to_json ]]
  
      else
        resp.write "Path Not Found"
      end

    end

    resp.finish
  end

end
