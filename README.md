# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

```GET http://localhost:3000/v1/companies```

{
    "companies": [
        {
            "name": "MoGo",
            "location": "New York",
            "deleted": false
        },
        {
            "name": "Wirkkle",
            "location": "London",
            "deleted": false
        },
        {
            "name": "BuildEmpire",
            "location": "London",
            "deleted": false
        },
        {
            "name": "Artesis",
            "location": "Saint-Petersburg",
            "deleted": true
        }
    ]
}




```PUT http://localhost:3000/v1/3/mark_deleted```

2-nd time - 
{
    "deleted_company": [],
    "deleted_already": "not_modified"
}


