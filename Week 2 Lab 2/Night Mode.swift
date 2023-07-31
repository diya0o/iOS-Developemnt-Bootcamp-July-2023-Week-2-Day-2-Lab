//
//  Night Mode.swift
//  Week 2 Lab 2
//
//  Created by Diya Alowdah on 31/07/2023.
//

import SwiftUI

struct Night_Mode: View {
    @Binding var mode:String
    
    @State  var isPresented = false
    @State  var isDarkMode = false
    
    var body: some View {
        ZStack {
            
            List {
                Toggle("الوضع الليلي", isOn: $isDarkMode)
                    .font(.system(size: 25))
                    .frame(height: -10)
                    .background(Color.black.opacity(0.1))
                
                    
            }
            
            .preferredColorScheme(isDarkMode ? .dark : .light)
            
        }
        
        .cornerRadius(20)
        .frame(width: 309,height: 100)
        
        
    }
}

struct Night_Mode_Previews: PreviewProvider {
    static var previews: some View {
        Night_Mode(mode: .constant(""))
    }
}
