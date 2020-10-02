//
//  SwiftUI.swift
//  Windesheim
//
//  Created by Lawrence Bensaid on 25/08/2020.
//

//import SwiftUI
//
//@available(iOS 13, *)
//@available(macOS 11, *)
//public struct ButtonModifier: ViewModifier {
//    
//    public func body(content: Content) -> some View {
//        #if os(macOS)
//        return content
//            .font(.headline)
//            .padding()
//            .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
//            .background(RoundedRectangle(cornerRadius: 15, style: .continuous)
//                            .fill(Color.accentColor))
//            .padding(.bottom)
//        #else
//        return content
//            .foregroundColor(Color(.systemBackground))
//            .font(.headline)
//            .padding()
//            .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
//            .background(RoundedRectangle(cornerRadius: 15, style: .continuous)
//                            .fill(Color.accentColor))
//            .padding(.bottom)
//        #endif
//    }
//    
//}
//
//@available(iOS 13, *)
//@available(macOS 11, *)
//extension View {
//    
//    public func customButton() -> ModifiedContent<Self, ButtonModifier> {
//        return modifier(ButtonModifier())
//    }
//    
//}
//
//@available(iOS 13, *)
//@available(macOS 11, *)
//extension Text {
//    
//    public func customTitleText() -> Text {
//        self
//            .fontWeight(.black)
//            .font(.system(size: 36))
//    }
//    
//}
