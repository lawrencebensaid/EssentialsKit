//
//  UserSettings.swift
//  AnalytX
//
//  Created by Lawrence Bensaid on 14/08/2020.
//

//import SwiftUI
//
//@available(iOS 13, *)
//@available(macOS 11, *)
//public class UserSettings: ObservableObject {
//    
//    @Published var status: AppServiceStatus = .polling
//    @Published var developmentMode = false
//    @Published var showLogin = true
//    @Published var eventName: String?
//    @Published var eventDescription: String?
//    @Published var eventBlocking: Bool?
//    @Published var eventEnd: Date?
//    
//    public func setEvent(eventName: String? = nil, eventDescription: String? = nil, eventBlocking: Bool? = nil, eventEnd: Date? = nil) {
//        withAnimation {
//            if self.eventName != eventName {
//                self.eventName = eventName
//            }
//            if self.eventDescription != eventDescription {
//                self.eventDescription = eventDescription
//            }
//            if self.eventBlocking != eventBlocking {
//                self.eventBlocking = eventBlocking
//            }
//            if self.eventEnd != eventEnd {
//                self.eventEnd = eventEnd
//            }
//        }
//    }
//    
//    public func setStatus(_ status: AppServiceStatus) {
//        withAnimation {
//            if self.status != status {
//                self.status = status
//            }
//        }
//    }
//}
//
//public enum AppServiceStatus {
//    case polling
//    case offline
//    case online
//}
