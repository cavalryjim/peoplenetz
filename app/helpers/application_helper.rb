module ApplicationHelper
  
  def display_banner(image = 'other', text = "Turn insight into business as usual")
    image = 'banners/' + image + '.jpg'
    html = '<div class="banner-container"> <div class="container"> <div class="wrap">' 
    html = html + image_tag(image) 
    html = html + '<span class="comment">' + text + '</span>'
    html = html + '</div> </div> </div>'
  end
  
end
