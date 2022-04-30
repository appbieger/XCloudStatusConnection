//
//  File.swift
//  
//
//  Created by Stephan Tomforde on 30.04.22.
//

import Foundation
import SwiftUI

extension Image {
    public static let  UNDE: Image =  Image("UNDE")
    public static let  SYNC: Image =  Image("SYNC")
    // swiftlint:disable:next identifier_name
    public static let  EX: Image =  Image("EX")
    // swiftlint:disable:next identifier_name
    public static let  OK: Image =  Image("OK")
    public static let UNDEFINED: Image = Image("UNDEFINED")

    public static let SUCCEEDED: Image =  Image( systemName: "checkmark.circle")
    public static let FAILED: Image =  Image( systemName: "xmark.circle")
    public static let ERRORED: Image =  Image( systemName: "xmark.circle")
    public static let CANCELED: Image =  Image( systemName: "slash.circle")
    public static let SKIPPED: Image =  Image( systemName: "slash.circle")
    public static let OTHER: Image =  Image( systemName: "slash.circle")
    public static let COMPLETE: Image = Image( systemName: "checkmark.circle")
    public static let PENDING: Image = Image( systemName: "clock")
    public static let RUNNING: Image = Image( systemName: "arrow.triangle.2.circlepath.circle")
    public static let ATTENTION: Image = Image( systemName: "exclamationmark.triangle")
    public static let SUCCESS: Image = Image( systemName: "checkmark.circle")
    public static let DISABLED: Image = Image( systemName: "slash.circle")
    public static let DISCONNECT: Image = Image( systemName: "bolt.horizontal.circle")
    public static let QUESTIONMARK: Image = Image( systemName: "questionmark")
    public static let SETUPHEADERXCODE: Image = Image( "XcodeCloud")
    public static let SETUPHEADERGITHUB: Image = Image( "GitHub")
    public static let SETUPHEADERDEFAULT: Image = Image( "DefaultAccountIcon")
    public static let SETUPWELLCOMEICON: Image = Image( "DefaultAccountIcon")
    
    public static let SETUPSELECTRXCODE: Image = Image( "XcodeCloud")
    public static let SETUPSELECTGITHUB: Image = Image( "GitHub")
    
    
    public static let TABELSTATUSICONAPPLE: Image = Image( "XcodeCloud")
    public static let TABELSTATUSICONGITHUB: Image = Image( "GitHub")
    
    public static let TABELSTATUSDEFAULT: AnyView = AnyView( Image( "XcodeCloud").resizable())
    
     
    public static let DOTDISCONNECTED: AnyView  = AnyView(Image( systemName: "app.badge").resizable().foregroundColor(.red))
    public static let DOTNEEDATTENTION: AnyView = AnyView(Image( systemName: "app.badge").resizable().foregroundColor(.yellow))
    public static let DOTRUNNING: AnyView       = AnyView(Image( systemName: "app.badge").resizable().foregroundColor(.blue))
    public static let DOTOK: AnyView            = AnyView(Image( systemName: "app.badge").resizable().foregroundColor(.green))
    
    
    public static let DOTRED: AnyView           = AnyView(Image( systemName: "app.badge").resizable().foregroundColor(.red))
    public static let DOTGREEN: AnyView         = AnyView(Image( systemName: "app.badge").resizable().foregroundColor(.green))
    public static let DOTBLUE: AnyView          = AnyView(Image( systemName: "app.badge").resizable().foregroundColor(.blue))
    public static let DOTYELLOW: AnyView        = AnyView(Image( systemName: "app.badge").resizable().foregroundColor(.yellow))
    public static let DOTGRAY: AnyView          = AnyView(Image( systemName: "app.badge").resizable().foregroundColor(.gray))
    public static let DOTUNDEFINED: AnyView     = AnyView(Image( systemName: "app.badge").resizable().foregroundColor(.gray))
    
    
//    public static let DOTGRAY: AnyView = AnyView(Image( systemName: "circlebadge.fill").resizable().foregroundColor(.gray))
//    public static let DOTUNDEFINED: AnyView = AnyView(Image( systemName: "circlebadge").resizable().foregroundColor(.gray))
//    line.horizontal.3.decrease.circle and line.horizontal.3.decrease.circle.fill
     
}
