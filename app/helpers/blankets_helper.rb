module BlanketsHelper
  # friendly_blanket_type(2) => "stable blanket"
  def friendly_blanket_type(blanket_type)
    case blanket_type
    when "1" then "turnout blanket"
    when "2" then "stable blanket"
    when "3" then "blanket liner"
    when "4" then "sheet"
    when "5" then "rainsheet"
    when "6" then "cooler"
    when "7" then "quarter sheet"
    when "8" then "fly sheet"
    when "9" then "therapeutic"
    when "10" then "accessory"
    end
  end

end
