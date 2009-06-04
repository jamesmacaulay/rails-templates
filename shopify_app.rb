file '.gitignore', <<GITIGNORE
.DS_Store
*.orig
.dotest
*.log
*.sqlite3
GITIGNORE

git :init
git :add => '.', :commit => '-am Rails'

plugin 'shopify_app', :git => 'git://github.com/Shopify/shopify_app'

git :add => '.', :commit => '-am "shopify_app plugin"'

api_key = ask("What is your app's API key?")
secret = ask("What is your app's shared secret?")

generate 'shopify_app', api_key + ' ' + secret

git :add => '.', :commit => '-am "shopify_app generated"'
