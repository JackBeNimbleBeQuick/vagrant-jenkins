
Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-18.04"

  config.vm.provider :virtualbox do |v|
    v.name = "jenkins"
    v.memory = 2048
    v.cpus = 2
  end

  config.vm.hostname = "jenkins"
  config.vm.network :private_network, ip: "10.10.10.100"

  # Set the name of the VM. See: http://stackoverflow.com/a/17864388/100134
  config.vm.define :jenkins do |jenkins|

  end


  config.vm.provision "ansible" do |ansible|
    ansible.verbose  = "v"
    ansible.compatibility_mode = "2.0"
    ansible.playbook  = "provisioner/playbook.yml"
  end

end
