import SwiftUI

//review session view
struct ReviewSession: View
{
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View
    {
        
        ZStack
        {
            
            Color.cyan
                .ignoresSafeArea()
            
            VStack(spacing:50)
            {
            
                Button(action: { sendData();viewRouter.currentPage = .page4}) {
                    
                    Text("Submit Current Session")
                        .foregroundColor(.black)
                        .font(.title)
                        .frame(width:200, height:200)
                    
                }
                .background(Color.blue)
                
                Button(action: { viewRouter.currentPage = .page4}) {
                    
                    Text("Erase Current Session")
                        .foregroundColor(.black)
                        .font(.title)
                        .frame(width:200, height:200)
                    
                }
                .background(Color.blue)
            
            }
            
        }
        
    }
    
}

func sendData()
{
    
    //db connection
    
}

//construct the preview
struct ReviewSession_Previews: PreviewProvider
{
    
    static var previews: some View
    {
        
        ReviewSession().environmentObject(ViewRouter())
        
    }
    
}
