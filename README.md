
# Carry1stAssessment

Welcome to the guide for our eCommerce app! This app is a simple prototype built using Swift and SwiftUI. It demonstrates a product listing, detailed product views, and cart functionality. Below, you’ll find everything you need to understand the project, its usage, and why certain decisions were made.

Project Overview
This app includes three main features:

Product Listing
Displays a list of products fetched from a mock API.
Shows product images, names, and prices.
Allows you to tap on a product to view more details.

Product Details
Displays detailed information about the selected product (image, name, price, and description).
Includes buttons for Add to Cart and Buy Now.
The app updates the cart badge dynamically when items are added.

Cart
Tracks added items.
Shows a badge with the item count.
Allows removing items from the cart.

How to Run the App
Requirements:
Xcode (latest version recommended).
An active internet connection (for API calls).
Steps:
Clone the repository:
bash
Copy code
git clone <repository_url>
Open the .xcodeproj file in Xcode.
Build and run the project using a simulator or a connected device.

How to Use the App
Start the App:

The app opens on the Product Listing Page.
Products are displayed with their image, name, and price.
View Product Details:

Tap a product to open its detail page.
See its image, description, price, and action buttons.

Add to Cart:
Tap Add to Cart on the detail page.
Check the cart badge on the main screen to see the updated item count.

Manage Cart:
Go to the cart to see added products.
Swipe to delete items from the cart.
Click the trash icon to delete items from the cart.

Project Structure
The app follows a simple modular architecture:

Models: Define data structures like Product and Order.
Views: Handle all UI components using SwiftUI.
ViewModels: Manage the logic and state of the app.
Network Manager: Handle API interactions.

Dependencies & Libraries
SwiftUI:
Primary framework for creating the user interface.
Chosen for its declarative syntax and modern approach to building apps.

Assumptions
API Data:

The mock API contains valid product data in the expected format.
No pagination or authentication is required.

Cart State:
The cart is stored in memory and resets when the app is closed.

Design Focus:
Prioritizes functionality over detailed UI design.
Performance Optimizations

Image Loading:
Used cache object for asynchronous image downloading and caching.

State Management:
Leveraged @StateObject and @EnvironmentObject to optimize re-renders.

List Rendering:
Implemented ForEach with identifiable models for smooth scrolling.
Future Enhancements

Persistent Cart:
Use CoreData or UserDefaults to save cart items between sessions.

Error Handling:
Display user-friendly error messages for API issues or no internet.

UI Improvements:
Add animations and improve styling for a polished experience.

Testing
Unit Tests:

Tested adding to cart,
Tested deleting from cart,
Tested total price of items.

Tests Improvements
API calls and cart functionality.
Mocked API responses for reliable testing

Closing Notes
This prototype serves as a functional demo of an eCommerce platform, showcasing essential features like listing, details, and cart management. It’s designed to be a starting point for further development and refinement.

Happy coding! 🚀

![WhatsApp Image 2024-12-03 at 03 14 16](https://github.com/user-attachments/assets/031d2324-da38-4144-bcd9-c4d0a939e3ea)
![WhatsApp Image 2024-12-03 at 03 13 36](https://github.com/user-attachments/assets/dca054c1-9da1-4f72-928b-9873e4a58b5a)
![WhatsApp Image 2024-12-03 at 03 13 56](https://github.com/user-attachments/assets/d62f918e-9322-49f8-884e-daf731813922)

![WhatsApp Image 2024-12-03 at 03 07 46](https://github.com/user-attachments/assets/529aaf9a-dbab-44ed-b6f4-42682eb4c9b2)
![WhatsApp Image 2024-12-03 at 03 08 10](https://github.com/user-attachments/assets/1024ec7b-50de-45e5-92d8-e27fc487e0f1)
![WhatsApp Image 2024-12-03 at 03 08 45](https://github.com/user-attachments/assets/36402472-ea2e-444e-aafb-640795c2dcc8)
