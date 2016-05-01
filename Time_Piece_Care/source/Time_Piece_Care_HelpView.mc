using Toybox.WatchUi as Ui;
using Toybox.Graphics as Gfx;
using Toybox.System as Sys;
using Toybox.Lang as Lang;
using Toybox.Communications; 
using Toybox.Position as Pos; 


class Time_Piece_Care_HelpView extends Ui.View{
	
	var placeInfo; 
	
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
    	var gettingHelp = View.findDrawableById("Contact");
        gettingHelp.setText(Rez.Strings.SOS);
        
        Pos.enableLocationEvents(pos.LOCATION_ONE_SHOT, method(:withLocation)); //enableLocationEvents
        
        
        var helpfulInfo = { "a" => Rez.Strings.Dependant, "b" => placeInfo }; //this is not the correct value here.  
        makeJsonRequest("timepiececarse.net/message/send", Rez.Strings.Dependant, 3, method(:responseCallBack)); 
    
    	//may very well be how you do the location 
    	//method(:onPosition)
    }
    
    function withLocation(information)
    {
    	placeInfo = information.toGeoString(Pos.GEO_DMS); 
    }
    
    
    function responseCallBack(responseCode, Data) {
    	View.popView(); 
    }
    

    //! Update the view
    function onUpdate(dc) {
    	
        // Call the parent onUpdate function to redraw the layout
        View.onUpdate(dc);
    }

    //! Called when this View is removed from the screen. Save the
    //! state of this View here. This includes freeing resources from
    //! memory.
    function onHide() {
    
    
    }

}