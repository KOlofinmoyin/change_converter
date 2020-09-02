class ChangeGenerator
  def convert(number)
    money = []

    if number.is_a? Float
      pounds = number.to_i
      pence = ((number - number.to_i) * 100).to_i
      number < 1 ? money << "#{pence}p" : money << "£#{pounds}" && money << "#{pence}p"
    else
      number == 1 ? money << "£#{number}" : number == 2 ? money << "£#{number}" : money << "50p"
    end

  end
end
