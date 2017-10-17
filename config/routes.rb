Rails.application.routes.draw do

  root  'static_pages#home'

  get   '/:code',     to: 'links#forward'

end
