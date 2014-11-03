class LazyAssociationsInput < SimpleForm::Inputs::FileInput
  def input
    assoc = object.send("#{attribute_name}")
    value = assoc.present? ? assoc.id : ''
    name = "#{object.class.to_s.downcase}[#{attribute_name}_id]"
    template.text_field_tag name, value, class: 'select2_lazy'
  end
end
