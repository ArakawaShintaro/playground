module DeepFreezable
  def deep_freeze(arrya_or_hash)
    case arrya_or_hash
    when Array
      arrya_or_hash.each(&:freeze)
    when Hash
      arrya_or_hash.each do |k, v|
        k.freeze
        v.freeze
      end
    end
    arrya_or_hash.freeze
  end
end
