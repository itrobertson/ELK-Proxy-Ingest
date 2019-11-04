Vagrant.configure("2") do |config|
    config.vm.provider "virtualbox" do |v|
        v.memory = 8192
        v.cpus = 3
    end
    config.vm.box = "base"
    config.vm.box = "geerlingguy/centos7"
    config.vm.hostname = "sanvada-elk"
    config.vm.synced_folder "./", "/vagrant", type: "virtualbox"
    config.vm.network "private_network", ip: "192.168.37.10"

    config.vm.provision "shell","inline": <<-SCRIPT
        cp -rv /vagrant/ansible /etc/
        yum install -y epel-release
        yum install -y ansible git
    SCRIPT
    config.vm.provision "ansible_local" do |ansible|
        ansible.playbook       = "/etc/ansible/sanvada-elk.yml"
        ansible.verbose        = true
        ansible.limit          = "elk" # or only "nodes" group, etc.
        ansible.inventory_path = "/etc/ansible/hosts"
    end
end
