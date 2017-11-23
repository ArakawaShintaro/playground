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

data = <<EOS
name,age,gender
arakawa,23,man
shintaro,22,woman
EOS

CSV.parse(data, headers: :first_row) do |row|
  name, age, gender = row.values_at('name', 'age', 'gender')
  puts "#{name} is #{gender} #{age}"
end

puts

converter = ->(feild, field_info) {
  if field_info.index == 1
    feild.upcase
  else
    feild
  end
}

p CSV.parse(%(foo, bar, baz), converters: converter)
