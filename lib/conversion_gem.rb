module Base
  def self.precision(value, conversion_constant, decimal_value)
    if value.is_a? String
      return "Please enter a numerical value"
    else
      x = value.to_f
      y =  conversion_constant.to_f
      z = x * y
      return z.round(decimal_value)
    end
  end
  def self.metric_conversion(which_metric, meters)
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

class ConvertInches

  def self.to_feet(value, decimal_value=4)
    conversion_constant = 0.0833333
    Base.precision(value, conversion_constant, decimal_value)

  end

  def self.to_miles(value, decimal_value=4)
    conversion_constant = 0.0000157828
    Base.precision(value, conversion_constant, decimal_value)
  end

  def self.to_yards(value, decimal_value=4)
    conversion_constant = 0.0277778
    Base.precision(value, conversion_constant, decimal_value)
  end

  def self.to_metric(value, which_metric="m", decimal_value=4)
    conversion_constant = 0.0254
    meters = Base.precision(value, conversion_constant, decimal_value)

    Base.metric_conversion(which_metric, meters)
  end
end

class ConvertFeet
  def self.to_inches(value, decimal_value=4)
    conversion_constant = 12
    Base.precision(value, conversion_constant, decimal_value)
  end

  def self.to_miles(value, decimal_value=4)
    conversion_constant = 0.000189394
    Base.precision(value, conversion_constant, decimal_value)
  end

  def self.to_yards(value, decimal_value=4)
    conversion_constant = 0.3333
    Base.precision(value, conversion_constant, decimal_value)
  end

  def self.to_metric(value, which_metric="m", decimal_value=4)
     conversion_constant = 0.3048
    meters = Base.precision(value, conversion_constant, decimal_value)

    Base.metric_conversion(which_metric, meters)
  end
end

class ConvertYards
  def self.to_inches(value, decimal_value=4)
    conversion_constant = 36
    Base.precision(value, conversion_constant, decimal_value)
  end

  def self.to_miles(value, decimal_value=4)
    conversion_constant = 0.000568182
    Base.precision(value, conversion_constant, decimal_value)
  end

  def self.to_feet(value, decimal_value=4)
    conversion_constant = 3
    Base.precision(value, conversion_constant, decimal_value)
  end

  def self.to_metric(value, which_metric="m",decimal_value=4)
     conversion_constant = 0.9144
    meters = Base.precision(value, conversion_constant, decimal_value)

    Base.metric_conversion(which_metric, meters)
  end
end

class ConvertMiles
  def self.to_inches(value, decimal_value=4)
    conversion_constant = 63360
    Base.precision(value, conversion_constant, decimal_value)
  end

  def self.to_yards(value, decimal_value=4)
    conversion_constant = 1760
    Base.precision(value, conversion_constant, decimal_value)
  end

  def self.to_feet(value, decimal_value=4)
    conversion_constant = 5280
    Base.precision(value, conversion_constant, decimal_value)
  end

  def self.to_metric(value, which_metric="m", decimal_value=4)
     conversion_constant = 1609.344
     meters = Base.precision(value, conversion_constant, decimal_value)

    Base.metric_conversion(which_metric, meters)
  end
end

class ConvertMeters

  def self.to_inches(value, decimal_value=4)
    conversion_constant = 39.3701
    Base.precision(value, conversion_constant, decimal_value)
  end

  def self.to_yards(value, decimal_value=4)
    conversion_constant = 1.09361
    Base.precision(value, conversion_constant, decimal_value)
  end

  def self.to_miles(value, decimal_value=4)
    conversion_constant = 0.000621371
    Base.precision(value, conversion_constant, decimal_value)
  end

  def self.to_feet(value, decimal_value=4)
    conversion_constant = 3.28084
    Base.precision(value, conversion_constant, decimal_value)
  end

  def self.to_metric(value, which_metric="m", decimal_value=4)
    Base.metric_conversion(which_metric, meters)
  end
end
