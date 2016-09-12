
filter = "chef_environment:#{node.chef_environment} AND "
filter += "recipe:chef-simple-dcos*master"
master = search(:node, filter)
if master.length != 1
  if Chef::Config.local_mode
    master = [ node ]
  else
    raise "Master not found or there is more than one master"
  end
end

master_ip = master[0]['ipaddress']

if node == master[0]
  role = "master"
else
  role = "slave"
end

file "/tmp/debug" do
  content "#{master_ip},#{role}"
end

node.default["dcos"]['dcos_role'] = role
node.default["dcos"]['master_list'] = [ master_ip ]

include_recipe 'dcos'

