require_relative './application/container.rb'
require_relative './boot/logger.rb'

ApplicationContainer.start(:logger)
ApplicationContainer.finalize!
