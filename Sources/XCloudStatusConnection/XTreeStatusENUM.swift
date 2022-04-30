
import Foundation
import SwiftUI
public enum XTreeStatusENUM : String, Identifiable {
    
    public var id:String {
        self.rawValue
    }
    
    case INIT
    case FETCHING
    case DONE
    case ERROR
       
    public var name: String {
        switch self {
        case .INIT:     return "Initialised"
        case .FETCHING: return "Fetching"
        case .DONE:     return "Done"
        case .ERROR:    return "Error"
        }
    }
    
    public var isFetching: Bool {
        self == .FETCHING
    }
    
    public var isError: Bool {
        self == .ERROR
    }
    
    public var dotImage: some View {
        switch (self) {
        case .INIT:             return Image(systemName: "circle"     ).resizable() .renderingMode(.original).foregroundStyle(.gray, .gray, .gray)
        case .FETCHING:         return Image(systemName: "circle.fill").resizable() .renderingMode(.original).foregroundStyle(.gray, .gray, .gray)
        case .DONE:             return Image(systemName: "circle.fill").resizable() .renderingMode(.original).foregroundStyle(.green, .green, .green)
        case .ERROR:            return Image(systemName: "circle.fill").resizable() .renderingMode(.original).foregroundStyle(.red, .red, .red)
        }
        
    }
}


