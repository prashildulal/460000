//
//  HostView.swift
//  Early Alpha
//
//  Created by Christopher Drum on 2/4/22.
//

import SwiftUI

struct HostView: View
{
    
    @State var currentPage: Page = .page1
    
    var body: some View
    {
        
        switch currentPage
        {
            
            case .page1:
                ContentView()
            case .page2:
                Home()
            
        }
        
    }
    
}

struct HostView_Previews: PreviewProvider {
    static var previews: some View {
        HostView()
    }
}
