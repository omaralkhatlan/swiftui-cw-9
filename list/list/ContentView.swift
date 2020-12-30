//
//  ContentView.swift
//  list
//
//  Created by Omar Alkhatlan on 30/12/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("Movies ")
                .font(.largeTitle)
                .foregroundColor(Color.white)
                .padding(.all)
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
                
        List {
            Text("Movie 1 ")
            movieLine( movieName: "Bird.Box", movieChars: "Malorie Hayes, Tom, Jessica")
            Text("Movie 2 ")
            movieLine( movieName: "Journey 2", movieChars: "Sean Anderson, Hank Parsons, Kailani")
            Text("Movie 3 ")
             movieLine( movieName: "Enola Holmes", movieChars: "Enola Holmes, Tewkesbury, Sherlock Holmes")
            
        }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11 Pro")
    }
}
struct movieLine: View {
    
    let movieName : String
    let movieChars : String
    var body: some View{
        
       
        HStack(alignment: .center){
            Image(movieName)
                .resizable()
                .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                .scaledToFit()
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
             
            
            VStack {
                Text(movieName)
                    .font(.largeTitle)
                    
                Text(movieChars)
                
            }
        }.padding(.vertical)
        
    }

}
