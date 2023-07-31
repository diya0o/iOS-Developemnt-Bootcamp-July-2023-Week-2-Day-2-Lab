//
//  Array of Space.swift
//  Week 2 Lab 2
//
//  Created by Diya Alowdah on 31/07/2023.
//

import SwiftUI

struct Array_of_Space: View {
    
    
    @Binding var space :String
    @State var spaceImages :[String] = ["7","8","9"]
    var body: some View {
        VStack {
            ScrollView(.horizontal) {
                HStack(alignment: .center,spacing: 40){
                    
                    ForEach(spaceImages , id: \.self){array in
                        
                        Image(array)
                            .resizable()
                            .cornerRadius(30)
                            .frame(width: 300,height: 300)
                            .foregroundColor(.accentColor)
                            .padding(40)
                        
                    }
                    
                }
            }
            Text("اسحب إلى اليسار")
                .font(.system(size: 20))
            
            
            Text("صور من الفضاء")
                .font(.system(size: 35))
            
            
        }
        
    }
    
        
    }


struct Array_of_Space_Previews: PreviewProvider {
    static var previews: some View {
        Array_of_Space(space: .constant(""))
    }
}
