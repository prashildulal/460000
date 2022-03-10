import SwiftUI

//holds page types
enum Page
{
    
    //Home
    case page1
    //LogIn
    case page2
    //SignUp
    case page3
    //Map
    case page4
    //StartSession
    case page5
    //Session
    case page6
    //ReviewSession
    case page7
    //Options
    case page8
    //ViewData
    case page9
    
}

//class holding a single entry's data
public class EntryField: ObservableObject
{
    
    var userID: String
    var userPrivate: Bool
    var userLongitude: Float
    var userLatitude: Float
    var birdSpecies: String
    var birdCount: Int
    var time: Date
    var action: String
    var confidence: Float
    var sessionNum: Int
    var behavior: String
    
    init( userID: String, userPrivate: Bool, userLongitude: Float, userLatitude: Float, birdSpecies: String, birdCount: Int, time: Date, action: String, confidence: Float, sessionNum: Int, behavior: String )
    {
        
        self.userID = userID
        self.userPrivate = userPrivate
        self.userLongitude = userLongitude
        self.userLatitude = userLatitude
        self.birdSpecies = birdSpecies
        self.birdCount = birdCount
        self.time = time
        self.action = action
        self.confidence = confidence
        self.sessionNum = sessionNum
        self.behavior = behavior
        
    }
    
}

//class holding all entries for a single session
struct SessionData
{
    
    var entryList: [EntryField] = []
    
}


struct userSignup
{
    
    @State public var username: String = ""
    
    @State public var password: String = ""
    
    @State public var email: String = ""
    
    @State public var userRole: String = ""
    
    @State public var town: String = ""
    
    @State public var purposeOfApp: String = ""
    
    @State public var province: String = ""
    
}
