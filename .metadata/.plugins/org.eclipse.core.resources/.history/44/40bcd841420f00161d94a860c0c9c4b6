using Toybox.WatchUi as Ui;
using Toybox.System as Sys;

class Time_Piece_CareMenuDelegate extends Ui.MenuInputDelegate {

    function initialize() {
        MenuInputDelegate.initialize();
    }

    function onMenuItem(item) {
        if (item == :item_1) {
            Sys.println("item 1");
            Ui.pushView(new Time_Piece_Care_HelpView(), new Time_Piece_CareDelegate(), Ui.SLIDE_UP);
            
            
            
        } else if (item == :item_2) {
            Sys.println("hello");
            Ui.pushView(new Time_Piece_Care_MeView(), new Time_Piece_CareDelegate(), Ui.SLIDE_UP);
            
        }else if (item == :item_2) {
            Sys.println("hello");
            Ui.pushView(new Time_Piece_Care_MeView(), new Time_Piece_CareDelegate(), Ui.SLIDE_UP);
            //create another view 
        }
        else if (item == :item_3) {
            Sys.println("hello");
            Ui.pushView(new Time_Piece_Care_AboutView(), new Time_Piece_CareDelegate(), Ui.SLIDE_UP);
            //make 
        }
        
    }

}