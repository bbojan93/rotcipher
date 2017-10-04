require_relative "rot_cipher.rb"

puts "Welcome to Ceasar cipher program"

puts "Please insert a rotational key(0-26):"
key = gets.chomp.to_i
stringCipher = StringCipher.new(key)

while true
  puts "Please insert a string you would like to rotate:"
  string = gets.chomp
  if string == ''
    puts "Bye"
    break
  end
  puts "The result is:\n #{stringCipher.cipher(string)}"
end
