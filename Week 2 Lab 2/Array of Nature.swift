//
//  Array of Nature.swift
//  Week 2 Lab 2
//
//  Created by Diya Alowdah on 31/07/2023.
//

import SwiftUI

struct Array_of_Nature: View {
    
    @Binding var nature :String
     @State var changeImage:Array<String> = ["4","5","6"]

    var body: some View {
        
        VStack {
            Image(nature)
            
                .resizable()
            
                .cornerRadius(30)
                .frame(width: 300,height: 300)
            
                .foregroundColor(.accentColor)
                .opacity(3)
                .animation(.easeIn(duration: 0.7))
                .opacity(1)
            
            
            
            Text("صور من الطبيعة")
                .font(.system(size: 35))
            
            Button(action: {
                changColor()
            }, label: {Text("تغيير الصورة")
                
                    .font(.system(size: 35))
                
                    .frame(width: 270,height: 50)
                
                    .font(.system(size: 30))
                    .multilineTextAlignment(.center)
                    .padding()
                
                    .foregroundColor(.white)
                    .background(.pink.opacity(0.4))
                    .cornerRadius(25)
                    .padding()
                
            })
            
        }
    }
    
    func changColor (){

        let random = Int.random(in: 0..<changeImage.count)
        nature = changeImage[random]
        
        
        



    }
        
        
    
}

struct Array_of_Nature_Previews: PreviewProvider {
    static var previews: some View {
        Array_of_Nature(nature: .constant(""))
    }
}
