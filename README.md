# T2A2 - Marketplace Project

R1. Create your app using Ruby on Rails.
// css framework: Bulma 

R2. Use Postgresql database in development and production.
// You can use SQLite in development
// Must use Postgres for production

R3. Your app will have authentication
// Devise

R4. Your app will have authorisation (i.e. users have restrictions on what they can see and edit).
// Pundit

R5. Your app will have some type of file (eg. images) uploading capability.
// Image handling/upload
// Image storage - cloud service: Cloudinary

R6. Your app is to be deployed to Heroku (recommended) or AWS.
// Heroku


DOCUMENTATION:

R7. Identification of the problem you are trying to solve by building this particular marketplace app.
// A food delivery service that:
// supports local standalone food restaurants (no chains)
// capped at a 10km radius in metropolitan Melbourne, to keep it local and to minimise the carbon footprint of delivery
// takes a capped $2 service fee per order, restaurants and delivery drivers receive full profit - to aid local economic and business recovery post-pandemic lockdowns

R8. Why is it a problem that needs solving?

R9. A link (URL) to your deployed app (i.e. website)

R10. GitHub repo:   https://github.com/ejneyland/speedy_feeds_app

R11. Description of your marketplace app (website), including:
    - Purpose
    - Functionality / features
    - Sitemap
    - Screenshots
    - Target audience
    - Tech stack (e.g. html, css, deployment platform, etc)

R12. User Stories

Customer:
- Customer is able to sign up to the platform to create an account using a personal email and password
- Customer is able to browse available restaurants in the area
- Customer is able to view a menu for each restaurant
- Customer is able to view and browse meals on the menu, displaying a title, description and price
- Customer is able to view an image of each menu item

Restaurant (vendor): 
- Vendor is able to sign up to the platform and register their restaurant with the app
- Vendor is able to register their restaurant's details: name and cuisine
- Vendor is able to add menu items to their shop, specifying a title, description and price
- Vendor is able to upload an image for each menu item

R13. Wireframes

R14. LucidChart: ERD

R15. Explain the different high-level components (abstractions) in your app
// Models & Entities

R16. Detail any third party services that your app will use
// Most gems aren't 3rd party services
// Stripe gem - payment system (IS 3rd party)
// Cloudinary - 3rd party
// Heroku - deployment platform - 3rd party

R17. Describe your projects models in terms of the relationships (active record associations) they have with each other

R18. Discuss the database relations to be implemented in your application

R19. Provide your database schema design
// Describe/explain your ERD

R20. Describe the way tasks are allocated and tracked in your project
