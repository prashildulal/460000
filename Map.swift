import SwiftUI

struct Map: View
{
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View
    {
        
        ZStack
        {
            
            Color.cyan
                .ignoresSafeArea()
            
            VStack
            {
                
                HStack
                {
                    
                    Button(action: { viewRouter.currentPage = .page8}) {
                        
                        Text("Options")
                            .foregroundColor(.black)
                            .frame(width:100, height:100)
                        
                    }
                    .background(Color.blue)
                    
                    Button(action: { viewRouter.currentPage = .page5}) {
                        
                        Text("Start Session")
                            .foregroundColor(.black)
                            .frame(width:100, height:100)
                        
                    }
                    .background(Color.blue)
                 
                    Button(action: { viewRouter.currentPage = .page9}) {
                        
                        Text("View Data")
                            .foregroundColor(.black)
                            .frame(width:100, height:100)
                        
                    }
                    .background(Color.blue)
                    
                }
                
                
                
            }
            
            
        }
        
    }
    
}

struct Map_Preview: PreviewProvider
{
    
    static var previews: some View
    {
        
        Map().environmentObject(ViewRouter())
        
    }
    
}

