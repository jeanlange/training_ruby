module TestLang
  def self.blast blast_title, &block
    puts '*********'+blast_title+'*********'
    yield
    puts '*********'+blast_title+'*********'
  end
end

module TestLang
  blast 'HEYYY' do
    puts 'hello'
  end
end
