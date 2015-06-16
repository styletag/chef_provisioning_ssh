require 'chef/provisioning'

machine 'meh' do
  converge true
  recipe 'starter'
end
