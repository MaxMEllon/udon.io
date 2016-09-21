Swagger::Docs::Config.register_apis({
  '1.0' => {
    base_path: '/',
    controller_base_path: '/api',
    api_file_path: 'public',
    base_api_controllers: [ApiController],
    parent_controller: ActionController::API
  }
})

class Swagger::Docs::Config
  def self.base_api_controller; ApiController end
end
