The classes contained are necessary to implement the functionalities.

Model folder 
-> It helps in creating a model for each object housing its neccessary details
    ->Product.dart : model object creation class

Screens folder
-> Decides what all should be displayed on screen
    Details folder
    ->details_screen.dart       : builds the basic details screen, with an appBar, background Color and body
    
    Component folder
    Houses the definition of the UI buttons and their linking
        ->add_to_cart.dart              : defines the add to cart button with an svg image
        ->cart_counter_dart             : defines a counter to house the number of objects purhcased 
        ->color_and_size.dart           : color pickers for selected products
        ->counter_with_fav_btn.dart     : Invokes the counter.dart file, and adds the option for registring the item as a favorite
        ->description.dart              : the basic description of the item in context
        ->product_title_with_image.dart : hold a products name, with an image and its price

        ->body.dart                     : links all the defined buttons in the same segment   
        

->constants.dart : Defines a set of constants that are in use throughout the code

Embedded constants
TextColor       : Light Black
LightTextColor  : Silver
Default Padding : 20 px