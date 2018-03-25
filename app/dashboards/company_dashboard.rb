class CompanyDashboard < EntityDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = ATTRIBUTE_TYPES.merge({
    founded_year: Field::Number,
    employee_count: Field::Number,
    raised_money: Field::Boolean,
  }).freeze

  company_attributes = [
    :founded_year,
    :employee_count,
    :raised_money,
  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = (SHOW_PAGE_ATTRIBUTES[0...4] + company_attributes + SHOW_PAGE_ATTRIBUTES[4..-1]).freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = (FORM_ATTRIBUTES[0...4] + company_attributes + FORM_ATTRIBUTES[4..-1]).freeze
end
