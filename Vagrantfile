Vagrant.configure(2) do |config|

  config.vm.box = "amp_centos6.4"
  config.vm.box_url = "http://wdev.qa.admarketplace.net/vagrant_boxes/jenkins_base/centos_6.4_base.box"
  config.vm.network "private_network", ip: "172.31.20.100"
  config.vm.network "forwarded_port", guest: 8080, host: 8080
  config.vm.provider "virtualbox" do |vb|
     vb.name = "spark-zeppelin"
     vb.customize ["modifyvm", :id, "--memory", "2048"]
     vb.customize ["modifyvm", :id, "--usb", "off"]
     vb.customize ["modifyvm", :id, "--usbehci", "off"]
  end

  config.vm.hostname = "spark-zeppelin"

  config.vm.provision "shell", path: "./scripts/bootstrap.sh"

end
