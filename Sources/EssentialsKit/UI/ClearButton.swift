//
//  ClearButton.swift
//  Windesheim (iOS)
//
//  Created by Lawrence Bensaid on 26/08/2020.
//

//import SwiftUI

//@available(iOS 13, *)
//@available(macOS 11, *)
//public struct ClearButton: ViewModifier {
//
//    @Binding private var text: String
//
//    public init(text: Binding<String>) {
//        _text = text
//    }
//
//    public func body(content: Content) -> some View {
//        ZStack(alignment: .trailing) {
//            content
//            if !text.isEmpty {
//                Button(action: {
//                    self.text = ""
//                }) {
//                    Image(systemName: "xmark.circle.fill")
//                        .foregroundColor(Color(.systemGray))
//                        .font(.system(size: 16, weight: .semibold))
//                }
//                    .padding(.trailing, 8)
//            }
//        }
//    }
//
//}
