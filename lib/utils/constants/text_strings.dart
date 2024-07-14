class TextStrings {
  TextStrings._();

  // Onboarding Texts
  static const String onBoardingTitle1 = "Choose your product";
  static const String onBoardingTitle2 = "Select payment method";
  static const String onBoardingTitle3 = "Deliver at your door step";

  static const String onBoardingSubTitle1 =
      "Welcome to a World of Limitless Choices - Your Perfect Product Awaits!";
  static const String onBoardingSubTitle2 =
      "For Seamless Transactions, Choose Your Payment Path - Your Convenience, Our Priority!";
  static const String onBoardingSubTitle3 =
      "From Our Doorstep to Yours - Swift, Secure, and Contactless Delivery!";

  // Authentication Form Text
  static const String firstName = "First Name";
  static const String lastName = "Last Name";
  static const String email = "E-Mail";
  static const String password = "Password";
  static const String newPassword = "New Password";
  static const String username = "Username";
  static const String phoneNumber = "Phone Number";
  static const String rememberMe = "Remember Me";
  static const String forgetPassword = "Forget Password?";
  static const String signIn = "Sign In";
  static const String createAccount = "Create Account";
  static const String orSignInWith = "or sign in with";
  static const String orSignUpWith = "or sign up with";
  static const String iAgreeTo = "I agree to ";
  static const String privacyPolicy = "Privacy Policy";
  static const String termsOfUse = "Terms of use";
  static const String verificationCode = "verification code";
  static const String resendEmail = "Resend Email";
  static const String resendEmailIn = "Resend email in";
  static const String and = " and ";
  static const String submit = "Submit";
  static const String done = "Done";

  // Authentication Headings Text
  static const String loginTitle = "Welcome back,";
  static const String loginSubTitle = "Discover limitless choices and unmatched convenience.";
  static const String signUpTitle = "Let's create your account";
  static const String forgetPasswordTitle = "Forget password";
  static const String forgetPasswordSubTitle =
      "Don't worry sometimes people can forget too. Enter your email and we will send you a password reset link.";
  static const String changeYourPasswordTitle = "Password resent email sent";
  static const String changeYourPasswordSubTitle =
      "Your account security is our priority! We've sent you a secured link to safely change your password and keep your account protected.";
  static const String confirmEmailTitle = "Verify your email address!";
  static const String confirmEmailSubTitle =
      "Congratulations! Your account awaits. Verify your email to start shopping and experience a world of unrivaled deals and personalized offers.";
  static const String emailNotReceivedMessage =
      "Didn't get the email? Check your junk/spam or resend it.";
  static const String yourAccountCreatedTitle = "Your account successfully created!";
  static const String yourAccountCreatedSubTitle =
      "Welcome to your ultimate shopping destination. Your account is created, unleash the joy of seamless online shopping.";
  static const String continueText = "Continue";
  static const String forgotPasswordTitle = "Forget Password";
  static const String forgotPasswordSubTitle =
      "Don't worry sometimes people can forget too. Enter your email and we will send you a password reset link.";
  static const String myEmailAddress = "emmaahuno@gmail.com";
  static const String myUsername = "dee_manuel_bongo";

  // Home
  static const String homeAppBarTitle = "Good day for shopping";
  static const String myFullName = "Manuel Ahuno";
  static const String searchInStore = "Search in store";
  static const String popularCategories = "Popular Categories";
  static const String popularProducts = "Popular Products";
  static const String viewAll = "View all";

  static String numberOfProducts(int products) {
    if (products == 1) {
      return "$products product";
    } else if (products > 1) {
      return "$products products";
    } else {
      return "No products";
    }
  }

  // Bottom Navigation Bar
  static const String home = "Home";
  static const String store = "Store";
  static const String wishlist = "Wishlist";
  static const String profile = "Profile";

  // Categories
  static const String shoes = "Shoes";

  // Products
  static const String product1 = "Green Nike Air Shoes";

  // Brands
  static const String nike = "Nike";

  // Store
  static const String featuredBrands = "Featured Brands";
  static const String sports = "Sports";
  static const String furniture = "Furniture";
  static const String electronics = "Electronics";
  static const String clothes = "Clothes";
  static const String cosmetics = "Cosmetics";
  static const String youMightLike = "You might like";

  // Personalization
  static const String account = "Account";
  static const String accountSettings = "Account Settings";
  static const String appSettings = "App Settings";
  static const String myAddresses = "My Addresses";
  static const String myAddressesSubTitle = "Set shopping delivery address";
  static const String myCart = "My Cart";
  static const String myCartSubTitle = "Add, remove products, and move to checkout";
  static const String myOrders = "My Orders";
  static const String myOrdersSubTitle = "In-progress and completed orders";
  static const String myBankAccount = "Bank Account";
  static const String myBankAccountSubTitle = "Withdraw balance to registered bank account";
  static const String myCoupons = "My Coupons";
  static const String myCouponsSubTitle = "List of all the discounted coupons";
  static const String notifications = "Notifications";
  static const String notificationsSubTitle = "Set any kind of notification message";
  static const String accountPrivacy = "Account Privacy";
  static const String accountPrivacySubTitle = "Manage data usage and connected accounts";
  static const String loadData = "Load Data";
  static const String loadDataSubTitle = "Load data to your Cloud Firebase";
  static const String geolocation = "Geolocation";
  static const String geolocationSubTitle = "Set recommendation based on location";
  static const String safeMode = "Safe Mode";
  static const String safeModeSubTitle = "Search result is safer for all ages";
  static const String hdImageQuality = "HD Image Quality";
  static const String hdImageQualitySubTitle = "Set image quality to be seen";
  static const String logout = "Logout";
  static const String changeProfilePicture = "Change Profile Picture";
  static const String profileInformation = "Profile Information";
  static const String personalInformation = "Personal Information";
  static const String name = "Name";
  static const String userId = "User ID";
  static const String myUserId = "45689";
  static const String gender = "Gender";
  static const String myGender = "Male";
  static const String dateOfBirth = "Date of Birth";
  static const String myDateOfBirth = "10 Oct, 1994";
  static const String myPhoneNumber = "+923329121290";
  static const String closeAccount = "Close Account";

  // Product Details
  static const String stock = "Stock : ";
  static const String status = "Status : ";
  static const String inStock = "In Stock";
  static const String variation = "Variation";
  static const String price = "Price : ";
  static const String variationDescription =
      "This is the product description and it can go up to max 4 lines";
  static const String productDescription =
      "This is a product description for Blue Nike Sleeveless vest. There are more things that can be added but i am just practicing and nothing else.";
  static const String colors = "Colors";
  static const String size = "Size";
  static const String checkout = "Checkout";
  static const String description = "Description";
  static const String showMore = "Show more";
  static const String less = "Less";
  static const String addToBag = "Add to bag";
}
