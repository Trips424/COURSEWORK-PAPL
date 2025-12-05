This project is a Flutter-based shopping interface for the fictional University of Portsmouth Students’ Union Shop (UPSU Shop).
It contains a fully navigable e-commerce UI including:

Dynamic collections (Hoodies, T-Shirts, Accessories)

Clickable product lists that filter by category

Dedicated product detail pages

Global navbar

Footer at bottom of scroll layout

Cart system (WIP)

Responsive GridViews for mobile and desktop

🎯 Learning Outcomes Demonstrated

✔ Data-driven UI
✔ Stateful navigation & routing
✔ Responsive layout and adaptive UI
✔ Clean widget composition and reusable components
✔ Software engineering code quality + commit discipline

🧭 Project Structure (Simplified)
lib/
│
├── main.dart                 # Routing + navigation
│
├── widgets/
│   └── top_navbar.dart       # Global top navigation
│
├── pages/
│   ├── collections_page.dart          # Shows Hoodie/T-Shirt/Accessories
│   ├── collection_products_page.dart  # Shows filtered products
│   ├── product_page.dart              # Single product view
│   ├── shop_page.dart                 # Full shop list
│
├── services/
│   └── cart_service.dart     # Singleton cart manager
│
├── models/
│   └── cart_item.dart        # Cart item structure
│
└── footer.dart               # Shared footer across all pages

🖥 Screens Explained
🟦 1) Collections Page

Displays the 3 main categories:

Hoodies

T-Shirts

Accessories

Tapping one filters products.

📷 Screenshot Placeholder
/screenshots/collections_view.png

🟦 2) CollectionProductsPage

Dynamically displays products belonging to the selected collection.

📷 Screenshot Placeholder
/screenshots/hoodies_filtered.png
/screenshots/tshirts_filtered.png

🟦 3) Product Page

Displays:

Product image

Title

Price

Description

“Add to Cart” button

📷 Screenshot Placeholder
/screenshots/product_page.png

🟦 4) Cart System (in progress)

Data flow:

ProductPage → CartService → CartPage (future)


📷 Placeholder (to be added after implementation)
/screenshots/cart_page.png

🔁 Navigation Flow
Home → CollectionsPage → CollectionProductsPage → ProductPage

⚙ Responsive Behaviour

Mobile: 1 item per row

Desktop/tablet: 2 items per row
Handled via MediaQuery.of(context).size.width.

📷 Screenshot Placeholder
/screenshots/responsive_display.png

💼 Coursework Notes

This project exhibits:

Modular code structure

Consistent UI

Version-controlled commits that demonstrate incremental feature implementation

Dynamic data-driven UI rendering

Reusable components (Navbar, Footer)

🪜 Development steps (in commits)

Notable milestones committed to GitHub:

Implemented responsive grid

Added structured product data model

Created reusable navbar/footer layout

Added product routing & navigation

Added cart service singleton

Improved UX with card designs

🔧 Local Setup Instructions
Requirements

Flutter SDK installed

Android Studio or VSCode with Flutter plugin

Chrome (for web build)

Running the App:
flutter pub get
flutter run

📦 Dependencies Used
Package	Purpose
Flutter Material	UI Widgets
Navigator	In-app navigation
MediaQuery	Responsive layout
Stateless/Stateful Widgets	UI structure
🛠 Future Enhancements

Cart page UI

Checkout flow

Search bar functionality

Filtering & sorting options

Quantity selector on ProductPage

🏆 Coursework Evidence Extras

Recommended screenshots folder:

/screenshots/


🤝 Credits

Developed by:

Udit Tripathy

Flutter Coursework Submission
University of Portsmouth (UPSU branding only for academic demonstration)
