class ChangeGenerator
  def convert(number)
    money = []
    pounds = number.to_i;
    pence = ((number - number.to_i) * 100).to_i;
    calculate_five_pounds = pounds / 5;
    calculate_one_pounds = pounds % 5;
    calculate_fifty_pence = pence / 50;
    calculate_twenty_pence = pence / 20;
    calculate_ten_pence = pence / 10;
    calculate_two_pence = pence % 20;

    if number.is_a? Float
      # number < 1 ? money << "#{pence}p" : money << "£#{pounds}" && money << "#{pence}p"

      calculate_five_pounds.times { money << "£5" }
      p money
      p "£"
      p pounds
      p pence
      calculate_one_pounds.times { money << "£1" }
      p money
      p "£"
      p pounds
      p pence
      calculate_fifty_pence.times { money << "50p" }
      p money
      p "£"
      p pounds
      p pence
      calculate_twenty_pence.times { money << "20p" }
      calculate_twenty_pence.times {pence -= 20}
      p money
      p "£"
      p pounds
      p pence
      calculate_ten_pence.times { money << "10p" }
      p money
      p "£"
      p pounds
      p pence
      calculate_two_pence.times { money << "2p" }
      p money
      p "£"
      p pounds
      p pence
    else
      # number == 1 ? money << "£#{number}" : number == 2 ? money << "£#{number}" : money << "50p"
      calculate_five_pounds.times { money << "£5" } && calculate_one_pounds.times { money << "£1" }
      p money
    end

  end
end
