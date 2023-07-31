//
//  ContentView.swift
//  Week 2 Lab 2
//
//  Created by Diya Alowdah on 31/07/2023.
//

import SwiftUI

struct ContentView: View {
    
    
    @State var imageofspace:String = "7"
    @State var chang : String = "4"
    @State var mod :String = ""
    
    var body: some View {
        ZStack {
            ScrollView() {
                
                VStack {
                    Array_of_Nature( nature: $chang)
                    
                    HStack{
                        Array_of_Space(space: $imageofspace)
                    }
                    Night_Mode(mode: $mod)
                    
                }
                
                .padding()
            }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
