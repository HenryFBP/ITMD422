Vagrant.configure('2') do |config|
  config.vm.box = 'gusztavvargadr/windows-10'

  config.vm.synced_folder '.', '/ITMD422'

  config.vm.provider 'virtualbox' do |v|
    v.name = 'ITMD422-Windows-10'

    v.gui = true

    v.memory = 4096
    v.cpus = 4

    v.customize ['modifyvm', :id, '--vram', '128']
  end
end
