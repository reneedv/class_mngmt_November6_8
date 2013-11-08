module StudentsHelper

  def present_full_name(full_name)
    full_name.split.first unless full_name.blank?
  end

end
