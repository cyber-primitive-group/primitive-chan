Application::Container.boot(:persistence, namespace: true) do
  init do
    require "rom"
    require "rom/sql"

    rom_config = ROM::Configuration.new(:sql, 'postgresql://localhost:5432/chan_dev?user=postgres&password=postgres')

    register(:config, rom_config)
    register(:db, rom_config.gateways[:default].connection)
  end

  start do
    config = container['persistence.config']
    config.auto_registration('lib/persistence')

    register(:rom, ROM.container(config))
  end
end
