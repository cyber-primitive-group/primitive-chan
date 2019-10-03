require_relative './application/container.rb'
require_relative './boot/logger.rb'
require_relative './boot/persistence.rb'


Application::Container.start(:logger)
Application::Container.start(:persistence)

Application::Container.finalize!
