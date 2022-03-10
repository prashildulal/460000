import SwiftUI

struct MainView: View
{
    
    //define viewer object
    @EnvironmentObject var viewRouter: ViewRouter
    
    //main view
    var body: some View
    {
        
        //switch between screens
        switch viewRouter.currentPage
        {
            
            //Home screen
            case .page1:
                Home()
            //Log In screen
            case .page2:
                LogIn()
            //Sign Up screen
            case .page3:
                SignUp()
            //Map screen
            case .page4:
                Map()
            //Start Session screen
            case .page5:
                StartSession()
            //Session Screen
            case .page6:
                Session()
            //Review Session Screen
            case .page7:
                ReviewSession()
            //Options Screen
            case .page8:
                Options()
            //View Data Screen
            case .page9:
                ViewData()
            
        }
        
    }
    
}

//construct the preview
struct MainView_Previews: PreviewProvider
{
    
    static var previews: some View
    {
        
        MainView().previewDevice("iPad (9th generation)").environmentObject(ViewRouter())
        
    }
    
}
