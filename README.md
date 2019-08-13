# README

https://kt-messageme.herokuapp.com/


```bash
ruby -v 
ruby 2.5.5p157 

rails -v
Rails 5.2.3

gem 'semantic-ui-sass'
```
![](https://i.imgur.com/NUyFg1c.png) <br/>
I haven't learned RubyonRails quite well. <br/>
That's why I wasn't able to solve Action_cable(Web socketting) problem in Production.<br/>
You have to refresh page to see new messages in production<br/>
But It works on local machine
```bash
git clone https://github.com/oraykt/MessageMe.git
cd MessageMe
rails db:migrate
bundle install --without production
rails s
```

![](https://i.imgur.com/pspdd1J.png)
![](https://i.imgur.com/qSAa6t3.png)
![](https://i.imgur.com/Y33nxwy.png)