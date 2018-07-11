def multiples_5_3
variable = []

  for i in 1..1000

    if i % 3 == 0 || i % 5 == 0
      variable << i
    end

  end

puts variable.sum
end

puts multiples_5_3
