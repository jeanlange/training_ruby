while input = gets
  if input.match /\d/
    likelihood = 75
    if rand(100) >= (100 - likelihood)
      puts 'THATS NUMBERWANG!'
    end
  end
end
