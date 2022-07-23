class StrongTitleValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    record.errors.add(attribute ,"invalid") unless value.size > 9
  end
end
