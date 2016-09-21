class ApiController < ActionController::API
  include Swagger::Docs::ImpotentMethods
  class << self
    Swagger::Docs::Generator.set_real_methods
  end
end
