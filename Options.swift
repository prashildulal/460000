import SwiftUI

//options view
struct Options: View
{
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    @State public var isPublic = true
    
    var body: some View
    {
        
        ZStack
        {
            
            Color.cyan
                .ignoresSafeArea()
            
            VStack
            {
                
                Toggle("Share data with public", isOn: $isPublic)
                    .background(Color.gray)
                
                Button(action: { viewRouter.currentPage = .page4}) {
                    
                    Text("Back")
                        .foregroundColor(.black)
                        .frame(width:75, height:50)
                    
                }
                .background(Color.blue)
                
            }
            
        }
        
    }
    
}

//construct the preview
struct Options_Previews: PreviewProvider
{
    
    static var previews: some View
    {
        
        Options().environmentObject(ViewRouter())
        
    }
    
}
