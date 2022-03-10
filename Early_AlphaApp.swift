import SwiftUI

@main
struct Early_AlphaApp: App
{
    
    @StateObject var viewRouter = ViewRouter()
    

    
    
    var body: some Scene
    {
        WindowGroup
        {
            
            MainView().environmentObject(ViewRouter())
            
        }
        
    }
    
}
