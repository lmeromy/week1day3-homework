stops = [ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ]

# 1. Add `"Edinburgh Waverley"` to the end of the array
stops.push("Edinburgh Waverley")

# # 2. Add `"Glasgow Queen St"` to the start of the array
stops.unshift("Glasgow Queen St")

# # 3. Add `"Polmont"` at the appropriate point (between `"Falkirk High"` and `"Linlithgow"`)
stops.insert(4, "Polmont")

# # 4. Work out the index position of `"Linlithgow"`
stops.index("Linlithgow")

# # 5. Remove `"Livingston"` from the array using its name
stops.delete("Livingston")

# # 6. Delete `"Cumbernauld"` from the array by index
stops.delete_at(2)

# # 7. How many stops there are in the array?
stops.length() #after running all previous code, there are 7 stops

# # 8. How many ways can we return `"Falkirk High"` from the array?
stops[2]
stops[-5]
# another one: stops.at(2)
# another one stops.each{ |stop| if stop == "Falkirk High" p stop end}...rather inefficient

# # 9. Reverse the positions of the stops in the array
stops.reverse()

# 10. Print out all the stops using a for loop
for x in stops
  p x
end
