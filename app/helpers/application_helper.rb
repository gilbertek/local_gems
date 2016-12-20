module ApplicationHelper
  def default_title
    'Local Gems::Find and share treasures in your neighborhood.'
  end

  def default_meta_description
    'Local Gems::Find and share treasures in your neighborhood.'
  end

  def nav_link(text, path, condition = false, options = {})
    class_name = (current_page?(path) || condition) ? 'active' : ''

    content_tag(:li, class: class_name) do
      options[:title] = text unless options.key?(:title)
      link_to text, path, options
    end
  end

  def body_class
    controller_name = controller.controller_path.tr('/', '-')
    "#{controller_name} #{controller_name}-#{controller.action_name}"
  end

  def meta_description(description)
    return '' if description.blank?
    description = strip_tags(description).split[0...80].join(' ')
    content_for(:meta_description) { description.to_s }
  end

  def title
    content_for(:title) { "#{page_title} : #{default_title}" }
  end

  def mail_to_support
    mail_to('support@.localgems.io')
  end
end
