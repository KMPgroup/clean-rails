class AbstractResult < SimpleDelegator
  protected
  def assign_instance_var(name, val)
    __getobj__.instance_variable_set name, val
  end
end