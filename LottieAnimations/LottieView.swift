//
//  LottieView.swift
//  LottieAnimations
//
//  Created by simge on 27.03.2022.
//

import SwiftUI
import Lottie

struct LottieView : UIViewRepresentable {
    
    @Binding var animationProgress:Bool
    
    func makeUIView(context:Context) -> some AnimationView {
        let lottieAnimationView = AnimationView(name:"8377-like-burst")
        lottieAnimationView.play{complete in
            if complete {
                animationProgress = false
            }
        }
        return lottieAnimationView
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
}
