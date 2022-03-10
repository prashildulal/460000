import SwiftUI

struct SignUp: View
{
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    let roles = [ "Researcher", "K-12 Student", "Undergraduate Student", "Graduate Student", "Citizen Scientist", "K-12 Teacher", "Government Employee - Federal", "Government Employee - State" ]
    
    let info = userSignup()

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
                    
                    Text("Sign Up")
                    
                    //get username
                    Text("Username")
                    TextField(text: info.$username, prompt: Text("Required")) {
                        Text("Username")
                    }
                    
                    //get password
                    Text("Password")
                    SecureField(text: info.$password, prompt: Text("Required")) {
                        Text("Password")
                    }
                    
                    //get email
                    Text("E-Mail Address")
                    TextField(text:info.$email, prompt:Text("Required")){
                        Text("E-Mail")
                    }
                    
                     //get role
                     Picker("Select your role in using this app", selection: info.$userRole)
                    {
                                     ForEach(roles, id: \.self) {
                                         Text($0)
                                     }
                        
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

struct SignUp_Previews: PreviewProvider
{
    
    static var previews: some View
    {
        
        SignUp().environmentObject(ViewRouter())
        
    }
    
}

