!SLIDE 
# Rails MVC & Model 2
## Model View Controller

!SLIDE  
# Controller
* Interprets request (M2) / user input (MVC)
* Performs logic (M2) / commands model (MVC)
* Passes information to view (M2) / commands view to change (MVC)

!SLIDE  
# Controller
* Returns view's output (M2)
* !(1 to 1 with views (MVC))
* !(communicates with other controllers (MVC))

!SLIDE 
# View
* Receives input from controller (M2)
* Renders output (M2) / (MVC)
* Designed to be nested (MVC)? (partials w/ instance vars? nested layouts?)
* !(triggers controller actions (MVC))
* !(change (over time) based on model (MVC))

!SLIDE 
# Model
* Manages behavior and data (MVC)
* Responds to requests about state (MVC)
* Responds to instructions to change state (MVC)
* Whatever you need it to be (M2)

!SLIDE 
# Rails MVC and Model 2
* Hybrid
* No feedback (one-way flow like model 2)

