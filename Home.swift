import SwiftUI

//home view
struct Home: View
{
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View
    {
        
        //create the full stack for the page
        ZStack
        {
            
            //insert background image
            Image("Egret")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            
            
            //create the main stack for the page
            VStack(spacing:25)
            {
                
                Text("Bird App")
                    .foregroundColor(.black)
                    .font(.title)
                    .frame(width:300, height:200)
                    .background(Color.gray)
                
                //go to login
                Button(action: { viewRouter.currentPage = .page2}) {
                    
                    Text("Log In")
                        .foregroundColor(.black)
                        .font(.title)
                        .frame(width:150, height:150)
                    
                }
                .background(Color.blue)
                
                //go to sign up
                Button(action: { viewRouter.currentPage = .page3}) {
                    
                    Text("Sign Up")
                        .foregroundColor(.black)
                        .font(.title)
                        .frame(width:150, height:150)
                    
                }
                .background(Color.blue)
            
            }
            
        }
            
    }
 
    
    
}

//contruct the preview
struct Home_Previews: PreviewProvider
{
    
    static var previews: some View
    {
        
        Home().environmentObject(ViewRouter())
    
    }
    
}
