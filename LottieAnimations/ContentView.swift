//
//  ContentView.swift
//  Lottie-Animation
//
//  Created by simge on 27.03.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var animationProgress = false
    
    var body: some View {
        VStack{
            Text("My favourite series")
                .font(.title).bold()
                .foregroundColor(.black)
            
            
            Image("fri")
                .frame(width: 400, height: 450)
                .cornerRadius(10)
            
            if animationProgress{
                LottieView(animationProgress: $animationProgress)
            }
            
            Spacer() //for animations space
            
            HStack{
                
                Button("Like", action: {
                    animationProgress.toggle()
                })
                .foregroundColor(.white)
                .padding()
                .background(.black)
                .cornerRadius(8)
                .padding(.top , 50)
                
                Button("Dislike",action:{
                    animationProgress.toggle()
                })
                .foregroundColor(.white)
                .padding()
                .background(.black)
                .cornerRadius(8)
                .padding(.top , 50)
            }
    }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

