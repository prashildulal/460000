import SwiftUI

//login view
struct LogIn: View
{
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    @State private var username: String = ""
    @State private var password: String = ""
    
    
    var body: some View
    {
        
       ZStack
        {
            
            VStack
            {
                
                Button(action: { viewRouter.currentPage = .page1}) {
                    
                    Text("Back")
                        .foregroundColor(.black)
                        .frame(width:75, height:50)
                    
                }
                .background(Color.blue)
                
                Form
                {
                    
                    Text("Log In")
                    
                    //get username
                    Text("Username")
                    TextField(text: $username, prompt: Text("Required")) {
                        Text("Username")
                    }
                    //get password
                    Text("Password")
                    SecureField(text: $password, prompt: Text("Required")) {
                        Text("Password")
                    }
                    
                }
            
                Button(action: { viewRouter.currentPage = .page4}) {
                    
                    Text("Submit")
                        .foregroundColor(.black)
                        .frame(width:75, height:50)
                    
                }
                .background(Color.blue)
            
            }
                
        }
        
        
    }
    
}

//construct the preview
struct LogIn_Previews: PreviewProvider
{
    
    static var previews: some View
    {
        
        LogIn().environmentObject(ViewRouter())
        
    }
    
}
