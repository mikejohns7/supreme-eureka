Rails.application.routes.draw do

  root  'static_pages#home'

  get   '/:string',     to: 'links#forward'

end
