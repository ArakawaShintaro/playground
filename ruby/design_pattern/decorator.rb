# 既存の基底クラスを変更せず、機能を追加する

require 'pry'

# 具体コンポーネント（ベースとなる処理をもつオブジェクト）
# クラス内部は変更したくない
class SimpleWriter
  def initialize(path)
    @file = File.open(path, 'w')
  end

  def write_line(line)
    @file.write(line)
    @file.write("\n")
  end

  def pos
    @file.pos
  end

  def rewind
    @file.rewind
  end

  def close
    @file.close
  end
end

writer = SimpleWriter.new('sample1.txt')
writer.write_line('私は荒川です')
writer.close
# デコレーター（追加する機能をもつ）
