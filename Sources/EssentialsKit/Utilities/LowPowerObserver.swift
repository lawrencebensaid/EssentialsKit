//
//  LowPowerObserver.swift
//  AnalytX (iOS)
//
//  Created by Lawrence Bensaid on 14/08/2020.
//

import Foundation

@available(iOS 11, *)
public class LowPowerObserver {

    public private(set) var isEnabled: Bool
    private var change: ((Bool) -> ())?
    
    public init(_ onChange: ((Bool) -> ())? = nil) {
        self.change = onChange
        #if os(iOS)
        self.isEnabled = ProcessInfo.processInfo.isLowPowerModeEnabled == true
        NotificationCenter.default.addObserver(self, selector: #selector(powerStateChanged), name: Notification.Name.NSProcessInfoPowerStateDidChange, object: nil)
        #else
        self.isEnabled = false
        #endif
    }
    
    #if os(iOS)
    @objc
    private func powerStateChanged(_ notification: Notification) {
        isEnabled = ProcessInfo.processInfo.isLowPowerModeEnabled
        change?(isEnabled)
    }
    #endif
    
}
