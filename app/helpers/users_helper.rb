module UsersHelper
  def sortable(column, title=nil)
    title ||= column.titleize
    direction = direction_for_column(column)
    css_class = (column == sort_column) ? "current #{direction}" : nil
    link_to(title, {sort: column, direction: direction}) +
      content_tag(:span, '', class: css_class)
  end

  def auto_complete_for(column)
    form_for users_path, method: :get do
      autocomplete_field_tag column, '', "/users/autocomplete_user_#{column}", size: 15
    end
  end

  private

  def direction_for_column(column)
    (column == sort_column && sort_direction == 'asc') ?
      'desc' : 'asc'
  end
end
