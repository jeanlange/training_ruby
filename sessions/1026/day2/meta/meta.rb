module TestLang
  def self.lol_def method_name, &block
    define_method(method_name) do
      yield
    end
  end
end

module TestLang

  lol_def 'hey' do
    expect().to eq()
    string = "Mike Tyson chats about Season 2 of Mike Tyson Mysteries and shows off his sense of humor when he brings a popular \"Hotline Bling\" meme to life.

      Subscribe NOW to The Tonight Show Starring Jimmy Fallon: http://bit.ly/1nwT1aN

    Watch The Tonight Show Starring Jimmy Fallon Weeknights 11:35/10:35c
    Get more Jimmy Fallon: 
      Follow Jimmy: http://Twitter.com/JimmyFallon
    Like Jimmy: https://Facebook.com/JimmyFallon

    Get more The Tonight Show Starring Jimmy Fallon: 
      Follow The Tonight Show: http://Twitter.com/FallonTonight
    Like The Tonight Show: https://Facebook.com/FallonTonight
    The Tonight Show Tumblr: http://fallontonight.tumblr.com/
      "

    string.gsub('Fallon', 'Kimmel')
  end

  hey
end
