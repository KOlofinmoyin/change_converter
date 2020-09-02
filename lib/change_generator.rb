
class ChangeGenerator
  def convert(number)
    change = []
    number == 1 ? change << "£#{1}" : number == 2 ? change << "£#{2}" : change << "50p"

  end
end
