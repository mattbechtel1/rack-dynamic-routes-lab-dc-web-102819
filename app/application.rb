class Application

  @@items = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      item_word = req.path.split("/items/").last
      item = @@items.find {|item| item.name == item_word}
      resp.write item.price
    else

  end

end
