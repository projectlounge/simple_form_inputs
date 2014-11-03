class MultipleTagsInput < SimpleForm::Inputs::FileInput
  def input
    value = if object.send("#{attribute_name}?")
      object.send(attribute_name).join( ', ')
    else
      ''
    end
    id = "#{object.class.to_s.downcase}_#{attribute_name}"
    tags_input_id = "tags_input_#{id}"
    tags_container_input_id = "tags_container_input_#{id}"
    name = "#{object.class.to_s.downcase}[#{attribute_name}][]"
    tags_input = template.text_field_tag( "#{id}_input", value, id: tags_input_id, class: 'string optional form-control')
    tags_container_input = template.hidden_field_tag( name, value, id: tags_container_input_id, class: 'multiple_tags')

    tags_initializer = template.javascript_tag <<-SCRIPT
      $(function() {
        $('##{tags_input_id}').tagsManager({
            output: '##{tags_container_input_id}'
          });
      });
    SCRIPT

    [tags_input, tags_initializer, tags_container_input].join ' '
  end
end
