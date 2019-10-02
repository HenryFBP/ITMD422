Vagrant.configure('2') do |config|
  config.vm.box = 'gusztavvargadr/windows-10'

  config.vm.synced_folder '.', '/ITMD422'

  config.vm.provider 'virtualbox' do |v|
    v.name = 'ITMD422-Windows-10'

    v.gui = true

    v.memory = 4096
    v.cpus = 4

    v.customize ['modifyvm', :id, '--vram', '256']

    v.customize ["storageattach", :id,
                 "--storagectl", "IDE Controller", #README May need to change to "IDE" or "IDE Controller!"
                 "--port", "0", "--device", "1",
                 "--type", "dvddrive",
                 "--medium", "emptydrive"]
  end

  config.vm.provision "shell", path: "scripts/install-choco.ps1"

end
