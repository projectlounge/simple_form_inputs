class KnobWheelInput < SimpleForm::Inputs::FileInput
  def input
    value = object.send("#{attribute_name}")
    name = "#{object.class.to_s.downcase}[#{attribute_name}]"

    html = template.content_tag :div, class: 'knob-container inline' do
      template.content_tag :input, nil, {name: name, value: value, type: 'text', class:'input-small knob', data: options[:data]}
    end
    html
  end
end
