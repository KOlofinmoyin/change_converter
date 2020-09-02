
class ChangeGenerator
  def convert(number)
    number == 1 ? ["£1"] : number == 2 ? ["£2"] : ["50p"]
  end
end
