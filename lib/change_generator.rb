class ChangeGenerator
  def convert(number)
    money = []
    pounds = number.to_i;
    pence = ((number - number.to_i) * 100).to_i;
    calculate_five_pounds = pounds / 5;
    calculate_one_pounds = pounds % 5;
    calculate_fifty_pence = pence / 50;
    calculate_twenty_pence = pence / 20;
    calculate_two_pence = pence % 20;

    if number.is_a? Float
      # number < 1 ? money << "#{pence}p" : money << "£#{pounds}" && money << "#{pence}p"
      calculate_five_pounds.times { money << "£5" } && calculate_one_pounds.times { money << "£1" } && calculate_twenty_pence.times { money << "20p" } && calculate_two_pence.times { money << "2p" }
      money
    else
      # number == 1 ? money << "£#{number}" : number == 2 ? money << "£#{number}" : money << "50p"
      calculate_five_pounds.times { money << "£5" } && calculate_one_pounds.times { money << "£1" }
      money
    end

  end
end
