
log_level                :info
log_location             STDOUT
chef_server_url          '<Your Chef Servers DNS'
validation_client_name '<organization>-validator'
validation_key '/etc/chef/<oranization>-validator.pem'

#This is not meant for a production environment. In prod configure trusted certificates and install the root CA cert in the trust store that Chef refernces.
#If Knife is instaleld used knife ssl fetch
#Otherwise bake your Certs trust cahin into the base image
#ssl_verify_mode :verify_peer
ssl_verify_mode :verify_none
