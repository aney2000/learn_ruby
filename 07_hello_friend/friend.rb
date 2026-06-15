class Friend
  def greeting(name = nil)
    name ||= "world"

    if name == "world"
      "Hello!"
    else
      "Hello, #{name}!"
    end
  end
end