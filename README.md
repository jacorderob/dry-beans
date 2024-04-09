# README

## Technology Versions

- Ruby: 3.0.3
- Rails: 7.0.0

## Route Delivery Information

The information saved and showed about a trip task is the following:

- **Kind:** it shows if it is a delivery or a pickup.
- **Address:** address of where the pickup or delivery was made inside of the route.
- **Addressee Name:** name of the person that will receive or give back the package.
- **Content:** package to be delivered/picked up
- **Completed:** boolean representing weather the task was completed or not.
- **Completion Time:** time and date on which the task was completed
- **Estimated Arrival:** estimated date and time on which the content is expected to be delivered or picked up
- **Message:** optional message for the task, to inform any inconveniences or problems with the package, the location or the addressee.

## Gems added:

- Annotate (v3.0.2): add schema information to describe model tables in the necessary files.
- Byebug (v9.0): easy to use tool to debug features and tests placing breakpoints.
- Rubocop (v1.62): linter tool to help developers keep clean code and best practices.
- Jbuilder (v2.11.5): rails gem used to easily build the json responses for the API.

## Notes for future development:

- Add start and end points of the routes.
- Create a model of Address for the tasks, and assossiate them to the route they belong to.
- Validate task estimated times, they should always be after the task's trip's scheduled time.
- Allow creation of routes, and to directly create trips inside routes and tasks inside trips.
- Tests can be perfected and coverage can be higher
- Content of a task should be a model as well
- Users can be added as models to be able to relate them as addressees or resposibles (trip conductors)
