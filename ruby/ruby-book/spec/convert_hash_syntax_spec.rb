require './spec/spec_helper'
require './lib/convert_hash_syntax'

RSpec.describe 'Convert hash syntax' do
  it 'convert_hash_syntax' do
    old_syntax = <<~TEXT
     {
      :name => "Arakawa"
      :age=>23,
      :gender  =>  :man
     }
    TEXT

    converted_text = <<~TEXT
     {
      name: "Arakawa"
      age: 23,
      gender: :man
     }
    TEXT

    expect(convert_hash_syntax(old_syntax)).to eq converted_text
  end
end
