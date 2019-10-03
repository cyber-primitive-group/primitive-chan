require 'dry/system/container'

class ApplicationContainer < Dry::System::Container
  configure do |config|
    config.root = Pathname('./app')
    config.auto_register = 'lib'
  end

  load_paths!('lib')
end

Import = ApplicationContainer.injector

