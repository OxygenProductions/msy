module ApplicationHelper

  def display_base_errors resource
    return '' if (resource.errors.empty?) or (resource.errors[:base].empty?)
    messages = resource.errors[:base].map { |msg| content_tag(:p, msg) }.join
    html = <<-HTML
    <div class="alert alert-error alert-block">
      <button type="button" class="close" data-dismiss="alert">&#215;</button>
      #{messages}
    </div>
    HTML
    html.html_safe
  end
  
  def url_for_cdn(url)
    url = url.gsub(/https:\/\/markstephensyoga.s3.amazonaws.com/, 'http://dg6lv62o2y57c.cloudfront.net
')
    url_for url
  end

end
