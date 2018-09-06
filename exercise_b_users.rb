users = {
  "Jonathan" => {
    :twitter => "jonnyt",
    :lottery_numbers => [6, 12, 49, 33, 45, 20],
    :home_town => "Stirling",
    :pets => [
    {
      :name => "fluffy",
      :species => "cat"
    },
    {
      :name => "fido",
      :species => "dog"
    },
    {
      :name => "spike",
      :species => "dog"
    }
  ]
  },
  "Erik" => {
    :twitter => "eriksf",
    :lottery_numbers => [18, 34, 8, 11, 24],
    :home_town => "Linlithgow",
    :pets => [
    {
      :name => "nemo",
      :species => "fish"
    },
    {
      :name => "kevin",
      :species => "fish"
    },
    {
      :name => "spike",
      :species => "dog"
    },
    {
      :name => "rupert",
      :species => "parrot"
    }
  ]
  },
  "Avril" => {
    :twitter => "bridgpally",
    :lottery_numbers => [12, 14, 33, 38, 9, 25],
    :home_town => "Dunbar",
    :pets => [
      {
        :name => "monty",
        :species => "snake"
      }
    ]
  }
}

# 1. Get Jonathan's Twitter handle (i.e. the string `"jonnyt"`)
p users["Jonathan"][:twitter]

# 2. Get Erik's hometown
p users["Erik"][:home_town]

# 3. Get the array of Erik's lottery numbers
p users["Erik"][:lottery_numbers]

#4. Get the type of Avril's pet Monty
p users["Avril"][:pets][0][:species]
# it's an array! so you need the zero.
# I thought the hw code was wrong so I changed it! took out
# brackets to make it a hash. So code works sans [0]. But that's wrong.
# all the other [:pets] are in arrays, so pay attention to errors and pattern!

# 5. Get the smallest of Erik's lottery numbers
p users["Erik"][:lottery_numbers].min()

# 6. Return an array of Avril's lottery numbers that are even
users["Avril"][:lottery_numbers].each {|x| p x if x % 2 == 0}
# oops this is not an array!

# class example:
lott_av = users["Avril"][:lottery_numbers]
result = []
for number in lott_av
  if number % 2 == 0
    result << number
  end
end

p result

# or someone did this...it's neat
p users["Avril"][:lottery_numbers].select{|x| x.even?}

# # 7. Erik is one lottery number short! Add the number `7` to be included in his lottery numbers
p users["Erik"][:lottery_numbers].push(7)

# 8. Change Erik's hometown to Edinburgh
users["Erik"][:home_town] = "Edinburgh"

# 9. Add a pet dog to Erik called "Fluffy"
users["Erik"][:pets].push({:name => "Fluffy",
:species => "dog"})
# can also use a shovel <<

# 10. Add another person to the users hash
users["Leah"] = {
  :twitter => "leahbeah",
  :lottery_numbers => [18, 18, 36, 88, 7, 25],
  :home_town => "San Francisco",
  :pets => [
      {
      :name => "Cassie",
      :species => "dog"
    }
  ]
}
# or make everything in the hash, assign to variable, then do:
# users["leah"] = variable with the hash
