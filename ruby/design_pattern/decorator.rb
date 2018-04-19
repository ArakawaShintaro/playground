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

# Decoratorを複数作る場合に重複したコードを共通化
class WriterDecorator
  def initialize(real_writer)
    @real_writer = real_writer
  end

  def write_line(line)
    @real_writer.write_line(line)
  end

  def pos
    @real_writer.pos
  end

  def rewind
    @real_writer.rewind
  end

  def close
    @real_writer.close
  end
end

# デコレーター（追加する機能をもつ）
class NumberingWriter < WriterDecorator
  def initialize(real_writer)
    super(real_writer)
    @line_number = 1
  end

  def write_line(line)
    @real_writer.write_line("#{@line_number} : #{line}")
  end
end

f = NumberingWriter.new(SimpleWriter.new("file1.txt"))
f.write_line('Hello World!!')
f.close

class TimestampingWriter < WriterDecorator
  def write_line(line)
    @real_writer.write_line("#{Time.new} : #{line}")
  end
end

f = TimestampingWriter.new(SimpleWriter.new("file2.txt"))
f.write_line("Hello out there")
f.close
