using Toybox.WatchUi as Ui;
using Toybox.Graphics as Gfx;
using Toybox.System as Sys;
using Toybox.Lang as Lang;



class Time_Piece_Care_AboutView extends Ui.View {

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
    var appNameView = View.findDrawableById("Prompt");
    	appNameView.setText(Rez.Strings.AppName); 
    	
    	var helpView = View.findDrawableById("helpLabel"); 
    	helpView.setText(Rez.Strings.help_url); 
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
