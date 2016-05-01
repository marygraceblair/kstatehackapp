using Toybox.WatchUi as Ui;
using Toybox.Graphics as Gfx;
using Toybox.System as Sys;
using Toybox.Lang as Lang;



class Time_Piece_Care_MeView extends Ui.View {

    function initialize() {
        View.initialize();
    }

    //! Load your resources here
    function onLayout(dc) {
        setLayout(Rez.Layouts.MainLayout(dc));
    }

    //! Called when this View is brought to the foreground. Restore
    //! the state of this View and prepare it to be shown. This includes
    //! loading resources into memory.
    function onShow() {
    }

    //! Update the view
    function onUpdate(dc) {
    	var dependantView = View.findDrawableById("DependantLabel"); 
    	var streetView = View.findDrawableById("StreetLabel"); 
    	var cityView = View.findDrawableById("CityLabel");
    	var stateView = View.findDrawableById("StateLabel");
    	
    	streetView.setText(Rez.Strings.street); 
    	cityView.setText(Rez.Strings.city); 
    	stateView.setText(Rez.Strings.state); 
    	
    	var myPhoneNumberView = View.findDrawableById("MyPhoneNumberLabel"); 
    	myPhoneNumberView.setText(Rez.Strings.myPhoneNumber);
    	var myContactView = View.findDrawableById("MyContactLabel"); 
    	myContactView.setText(Rez.Strings.phone); 
    	
    	
    	
    	
    	dependantView.setText(Rez.Strings.dependantName); 
    	
        // Call the parent onUpdate function to redraw the layout
        View.onUpdate(dc);
    }

    //! Called when this View is removed from the screen. Save the
    //! state of this View here. This includes freeing resources from
    //! memory.
    function onHide() {
    }
    
    
    

}
