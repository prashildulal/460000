import SwiftUI

struct StartSession: View
{
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    @State private var species: String = ""
    
    @State private var numBirds: String = ""
    
    let listSpecies = [ "Whooping Crane", "Sandhill Crane", "Wood Stork", "Roseate Spoonbill", "Cattle Egret", "Great Egret", "Snowy Egret", "Little Blue Heron (blue)", "Little Blue Heron (imm. white)", "Little Blue Heron (calico)", "Great Blue Heron", "Great White Heron", "Reddish Egret", "Tricolor Heron", "Black-crowned Night Heron", "Yellow-crowned Night Heron", "Green Heron", "White Ibis", "Glossy Ibis", "White-faced Ibis", "Other - Place in described field" ]
    
    var body: some View
    {
        
        ZStack
        {
            
            VStack
            {
            
                Button(action: { viewRouter.currentPage = .page4}) {
                    
                    Text("Back")
                        .foregroundColor(.black)
                    
                }
                .background(Color.blue)
                
                Form
                {
                    
                    //get bird species
                    Text("Estimated Species of Bird(s)")
                    Picker("Select the species", selection: $species) {
                                    ForEach(listSpecies, id: \.self) {
                                        Text($0)
                                    }
                                }
                    
                    //get bird if not listed
                    Text("If Species Is Not Listed:")
                    TextField(text: $species) {
                        Text("Species")
                    }
                    
                    //get count
                    Text("Approximate Number of Birds Within 10 Meter Radius")
                    TextField(text: $numBirds, prompt: Text("Required")) {
                        Text("Number of birds")
                    }
                    
                    Button(action: { viewRouter.currentPage = .page6}) {
                        
                        Text("Begin Session")
                            .foregroundColor(.black)
                        
                    }
                    .background(Color.blue)
            
                }
                    
            }
            
        }
        
    }
    
}

struct StartSession_Previews: PreviewProvider
{
    
    static var previews: some View
    {
        
        StartSession().environmentObject(ViewRouter())
        
    }
    
}

