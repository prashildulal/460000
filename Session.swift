import SwiftUI

//session view
struct Session: View
{
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    @StateObject var speechRecognizer = SpeechRecognizer()
    
    @State private var isRecording = false
    
    var body: some View
    {
        
        ZStack
        {
            
            Color.cyan
                .ignoresSafeArea()
            
            VStack
            {
                
                
                
                if( isRecording )
                {
                    
                    Button(action: { stopSession(); viewRouter.currentPage = .page7}) {
                        
                        Text("End Session")
                            .foregroundColor(.black)
                            .font(.title)
                            .frame(width:200, height:200)
                        
                    }
                    .background(Color.blue)
                    
                }
                else
                {
                    
                    
                    
                    Button(action: { startSession()}) {
                        
                        Text("Start Session")
                            .foregroundColor(.black)
                            .font(.title)
                            .frame(width:200, height:200)
                        
                        
                    }
                    .background(Color.blue)
                    
                    
                }
                
            }
            
        }
        
    }
    
    func startSession()
    {
        
        speechRecognizer.reset()
        speechRecognizer.transcribe()
        isRecording = true
        
    }

    func stopSession()
    {
        
        speechRecognizer.stopTranscribing()
        isRecording = false
        
    }
    
}

//construct the preview
struct Session_Previews: PreviewProvider
{
    
    static var previews: some View
    {
        
        Session().environmentObject(ViewRouter())
        
    }
    
}
