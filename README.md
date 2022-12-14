## Main features

- [x] Homepage (display popular products and recommended products)
- [x] Shopping Cart (a real shopping cart where items can be added and removed dynamically)
- [x] Local cart history page
- [x] Server cart history page
- [x] Login and register (register with mobile phone)
- [x] Info page
- [x] Popular Foods Page (view popular foods, add or remove items from cart)
- [x] Recommended foods page (view recommended foods, add or remove from cart)
- [x] Order more features (added features to help you order)
- [x] Order more features (added features to help you order)
- [x] Create new items (backend you can create new food items)
- [x] Display user information and order in backend
- [ ] Address page
- [ ] Google Maps function 
- [ ] Paypal payment 

## State management

This mainly based on the flutter Getx package. Use the Getx package to manage the state and routing of the application and also use Getx as an api client.


### Home Page

The home page displays food categories. You can click it and go to a new page to view the food and add to cart.

![homepage](https://user-images.githubusercontent.com/90837134/203029696-c21c834d-9667-4088-bea3-0f03ce7d95dd.png)

### Recommended Food Page

This page is from the home page where you can add items to your cart. Introductory text about food is collapsible. It also displays product prices. You can add items to your cart.

![recommended](https://user-images.githubusercontent.com/90837134/203030220-89f78c03-8574-471e-b937-6663653fe4fa.png)

### Popular Food Page

This page is from the home page where you can add items to your cart. Text about food is collapsible. It also displays product prices. You can add items to your cart.

![popular](https://user-images.githubusercontent.com/90837134/203030298-0c389ba1-85fb-4ed9-bfbf-64c30770d221.png)

### Cart Page

Place order on this page. You can also add or remove items from your shopping cart. You'll also see changes to the total price as you add or remove. This page is dynamic as it removes and adds items as the user clicks.

![shopcart](https://user-images.githubusercontent.com/90837134/203030755-3285b3a6-d472-489c-9b14-e5eec2639f8b.png)

### Hisory Page
History Pages.Saved on the device itself. You can reorder the items you ordered.

![圖片](https://user-images.githubusercontent.com/90837134/205107458-ef987532-96ab-4e82-9d42-cde48bad9c88.png)

### Sign up Page
Sign up with your auth. After registration, the information is submitted to the database and a token is generated for the user. This token is used for authentication.

![圖片](https://user-images.githubusercontent.com/90837134/205106957-98006086-c97a-4125-9045-2d13146f269e.png)

### Sign in Page
Login with your registrated phone. Account information is matched against your credentials on the backend using a token

![圖片](https://user-images.githubusercontent.com/90837134/205107075-065e2d68-63b9-4772-92cc-bea9ec74f9a5.png)

### Info Page
Your personal information is here. Here address could be updated.

![圖片](https://user-images.githubusercontent.com/90837134/205107595-09390a94-4324-4939-a236-e331908701b6.png)



