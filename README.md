# うどん口コミサイト（になる予定）

Deveopment
---

1. clone this repository
1. `mysql.server start` or `sudo service mysql start`
1. `bundle install`
1. `npm install`
1. `bundle exec rake db:create`
1. `bundle exec rake db:migrate`
1. `bundle exec foreman start -f Procfile`

Running webpack dev server and rails server.

Access to `http://localhost:3000`

Environment
---

* frontend
  * `react` ~> 15.0
  * `node` ~> 6.6.0

* backend
  * `ruby` ~> 2.3.1
  * `rails` ~> 5.0
  * `mysql` ~> 14.14

API Document
---

- `bundle exec rake swagger:docs` : Generate mock api and document data.
- `bundle exec rails server -p 3000` : Boot up server.
- Please accses to `http://localhost:3000/api`

LISENCE
---
* MIT : MaxMEllon (Kento TSUJI) `<maxmellon1994@gmail.com>`
