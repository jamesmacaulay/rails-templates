file '.gitignore', <<GITIGNORE
.DS_Store
*.orig
.dotest
*.log
*.sqlite3

config/shopify.yml
GITIGNORE

git :init

plugin 'shopify_app', :git => 'git://github.com/Shopify/shopify_app'

api_key = ask("What is your app's API key?")
secret = ask("What is your app's shared secret?")

generate 'shopify_app', api_key + ' ' + secret

git :add => '.', :commit => '-am "fresh shopify_app generated"'
