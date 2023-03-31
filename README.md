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



Story 2: In order to track wildlife sightings, as a user of the API, I need to manage animal sightings.

Branch: sighting-crud-actions

Acceptance Criteria

[✅] Create a resource for animal sightings with the following information: latitude, longitude, date
Hint: An animal has_many sightings (rails g resource Sighting animal_id:integer ...)
Hint: Date is written in Active Record as yyyy-mm-dd (“2022-07-28")
`rails g resource Sighting latitude:float longitude:float date:string animal_id:integer`
Removed View folder
`rm -r app/views/sightings`
Added 2 instances in the Sighting table
-Too many commands to type

[✅] Can create a new animal sighting in the database
-Create method written in controller, verified new instance created in Postman with a Post request to the url: localhost:3000/sightings

[✅] Can update an existing animal sighting in the database
-Update method written in controller, verified a single intance could be updated in Postman with a Patch request to the url: localhost:3000/sightings/1

[✅] Can remove an animal sighting in the database
-Destroy method written in controller, verified a single instance could be destroyed in Postman with a Delete request to the url: localhost:3000/sightings/1



Story 3: In order to see the wildlife sightings, as a user of the API, I need to run reports on animal sightings.

Branch: animal-sightings-reports

Acceptance Criteria

[✅] Can see one animal with all its associated sightings
Hint: Checkout this example on how to include associated records
-Edited show method in sightings controller to include animal model. Verified nested models in Postman with a Get request to the url: localhost:3000/sightings/1

[✅] Can see all the all sightings during a given time period
Hint: Your controller can use a range to look like this:
class SightingsController < ApplicationController
  def index
    sightings = Sighting.where(date: params[:start_date]..params[:end_date])
    render json: sightings
  end
end
Hint: Be sure to add the start_date and end_date to what is permitted in your strong parameters method
Hint: Utilize the params section in Postman to ease the developer experience
Hint: Routes with params
-Edited index method in sightings controller to include a Date range. Added additional params, start_date and end_date. Added params into strong params method. 
-Added an additional route in the routes.rb for a route with two params(start_date, end_date)
-Verified data output in Postman with a Get request to the url: localhost:3000/sightings/2023-03-30/2023-05-30


Stretch Challenges
Story 4: In order to see the wildlife sightings contain valid data, as a user of the API, I need to include proper specs.

Branch: animal-sightings-specs

Acceptance Criteria
Validations will require specs in spec/models and the controller methods will require specs in spec/requests.

Can see validation errors if an animal doesn't include a common name and scientific binomial

Can see validation errors if a sighting doesn't include latitude, longitude, or a date

Can see a validation error if an animal's common name exactly matches the scientific binomial

Can see a validation error if the animal's common name and scientific binomial are not unique

Can see a status code of 422 when a post request can not be completed because of validation errors
Hint: Handling Errors in an API Application the Rails Way
