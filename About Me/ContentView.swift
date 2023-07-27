//
//  ContentView.swift
//  About Me
//
//  Created by scholar on 7/27/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var text1 = ""
    @State private var image1 = ""
    @State private var image2 = ""
    @State private var image3 = ""
    
    var body: some View {
        ZStack {
            Color(.systemGray)
                .ignoresSafeArea()
            VStack {
                VStack{
                    Text("Hi, I'm Alison")
                        .font(.custom("Quicksand-VariableFont_wght", size: 30))
                        .font(.title)
                        .fontWeight(.black)
                        .padding()
                    Text("Click on the facts to learn more about me!")
                        .font(.custom("Quicksand-VariableFont_wght", size: 20))
                        .multilineTextAlignment(.center)
                    Image("me")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .padding(.top, 30)
                        .clipShape(Circle())
                        .shadow(radius: 15)
                    
                } // for vStack
                
                HStack {
                    
                    Button("Fact #1") {
                        
                        text1 = "I have 3 dogs! Their names are Candice, Choca, and Cindy."
                        image1 = ("candice")
                        image2 = ("choca")
                        image3 = ("cindy")
                        
                    } // for Button
                    .font(.title2)
                    .buttonStyle(.borderedProminent)
                    .tint(Color("pastelGreen"))
                    .shadow(radius: 6)
                    
                    Button("Fact #2") {
                        text1 = "I like to stay active and play soccer!"
                        image1 = ""
                        image2 = "team"
                        image3 = ""
                    } // for Button
                    .font(.title2)
                    .buttonStyle(.borderedProminent)
                    .tint(Color("pastelGreen"))
                    .shadow(radius: 6)
                    
                    Button("Fact #3") {
                        text1 = "I love to eat fruits like watermelon and strawberries!"
                        image1 = "watermelon"
                        image2 = ""
                        image3 = "strawberries"
                    } // for button
                    .font(.title2)
                    .buttonStyle(.borderedProminent)
                    .tint(Color("pastelGreen"))
                    .shadow(radius: 6)
                    
                } // for hStack
                
                .padding()
                Text(text1)
                    .font(.title3)
                    .multilineTextAlignment(.center)
                HStack {
                    Image(image1)
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                    Image(image2)
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                    Image(image3)
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                    
                } // for hStack of the facts
                
            } // for vStack
            
            .padding()
        } // for z stack
    } //  for view
    
} // for struct

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
