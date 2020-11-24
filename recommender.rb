def recommender(spec)
  result = []

  result << "whispering death" if spec["atNight"]
  result << "beefy" if spec["seasons"] && spec["seasons"].include?("winter")
  if spec["seasons"] && spec["seasons"].include?("summer")
    result << "white lightning" if ["sparta", "atlantis"].include?(spec["country"])
  end
  if spec["minDuration"] && spec["minDuration"] >= 150
    if spec["seasons"] && spec["seasons"].include?("summer")
      if spec["minDuration"] < 350
        result << "white lightning"
      elsif spec["minDuration"] < 570
        result << "little master"
      else
        result << "wall"
      end
    else
      if spec["minDuration"] < 450
        result << "white lightning"
      else
        result << "little master"
      end
    end
  end

  result.uniq
end
