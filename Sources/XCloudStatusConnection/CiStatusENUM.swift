import Foundation
import SwiftUI
import CoreData


public enum CiStatusENUM: String, Identifiable, CaseIterable{
    // swiftlint:disable:next identifier_name
    public var id: String {  self.rawValue  }
     
    case WAITING_FOR_RESOURCE
    case PREPARING
    case MANUAL
    case SCHEDULED
    case SUCCEEDED
    case FAILED
    case ERRORED
    case CANCELED
    case SKIPPED
    case PENDING
    case QUEUED
    case RUNNING
    case IN_PROGRESS
    case STARTED
    case CREATED
    case RUNNINGSUCCEEDED
    case RUNNINGFAILED
    case RUNNINGERRORED
    case RUNNINGCANCELED
    case RUNNINGSKIPPED
    case PENDINGSUCCEEDED
    case COMPLETE
    case PASSED
    case INPROGRESS
    case COMPLETESUCCEEDED
    case COMPLETEDSUCCESS
    case COMPLETEFAILED
    case COMPLETEDFAILURE
    case COMPLETEERRORED
    case COMPLETECANCELED
    case COMPLETEDCANCELLED
    case COMPLETESKIPPED
    case FINISHEDSUCCESSFUL
    case FINISHEDFAILED
    case DISABLED
    case ATTENTION
    case SUCCESS
    case other
    
    enum AppConnectionStatus: String {
        case UNDEFINED
        case DISCONNECTED
        case NEEDATTENTION
        case RUNNING
        // swiftlint:disable:next identifier_name
        case OK
    }
    
    private struct valxx {
        let kvColor: Color
        let trfENU: CiStatusENUM.CiStatusTrafficLightENUM
        let img: Image
        let statusBar:  AppConnectionStatus
        let isError: Bool
        let running: Bool
        let isCompletet: Bool
        let buildCompletet: Bool
        let buildSuccessfull: Bool
        let textAppVisible: Bool
        let isAnnimated:   Bool
        let text:   String
    }
    
    private func keyss () -> valxx {
        switch self {
        case .SUCCEEDED:          return valxx(kvColor: .green  , trfENU: .GREEN    , img: .SUCCEEDED , statusBar: .OK             ,isError: false ,running: false, isCompletet: false, buildCompletet: false, buildSuccessfull: true,  textAppVisible: false, isAnnimated: false, text: "Succeeded")
        case .FAILED:             return valxx(kvColor: .red    , trfENU: .RED      , img: .FAILED    , statusBar: .NEEDATTENTION  ,isError: true ,running: false, isCompletet: true, buildCompletet: false, buildSuccessfull: false, textAppVisible: false, isAnnimated: false, text: "Faild")
        case .ERRORED:            return valxx(kvColor: .red    , trfENU: .RED      , img: .ERRORED   , statusBar: .NEEDATTENTION  ,isError: true  ,running: false, isCompletet: false, buildCompletet: false, buildSuccessfull: false, textAppVisible: false, isAnnimated: false, text: "Error")
        case .COMPLETEFAILED:     return valxx(kvColor: .red    , trfENU: .RED      , img: .ERRORED   , statusBar: .NEEDATTENTION  ,isError: true  ,running: false, isCompletet: false, buildCompletet: true , buildSuccessfull: false ,textAppVisible: false, isAnnimated: false, text: "Faild")
        case .COMPLETEDFAILURE:   return valxx(kvColor: .red    , trfENU: .RED      , img: .ERRORED   , statusBar: .NEEDATTENTION  ,isError: true  ,running: false, isCompletet: false, buildCompletet: true , buildSuccessfull: false ,textAppVisible: false, isAnnimated: false, text: "Faild")
        case .FINISHEDFAILED:     return valxx(kvColor: .red    , trfENU: .RED      , img: .ERRORED   , statusBar: .NEEDATTENTION  ,isError: true  ,running: false, isCompletet: false, buildCompletet: true , buildSuccessfull: false ,textAppVisible: false, isAnnimated: false, text: "Faild")
        case .COMPLETEERRORED:    return valxx(kvColor: .red    , trfENU: .RED      , img: .ERRORED   , statusBar: .NEEDATTENTION  ,isError: true  ,running: false, isCompletet: false, buildCompletet: true , buildSuccessfull: false ,textAppVisible: false, isAnnimated: false, text: "Error")
        case .RUNNINGERRORED:     return valxx(kvColor: .red    , trfENU: .RED      , img: .RUNNING   , statusBar: .NEEDATTENTION  ,isError: true  ,running: true , isCompletet: false, buildCompletet: false, buildSuccessfull: false, textAppVisible: false, isAnnimated: false, text: "Running Error")
        case .RUNNING:            return valxx(kvColor: .blue   , trfENU: .BLUE     , img: .RUNNING   , statusBar: .RUNNING        ,isError: false ,running: true , isCompletet: false, buildCompletet: false, buildSuccessfull: false, textAppVisible: true , isAnnimated: true , text: "Running")
        case .IN_PROGRESS:        return valxx(kvColor: .blue   , trfENU: .BLUE     , img: .RUNNING   , statusBar: .RUNNING        ,isError: false ,running: true , isCompletet: false, buildCompletet: false, buildSuccessfull: false, textAppVisible: true , isAnnimated: true , text: "In Progress")
        case .INPROGRESS:         return valxx(kvColor: .blue   , trfENU: .BLUE     , img: .RUNNING   , statusBar: .RUNNING        ,isError: false ,running: true , isCompletet: false, buildCompletet: false, buildSuccessfull: false, textAppVisible: true , isAnnimated: true , text: "In Progress")
        case .STARTED:            return valxx(kvColor: .blue   , trfENU: .BLUE     , img: .RUNNING   , statusBar: .RUNNING        ,isError: false ,running: true , isCompletet: false, buildCompletet: false, buildSuccessfull: false, textAppVisible: true , isAnnimated: true , text: "Started")
        case .RUNNINGSUCCEEDED:   return valxx(kvColor: .green  , trfENU: .BLUE     , img: .RUNNING   , statusBar: .OK             ,isError: false ,running: true , isCompletet: false, buildCompletet: false, buildSuccessfull: false, textAppVisible: false, isAnnimated: false, text: "Running succeeded")
        case .RUNNINGFAILED:      return valxx(kvColor: .red    , trfENU: .RED      , img: .RUNNING   , statusBar: .NEEDATTENTION  ,isError: false ,running: true , isCompletet: false, buildCompletet: false, buildSuccessfull: false, textAppVisible: false, isAnnimated: false, text: "Running faild")
        case .RUNNINGCANCELED:    return valxx(kvColor: .red    , trfENU: .RED      , img: .RUNNING   , statusBar: .NEEDATTENTION  ,isError: false ,running: true , isCompletet: false, buildCompletet: false, buildSuccessfull: false, textAppVisible: false, isAnnimated: false, text: "Running canceld")
        case .RUNNINGSKIPPED:     return valxx(kvColor: .yellow , trfENU: .YELLOW   , img: .RUNNING   , statusBar: .UNDEFINED      ,isError: false ,running: true , isCompletet: false, buildCompletet: false, buildSuccessfull: false, textAppVisible: false, isAnnimated: false, text: "Running skipped")
        case .COMPLETESUCCEEDED:  return valxx(kvColor: .green  , trfENU: .GREEN    , img: .SUCCEEDED , statusBar: .OK             ,isError: false ,running: false, isCompletet: true , buildCompletet: true , buildSuccessfull: true , textAppVisible: false, isAnnimated: false, text: "Succeeded")
        case .FINISHEDSUCCESSFUL: return valxx(kvColor: .green  , trfENU: .GREEN    , img: .SUCCEEDED , statusBar: .OK             ,isError: false ,running: false, isCompletet: true , buildCompletet: true , buildSuccessfull: true , textAppVisible: false, isAnnimated: false, text: "Succeeded")
        case .COMPLETEDSUCCESS:   return valxx(kvColor: .green  , trfENU: .GREEN    , img: .SUCCEEDED , statusBar: .OK             ,isError: false ,running: false, isCompletet: true , buildCompletet: true , buildSuccessfull: true , textAppVisible: false, isAnnimated: false, text: "Succeeded")
        case .SUCCESS:            return valxx(kvColor: .green  , trfENU: .GREEN    , img: .SUCCEEDED , statusBar: .OK             ,isError: false ,running: false, isCompletet: true,  buildCompletet: false, buildSuccessfull: true,  textAppVisible: false, isAnnimated: false, text: "Ok")
        case .CANCELED:           return valxx(kvColor: .gray   , trfENU: .GRAY     , img: .CANCELED  , statusBar: .NEEDATTENTION  ,isError: false ,running: false, isCompletet: false, buildCompletet: false, buildSuccessfull: false, textAppVisible: false, isAnnimated: false, text: "Canceld")
        case .SKIPPED:            return valxx(kvColor: .gray   , trfENU: .GRAY     , img: .SKIPPED   , statusBar: .UNDEFINED      ,isError: false ,running: false, isCompletet: false, buildCompletet: false, buildSuccessfull: false, textAppVisible: false, isAnnimated: false, text: "Skipped")
        case .COMPLETE:           return valxx(kvColor: .green  , trfENU: .GREEN    , img: .COMPLETE  , statusBar: .OK             ,isError: false ,running: false, isCompletet: false, buildCompletet: true , buildSuccessfull: true , textAppVisible: false, isAnnimated: false, text: "Completed")
        case .PASSED:             return valxx(kvColor: .green  , trfENU: .GREEN    , img: .COMPLETE  , statusBar: .OK             ,isError: false ,running: false, isCompletet: false, buildCompletet: true , buildSuccessfull: false ,textAppVisible: false, isAnnimated: false, text: "Passed")
        case .PENDING:            return valxx(kvColor: .yellow , trfENU: .YELLOW   , img: .PENDING   , statusBar: .RUNNING        ,isError: false ,running: false, isCompletet: false, buildCompletet: false, buildSuccessfull: false, textAppVisible: false, isAnnimated: true , text: "Pending")
        case .PREPARING:          return valxx(kvColor: .yellow , trfENU: .YELLOW   , img: .PENDING   , statusBar: .RUNNING        ,isError: false ,running: false, isCompletet: false, buildCompletet: false, buildSuccessfull: false, textAppVisible: false, isAnnimated: true , text: "Prepering")
        case .MANUAL:             return valxx(kvColor: .yellow , trfENU: .YELLOW   , img: .PENDING   , statusBar: .RUNNING        ,isError: false ,running: false, isCompletet: false, buildCompletet: false, buildSuccessfull: false, textAppVisible: false, isAnnimated: true , text: "Manual")
        case .SCHEDULED:          return valxx(kvColor: .yellow , trfENU: .YELLOW   , img: .PENDING   , statusBar: .RUNNING        ,isError: false ,running: false, isCompletet: false, buildCompletet: false, buildSuccessfull: false, textAppVisible: false, isAnnimated: true , text: "Scheduled")
        case .WAITING_FOR_RESOURCE:return valxx(kvColor: .yellow, trfENU: .YELLOW   , img: .PENDING   , statusBar: .RUNNING        ,isError: false ,running: false, isCompletet: false, buildCompletet: false, buildSuccessfull: false, textAppVisible: false, isAnnimated: true , text: "Waiting for resource")
        case .QUEUED:             return valxx(kvColor: .yellow , trfENU: .YELLOW   , img: .PENDING   , statusBar: .RUNNING        ,isError: false ,running: false, isCompletet: false, buildCompletet: false, buildSuccessfull: false, textAppVisible: false, isAnnimated: true , text: "Queued")
        case .CREATED:            return valxx(kvColor: .yellow , trfENU: .YELLOW   , img: .PENDING   , statusBar: .RUNNING        ,isError: false ,running: false, isCompletet: false, buildCompletet: false, buildSuccessfull: false, textAppVisible: false, isAnnimated: true , text: "Created")
        case .PENDINGSUCCEEDED:   return valxx(kvColor: .gray   , trfENU: .GRAY     , img: .PENDING   , statusBar: .OK             ,isError: false ,running: false, isCompletet: false, buildCompletet: false, buildSuccessfull: false, textAppVisible: false, isAnnimated: false, text: "Pending Succeeded")
        case .COMPLETECANCELED:   return valxx(kvColor: .gray   , trfENU: .GRAY     , img: .CANCELED  , statusBar: .NEEDATTENTION  ,isError: false ,running: false, isCompletet: false, buildCompletet: true , buildSuccessfull: false ,textAppVisible: false, isAnnimated: false, text: "Canceld")
        case .COMPLETEDCANCELLED: return valxx(kvColor: .gray   , trfENU: .GRAY     , img: .CANCELED  , statusBar: .NEEDATTENTION  ,isError: false ,running: false, isCompletet: false, buildCompletet: true , buildSuccessfull: false ,textAppVisible: false, isAnnimated: false, text: "Canceld")
        case .COMPLETESKIPPED:    return valxx(kvColor: .gray   , trfENU: .GRAY     , img: .SKIPPED   , statusBar: .NEEDATTENTION  ,isError: false ,running: false, isCompletet: false, buildCompletet: true , buildSuccessfull: false ,textAppVisible: false, isAnnimated: false, text: "Skipped")
        case .DISABLED:           return valxx(kvColor: .red    , trfENU: .GRAY     , img: .SKIPPED   , statusBar: .NEEDATTENTION  ,isError: false ,running: false, isCompletet: false, buildCompletet: false, buildSuccessfull: false, textAppVisible: true , isAnnimated: false, text: "Disabled")
        case .ATTENTION:          return valxx(kvColor: .yellow , trfENU: .YELLOW   , img: .ATTENTION , statusBar: .NEEDATTENTION  ,isError: false ,running: false, isCompletet: false, buildCompletet: false, buildSuccessfull: false, textAppVisible: true , isAnnimated: false, text: "Need attention")
        case .other:              return valxx(kvColor: .clear  , trfENU: .UNDEFINED, img: .OTHER     , statusBar: .UNDEFINED      ,isError: false ,running: false, isCompletet: false, buildCompletet: false, buildSuccessfull: false, textAppVisible: false, isAnnimated: false, text: "Undefined")
        }
    }
    
    
    static let isFinalDic:              [CiStatusENUM:Bool]     = {  Dictionary(uniqueKeysWithValues:   CiStatusENUM.allCases.map {   ($0 , $0.keyss().isCompletet) })      }()
 
    static let colorDic:                [CiStatusENUM:Color]    = {  Dictionary(uniqueKeysWithValues:   CiStatusENUM.allCases.map {   ($0 , $0.keyss().kvColor) })          }()
    static let imageDic:                [CiStatusENUM:Image]    = {  Dictionary(uniqueKeysWithValues:   CiStatusENUM.allCases.map {   ($0 , $0.keyss().img) })              }()
    static let isAnnimatedDic:          [CiStatusENUM:Bool]     = {  Dictionary(uniqueKeysWithValues:   CiStatusENUM.allCases.map {   ($0 , $0.keyss().isAnnimated) })      }()
    static let textAppVisibleDic:       [CiStatusENUM:Bool]     = {  Dictionary(uniqueKeysWithValues:   CiStatusENUM.allCases.map {   ($0 , $0.keyss().textAppVisible) })   }()
    static let isRunningDic:            [CiStatusENUM:Bool]     = {  Dictionary(uniqueKeysWithValues:   CiStatusENUM.allCases.map {   ($0 , $0.keyss().running) })          }()
    static let isBuildConpletetDic:     [CiStatusENUM:Bool]     = {  Dictionary(uniqueKeysWithValues:   CiStatusENUM.allCases.map {   ($0 , $0.keyss().buildCompletet) })   }()
    static let isSuccessfullDic:        [CiStatusENUM:Bool]     = {  Dictionary(uniqueKeysWithValues:   CiStatusENUM.allCases.map {   ($0 , $0.keyss().buildSuccessfull) }) }()
    static let textDic:                 [CiStatusENUM:String]   = {  Dictionary(uniqueKeysWithValues:   CiStatusENUM.allCases.map {   ($0 , $0.keyss().text) })             }()
    
    static let asAppConnectionStatusDic:[CiStatusENUM:AppConnectionStatus]   = {  Dictionary(uniqueKeysWithValues:   CiStatusENUM.allCases.map {   ($0 , $0.keyss().statusBar) })                        }()
    static let asTrafficLightENUMDic:[CiStatusENUM:CiStatusTrafficLightENUM] = {  Dictionary(uniqueKeysWithValues:   CiStatusENUM.allCases.map {   ($0 , $0.keyss().trfENU)                           }) }()
    static let asAppConnectionStatusDotIconImageDic:[CiStatusENUM:AnyView]   = {  Dictionary(uniqueKeysWithValues:   CiStatusENUM.allCases.map {   ($0 , AnyView ($0.asTrafficLightENUM.asDotImage )) }) }()
    
    
    var color: Color                { CiStatusENUM.colorDic[self]               ?? .clear}
    var image: Image                { CiStatusENUM.imageDic[self]               ?? .OTHER}
    var isAnnimated: Bool           { CiStatusENUM.isAnnimatedDic[self]         ?? false }
    var textAppVisible: Bool        { CiStatusENUM.textAppVisibleDic[self]      ?? false }
    var isRunning: Bool             { CiStatusENUM.isRunningDic[self]           ?? false }
    var isBuildConpletet: Bool      { CiStatusENUM.isBuildConpletetDic[self]    ?? false }
    var isSuccessfull: Bool         { CiStatusENUM.isSuccessfullDic[self]       ?? false }
    var isFinal: Bool               { CiStatusENUM.isFinalDic[self]             ?? false }
    
    
    
     
    var text: String                { CiStatusENUM.textDic[self] ?? ""}
    var textApp: String             { CiStatusENUM.textDic[self] ?? ""}
     
    var asAppConnectionStatus: AppConnectionStatus            { CiStatusENUM.asAppConnectionStatusDic[self] ?? .UNDEFINED}
    
   
    var asTrafficLightENUM: CiStatusTrafficLightENUM  { CiStatusENUM.asTrafficLightENUMDic[self] ?? .UNDEFINED}
    var asAppConnectionStatusDotIconImage: AnyView   { CiStatusENUM.asAppConnectionStatusDotIconImageDic[self] ?? AnyView(EmptyView())}
    
    
    static let  runningStates: [CiStatusENUM] = {
        CiStatusENUM.allCases.filter {$0.keyss().running}
      }()
    
    static let  errorStates: [CiStatusENUM] = {
        CiStatusENUM.allCases.filter {$0.keyss().isError}
      }()
     
    static let  completetStates: [CiStatusENUM] = {
        CiStatusENUM.allCases.filter {$0.keyss().isCompletet}
      }()
    
    static func reduceStatus(statusArray: [CiStatusENUM] ) -> CiStatusENUM {
        
        if  statusArray.count == 0 {
            return CiStatusENUM.other
        }
        
        for state in CiStatusENUM.runningStates {
            if  ( statusArray.filter { $0 == state}.count > 0) {
                return state
            }
        }
        
        for state in CiStatusENUM.errorStates {
            guard ( statusArray.filter { $0 == state}.count == 0) else {return state }
        }
        
//        if statusArray.first != CiStatusENUM.WAITING_FOR_RESOURCE {
//            print (statusArray.first)
//        }
        for state in CiStatusENUM.completetStates {
            if  ( statusArray.filter { $0 == state}.count > 0) {
                return state
            }
        }
        
        return CiStatusENUM.other
        
    }
    
   
    public enum CiStatusTrafficLightENUM: String, Identifiable {
        
        public var id: String {
            self.rawValue
        }
        
        case RED
        case GREEN
        case BLUE
        case YELLOW
        case GRAY
        case UNDEFINED
        
        static let keyValDotImage: [CiStatusTrafficLightENUM: AnyView] = [
            .RED: Image.DOTRED  ,
            .GREEN: Image.DOTGREEN  ,
            .BLUE: Image.DOTBLUE  ,
            .YELLOW: Image.DOTYELLOW  ,
            .UNDEFINED: Image.DOTUNDEFINED  ,
            .GRAY: Image.DOTGRAY
            
        ]
        
        var asDotImage: AnyView {
            AnyView( CiStatusTrafficLightENUM.keyValDotImage[self] ?? Image.DOTUNDEFINED )
        }
        
    }
}


