# Default app

A simple bootstrap for initial rails apps with facebook social login, devise, responders, fontawesome, postgresql, bootstrap_form_for and more.
Translated to pt-BR  (rails,devise and responders), locale and time

### To install
```
bundle install
rake db:create
rake db:migrate
```

#### Helpers for messagens erros
Use error_messages(@modelname) for handle erros.
```
<%= bootstrap_form_for([:admin, @course, @concept]) do |f| %>
<%= error_messages(@concept) %>
<% end %>
```


Admin sys use a container_brand to get icons in fontawesome(bootstrap also avaliable)
``````
def container_brand(model)
  case model
  when 'university'
    icon('university fa-lg')
  end
end
``````
#### Use figaro to handle environments variables.
```
figaro install
```
Example enviroment variable by figaro (default/config/application.yml)
```
development:
  FACEBOOK_KEY: '1523140284244'
  FACEBOOK_PASS: c63b1930eesdxccxec72ef17a
  SEND_GRID_USER: useruser
  SEND_GRID_PASSWORD: '5dsa1qwe1qXXRa'
```
