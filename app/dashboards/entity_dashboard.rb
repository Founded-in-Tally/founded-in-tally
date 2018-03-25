require "administrate/base_dashboard"

class EntityDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    entity_categories: Field::HasMany,
    categories: Field::HasMany,
    entity_stages: Field::HasMany,
    stages: Field::HasMany,
    id: Field::Number,
    type: Field::String,
    name: Field::String,
    description: Field::String,
    url: Field::String,
    logo: Field::String,
    status: Field::String,
    address_street: Field::String,
    address_city: Field::String,
    address_state: Field::String,
    address_zip: Field::String,
    point_of_contact_name: Field::String,
    point_of_contact_email: Field::String,
    point_of_contact_phone: Field::String,
    facebook: Field::String,
    twitter: Field::String,
    instagram: Field::String,
    linked_in: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :name,
    :type,
    :description,
    :categories,
    :stages,
    :status,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :name,
    :type,
    :description,
    :url,
    :logo,
    :address_street,
    :address_city,
    :address_state,
    :address_zip,
    :point_of_contact_name,
    :point_of_contact_email,
    :point_of_contact_phone,
    :facebook,
    :twitter,
    :instagram,
    :linked_in,
    :categories,
    :stages,
    :status,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :name,
    :description,
    :url,
    :logo,
    :address_street,
    :address_city,
    :address_state,
    :address_zip,
    :point_of_contact_name,
    :point_of_contact_email,
    :point_of_contact_phone,
    :facebook,
    :twitter,
    :instagram,
    :linked_in,
    :categories,
    :stages,
    :status,
  ].freeze

  # Overwrite this method to customize how companies are displayed
  # across all pages of the admin dashboard.

  def display_resource(entity)
    entity.name
  end
end
