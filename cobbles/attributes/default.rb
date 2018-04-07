default['ruby-ng']['ruby_version'] = "2.4"
default['nodejs']['version'] = "6.10.1"
default['nodejs']['npm']['version'] = "5.2.0"
default['nginx']['default_site_enabled'] = false

default[:SofaSurfer][:git_repository] = "https://github.com/DrAmaze/sofa_surfer/"
default[:SofaSurfer][:git_revision] = "master"
default[:SofaSurfer][:path] = "/opt/sofasurfer"

default[:SofaSurfer][:rails_env] = "production"

default[:SofaSurfer][:environment] = {
  "SECRET_KEY_BASE": node[:SofaSurfer][:secret_key_base],
  "DATABASE_URL": node[:SofaSurfer][:database_url],
  "RAILS_ENV": node[:SofaSurfer][:rails_env]
}

# env_str = environment.map {|k,v| "#{k}=#{v}"}.join(' ')

default[:SofaSurfer][:start_cmd] = "unicorn -E production -c /opt/unicorn.rb"
