require 'chef/provisioning/vagrant_driver'

vagrant_box 'precise64' do
    url 'http://files.vagrantup.com/precise64.box'
end

vagrant_cluster "#{ENV['HOME']}/vms"

with_machine_options({
    :vagrant_options => { 'vm.box' => 'precise64' },
    :convergence_options => { :ssl_verify_mode => :verify_none }
})
