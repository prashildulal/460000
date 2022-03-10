import SwiftUI

//view data view
struct ViewData: View
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
            
                HStack
                {
                
                    //modify action to call db
                    Button(action: { viewRouter.currentPage = .page4}) {
                        
                        Text("Get Public Data")
                            .foregroundColor(.black)
                            .font(.title)
                            .frame(width:150, height:150)
                        
                    }
                    .background(Color.blue)
                    
                    //modify action to call db
                    Button(action: { viewRouter.currentPage = .page4}) {
                        
                        Text("Get Own Data")
                            .foregroundColor(.black)
                            .font(.title)
                            .frame(width:150, height:150)
                        
                    }
                    .background(Color.blue)
                
                }
                    
                Button(action: { viewRouter.currentPage = .page4}) {
                    
                    Text("Back")
                        .foregroundColor(.black)
                        .font(.title)
                        .frame(width:100, height:100)
                    
                }
                .background(Color.blue)
            
            }
                
        }
        
    }
    
}

//construct the preview
struct ViewData_Previews: PreviewProvider
{
    
    static var previews: some View
    {
        
        ViewData().environmentObject(ViewRouter())
        
    }
    
}
