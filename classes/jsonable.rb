class JSONable
  def to_json(*_args)
    hash = {}
    instance_variables.each do |var|
      hash[var] = instance_variable_get var
    end
    hash.to_json
  end

  def from_json!(string)
    JSON.parse(string).each do |var, val|
      instance_variable_set var, val
    end
  end
end
