class ChangeGenerator
  def convert(number)
    money = []
    pence = (number * 100);
    calculate_twenty_pounds = pence.to_i / 2000;
    calculate_twenty_pounds.times { money << "£20" }
    calculate_twenty_pounds.times { pence -= 2000 }
    calculate_ten_pounds = pence.to_i / 1000;
    calculate_ten_pounds.times { money << "£10" }
    calculate_ten_pounds.times { pence -= 1000 }
    calculate_five_pounds = pence.to_i / 500;
    calculate_five_pounds.times { money << "£5" }
    calculate_five_pounds.times { pence -= 500 }
    calculate_one_pounds = pence.to_i / 100;
    calculate_one_pounds.times { money << "£1" }
    calculate_one_pounds.times { pence -= 100 }
    calculate_fifty_pence = pence.to_i / 50;
    calculate_fifty_pence.times { money << "50p" }
    calculate_fifty_pence.times { pence -= 50 }
    calculate_twenty_pence = pence.to_i / 20;
    calculate_twenty_pence.times { money << "20p" }
    calculate_twenty_pence.times { pence -= 20 }
    calculate_ten_pence = pence.to_i / 10;
    calculate_ten_pence.times { money << "10p" }
    calculate_ten_pence.times { pence -= 10 }
    calculate_two_pence = pence.to_i / 2;
    calculate_two_pence.times { money << "2p" }
    calculate_two_pence.times { pence -= 2 }

    p money

  end
end
