module UsersHelper
  def sortable(column, title = nil)
    title ||= column.titleize
    direction = direction_for_column(column)
    css_class = (column == sort_column) ?
        "current #{sort_direction}" : nil
    link_to(title, {sort: column, direction: direction}) +
        content_tag(:span, '', class: css_class)
  end

  private
  def direction_for_column(column)
    (column == params[:sort] && params[:direction] == 'asc') ?
        'desc' : 'asc'
  end

  def sort_direction
    %w(asc desc).include?(params[:direction]) ?
        params[:direction] : 'asc'
  end

  def sort_column
    User.column_names.include?(params[:sort]) ?
        params[:sort] : 'first_name'
  end

end
