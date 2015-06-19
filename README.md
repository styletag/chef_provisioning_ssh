### Chef-provisioning-ssh ###


### ssh.rb

    require 'chef/provisioning/ssh_driver'

    with_driver 'ssh'

    with_machine_options  :transport_options => {
        'ip_address' => '192.168.33.122',   # ip of the vagrant machine to be provisioned.
        'username' => 'vagrant',            # username of the vagrant box
        'ssh_options' => {
            'password' => 'vagrant'         # password
        }
    }

### blah.rb

    require 'chef/provisioning'

    machine 'meh' do
        converge true
        recipe 'starter'
    end

### Steps:

    $ Vagrant up
    $ berks vendor cookbooks && chef-client -z ssh.rb blah.rb
    OR
    $ bundle exec berks vendor cookbooks && chef-client -z ssh.rb blah.rb
