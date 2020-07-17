class DemoController < ApplicationController

  def index
    # render(plain: "Just render text.")
    #
    # render(html: "<strong>HTML text</strong>")
    #
    # render(json: Subject.first)
    #
    # render(xml: ['dog', 'cat', 'mouse'])
    #
    # render(plain: 'OK', status: 200)
    #
    # render(file: "#{Rails.root}/public/404.html")
    #
    # send_file("#{Rails.root}/public/404.html")
    #
    # string = render_to_string(file: "#{Rails.root}/public/404.html")
    # logger.debug(string)


    # render('index')
  end

  def about
    render('about_us')
  end

  def contact
    if ['us', 'ca'].include?(params[:country])
      @phone = '(800) 555-6789'
    elsif params[:country] == 'uk'
      @phone = '(020) 7946 1234'
    else
      @phone = '+1 (987) 654-3210'
    end
    render('contact_us')
  end

end
