class GenderInput < SimpleForm::Inputs::TextInput
  GENDER_NOT_SET = 'Not Set'
  BOTH_LABEL = "Both Genders"
  MALE_LABEL = "Male"
  FEMALE_LABEL = "Female"
  DEFAULT_LABELS = [ MALE_LABEL, FEMALE_LABEL, BOTH_LABEL]
  GENDER_LABELS = [ MALE_LABEL, FEMALE_LABEL]

  def input
    @builder.select attribute_name, options[:gender_labels] || DEFAULT_LABELS, { include_blank: false, :prompt => "Please select gender" }, class: 'select2 optional'
  end
end
