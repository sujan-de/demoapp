1. Install rvm for ruby version management( ignore if alreadey installed). This is the link for installing rvm -- [https://rvm.io/rvm/install]. For ubuntu use this link -- [https://github.com/rvm/ubuntu_rvm] .
2. Install ruby version 2.5.1, run ```rvm install ruby-2.5.1```.
3. Create a separate gemset for this project using ```rvm gemset create demoapp```. Then run ```rvm gemset use demoapp```.
4. Then run ```bundle install```.
5. Then edit the config/database.yml file by changing the ``username, password`` with your ``mysql user_name  & password`` respectively.
6. Then run ``rake db:create && rake db:migrate``.
7. Then run ``rake db:seed``.
8. Then start the server, run ``rails s`` and check in browser.
