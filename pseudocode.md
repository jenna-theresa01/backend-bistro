# Requirements

### Basic Requirements

1. Store the following data in your PostgreSQL database and implement models for the READ only operations for the following data:
    - Menu Items
        - Title
        - Description
        - Price
        - Spicy level
        - FK to Category
        - FK to Cuisine
    - Category (appetizer, dessert, main dish, etc)
    - Cuisine (american, thai, etc)

2. Create endpoints to send JSON data back to get a GET request for a list of all menu items with the category and cuisine labels nested in the data

3. Create routes to use the views created in the previous step

4. Change the URL in the React Restaurant Code to the Gitpod url of your running backend code only. (NOTE: We shouldn't be writing any react code for basic requirements)

#### Example view functions

- /api/meu-items/
    - Read: view fill list of menu item information
- Build more routes as needed for your project if you finish early (Create, Read, Update, Delete)

