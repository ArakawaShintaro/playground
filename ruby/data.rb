# require 'yaml'

# yaml_string = <<EOS
# ---
# remote:
#   host: localhost
#   port: 22
#   ssh: true
#   username: user
#   password: null
# EOS

# p setting = Yaml.load(yaml_string)

require 'csv'

data = <<EOS
foo,bar,baz
hoge,piyo,fuga
EOS

CSV.parse(data) do |row|
  puts row.join('|')
end
