module ApplicationHelper
  
  def display_banner(image = 'other')
    image = 'banners/' + image + '.jpg'
    html = '<div class="banner-container"> <div class="container">' + image_tag(image) + '</div> </div>'
  end
  
end
