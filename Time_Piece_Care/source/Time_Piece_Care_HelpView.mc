using Toybox.WatchUi as Ui;
using Toybox.Graphics as Gfx;
using Toybox.System as Sys;
using Toybox.Lang as Lang;
using Toybox.Communications as Com; 
using Toybox.Position as Pos; 
using Toybox.Application as App;

class Time_Piece_Care_HelpView extends Ui.View{
	
	var placeInfo = "generating GPS data"; 
	
    	
	function initialize() {
        View.initialize();
    }

    //! Load your resources here
    function onLayout(dc) {
        setLayout(Rez.Layouts.MainLayout(dc));
    }
	
	function onPos(information){
    	//Sys.println("in on Position"); 
    	placeInfo = information.position.toGeoString(Pos.GEO_DMS); //with position.info??? which is argument. 
    	Sys.println(placeInfo); 
    	
    	var com_options = {3 => Com.HTTP_REQUEST_METHOD_GET};
	
    	//var helpfulInfo = { 1 => Rez.Strings.dependantName, 2  => placeInfo }; 
        //Com.makeJsonRequest("162.243.121.69/message/send/", helpfulInfo, com_options, method(:responseCallback)); 
    	
    	Com.makeJsonRequest(
            "162.243.121.69/message/send/",
            {
               1 => Rez.Strings.dependantName, 2  => placeInfo
            },
            {
            	:method => Com.HTTP_REQUEST_METHOD_POST,
                "Content-Type" => Com.REQUEST_CONTENT_TYPE_URL_ENCODED
            },
            method(:onReceive)
        );
    	
    	
    	Sys.println(placeInfo); 
    	
    }
    //! Called when this View is brought to the foreground. Restore
    //! the state of this View and prepare it to be shown. This includes
    //! loading resources into memory.
    function onShow() {
    	var gettingHelp = View.findDrawableById("Contact");
        gettingHelp.setText(Rez.Strings.SOS);
        Pos.enableLocationEvents(Pos.LOCATION_ONE_SHOT, method(:onPos)); //enableLocationEvents
        
    }
    
    
    
    
    function onReceive(responseCode, Data) {
    	//Ui.popView(); 
    	Sys.println(responseCode); 
    	Sys.println(Data); 
    	Ui.switchToView(new Time_Piece_CareView(), new Time_Piece_CareDelegate(), Ui.SLIDE_UP);
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