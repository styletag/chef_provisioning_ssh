require 'chef/provisioning/ssh_driver'

with_driver 'ssh'

with_machine_options  :transport_options => {
    'ip_address' => '192.168.33.122',
    'username' => 'vagrant',
    'ssh_options' => {
        'password' => 'vagrant'
    }
}
