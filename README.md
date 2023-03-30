Wildlife Tracker Challenge
The Forest Service is considering a proposal to place in conservancy a forest of virgin Douglas fir just outside of Portland, Oregon. Before they give the go ahead, they need to do an environmental impact study. They've asked you to build an API the rangers can use to report wildlife sightings.

Story 1: In order to track wildlife sightings, as a user of the API, I need to manage animals.

Branch: animal-crud-actions

Acceptance Criteria

[✅] Create a resource for animal with the following information: common name and scientific binomial
`rails g resource Animal common_name:string scientific_binomial:string`
Removed View folder
`rm -r app/views/animals`
Added 4 instances in the Animal table
-Too many commands to type

[✅] Can see the data response of all the animals
-Index method written in controller, verified all data present in Postman with a Get request to the url: localhost:3000/animals
-Added show method in controller, verified single instance data present in Postman with a Get request to the url: localhost:3000/animals/4

[✅] Can create a new animal in the database
-Create method written in controller, verified new instance created in Postman with a Post request to the url: localhost:3000/aninmals

[✅] Can update an existing animal in the database
-Update method written in controller, verified a single intance could be updated in Postman with a Patch request to the url: localhost:3000/animals/5

[✅] Can remove an animal entry in the database
-Destroy method written in controller, verified a single instance could be destroyed in Postman with a Delete request to the url: localhost:3000/animals/5