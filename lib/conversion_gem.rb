class ConvertInches

  def self.to_feet(value)
    if value.is_a? Integer
      value / 12
    else
      return "Please enter a numerical value"
    end
  end

  def self.to_miles(value)
    return value / 63360
  end

  def self.to_yards(value)
    return value / 36
  end

  def self.to_metric(value, which_metric="m")
     meters = value / 39.37

    case which_metric
    when "cm"
      return meters * 100
    when "km"
      return meters / 1000
    when "mm"
      return meters * 1000
    when "m"
      return meters
    end
  end
end

class ConvertFeet
  def self.to_inches(value)
    return value * 12
  end

  def self.to_miles(value)
    return value * 0.000189394
  end

  def self.to_yards(value)
    return value * 0.3333
  end

  def self.to_metric(value, which_metric="m")
     meters = value * 0.3048

    case which_metric
    when "cm"
      return meters / 100
    when "km"
      return meters * 1000
    when "mm"
      return meters / 1000
    when "m"
      return meters
    end
  end
end
