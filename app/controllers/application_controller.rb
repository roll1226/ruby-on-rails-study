class ApplicationController < ActionController::Base
 def hello
  render html: "¡Hola, mundo!"
 end

 def goodby
  render html: "goodbye, world!"
 end
end
