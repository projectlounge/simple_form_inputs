class RelationshipInput < SimpleForm::Inputs::TextInput
  def input
    @builder.select attribute_name, [ "Married", "Single", "Complicated", "Married but a creep", "In a relationship", "Forever Single"], {}, class: 'select2 optional'
  end
end
