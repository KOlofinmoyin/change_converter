class ChangeGenerator
  def convert(number)
    money = []

    if number.is_a? Float
      decimal = ((number - number.to_i) + number.to_i)
      decimal < 1 ? money << "#{(decimal * 100).to_i}p" : money << "£#{number}"
    else
      number == 1 ? money << "£#{number}" : number == 2 ? money << "£#{number}" : money << "50p"
    end

  end
end
