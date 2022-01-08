require 'pry-byebug'



def main (message)
    message.upcase!
    alphabet = "abcdefghijklmnopqrstuvwxyz".upcase.split('')
    encrypted_message = []
    split_message = message.split('')
    split_message.each do |n|
        encrypted_alphabet_index = alphabet.find_index(n) + 3
        if encrypted_alphabet_index > 25
            encrypted_alphabet_index = encrypted_alphabet_index - 26
            p encrypted_alphabet_index
        end
        encrypted_message.push(alphabet[encrypted_alphabet_index])
    end
    p encrypted_message.join('')
    encrypted_message.join('')
end
#binding.pry
main("xyz")
