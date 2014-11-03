class OnOffInput < SimpleForm::Inputs::BooleanInput
  def input
    value = object.send(attribute_name)
    name = "#{object.class.to_s.downcase}[#{attribute_name}]"
    template.check_box_tag(name, '1', value, class: 'ace ace-switch ace-switch-5') + template.content_tag(:span, '', class: 'lbl')
  end
end
