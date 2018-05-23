class WordSynth
  def initialize
    @effects = []
  end

  def add_effect(effect)
    @effects << effect
  end

  def play(original_words)
    @effects.inject(original_words) do |words, effect|
      # callを使ってる時点で、effectはProcオブジェクト
      effect.call(words)
    end
  end
end
