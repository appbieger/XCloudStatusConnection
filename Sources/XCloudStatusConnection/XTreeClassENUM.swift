 
import Foundation
 
public enum XTreeClassENUM : String, Identifiable {
    public var id:String {  self.rawValue  }
  
    case ACCOUNT                    = "com.appbieger.xc.acc"
    case ACCOUNT_GITHUB_TOKEN             = "com.appbieger.xc.acc.github.token"
    case ACCOUNT_GITHUB_OAUTH             = "com.appbieger.xc.acc.github.oauth"
    case ACCOUNT_GITHUB_ENTERPRISE_TOKEN   = "com.appbieger.xc.acc.github.enterprise.token"
    case ACCOUNT_GITHUB_ENTERPRISE_OAUTH  = "com.appbieger.xc.acc.github.enterprise.oauth"
    case ACCOUNT_GITHUB_ENTERPRISE_BASIC  = "com.appbieger.xc.acc.github.enterprise.basic"
    case ACCOUNT_APPLE              = "com.appbieger.xc.acc.apple"
    case ACCOUNT_TREVISCI           = "com.appbieger.xc.acc.travisci"
    case ACCOUNT_JENKINS            = "com.appbieger.xc.acc.jenkins"
    case ACCOUNT_BAMBOO             = "com.appbieger.xc.acc.bamboo"
    case ACCOUNT_GITLAB             = "com.appbieger.xc.acc.gitlab"
    case ACCOUNT_GITLAB_ENTERPRISE  = "com.appbieger.xc.acc.gitlab.enterprise"
    case PROJECT                    = "com.appbieger.xc.project"
    case WORFKLOW                   = "com.appbieger.xc.workflow"
    case BUILD                      = "com.appbieger.xc.build"
    case LOG                        = "com.appbieger.xc.log"
    case APPSTATUS                  = "com.appbieger.xc.appstatus"
    case ALL                        = "com.appbieger.xc"
    case UNKNOWN                    = ""
    
    public var accountIDs: [XTreeClassENUM] {
        [   .ACCOUNT_GITHUB_TOKEN,
            .ACCOUNT_APPLE,
            .ACCOUNT_TREVISCI,
            .ACCOUNT_BAMBOO,
            .ACCOUNT_JENKINS,
            .ACCOUNT_GITLAB,
            .ACCOUNT_GITHUB_ENTERPRISE_BASIC,
            .ACCOUNT_GITHUB_ENTERPRISE_OAUTH,
            .ACCOUNT_GITHUB_ENTERPRISE_TOKEN,
            .ACCOUNT_GITLAB_ENTERPRISE
        ]
    }
    
    public  static var accountIDsAddable: [XTreeClassENUM] {
        [   .ACCOUNT_GITHUB_TOKEN,
            .ACCOUNT_GITLAB,
            .ACCOUNT_APPLE,
            .ACCOUNT_BAMBOO,
            .ACCOUNT_GITHUB_ENTERPRISE_TOKEN,
            .ACCOUNT_GITLAB_ENTERPRISE,
            .ACCOUNT_JENKINS,
            .ACCOUNT_TREVISCI
           
        ]
    }
    
    
    public var hasSecoundConnectionType: Bool {
        !secoundConnection.isEmpty
    }
    
    public var secoundConnection : [XTreeClassENUM] {
        switch self {
            
        case .ACCOUNT_GITHUB_TOKEN:      return [.ACCOUNT_GITHUB_TOKEN, .ACCOUNT_GITHUB_OAUTH ]
        case .ACCOUNT_GITHUB_OAUTH:      return [.ACCOUNT_GITHUB_TOKEN, .ACCOUNT_GITHUB_OAUTH ]
   
        default: return [XTreeClassENUM]()
        }
    }
    
     
    
    public  var accountCreateTokenURL : URL? {
        switch self {
        case .ACCOUNT_GITHUB_TOKEN:   return URL(string: "https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token")
        case .ACCOUNT_APPLE:    return URL(string: "https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token")
        case .ACCOUNT_TREVISCI: return URL(string: "https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token")
        case .ACCOUNT_BAMBOO:   return URL(string: "https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token")
            
        default: return nil
        }
    }
    
    public var accountCreateTokenURLVisible : Bool{
        accountCreateTokenURL != nil
    }
    
    public  var accountCreateTokenURLButtonLabel : String? {
        switch self {
        case .ACCOUNT_GITHUB_TOKEN:    return  "Create a Token on GitHub"
        case .ACCOUNT_APPLE:     return  "Create a Token on Xcode Cloud"
        case .ACCOUNT_TREVISCI:  return  "Create a Token on Trevis CI"
        case .ACCOUNT_BAMBOO:    return  "Create a Token on Bamboo CI"
            
        default: return nil
        }
    }
    
    public var fetchableTypes: [XTreeClassENUM] {
        [   .ACCOUNT_GITHUB_TOKEN,
            .ACCOUNT_APPLE,
            .ACCOUNT_TREVISCI,
            .ACCOUNT_JENKINS,
            .ACCOUNT_BAMBOO,
            .ACCOUNT_GITLAB,
            .ACCOUNT_GITHUB_ENTERPRISE_BASIC,
            .ACCOUNT_GITHUB_ENTERPRISE_OAUTH,
            .ACCOUNT_GITHUB_ENTERPRISE_TOKEN,
            .ACCOUNT_GITLAB_ENTERPRISE,
            .PROJECT,
            .WORFKLOW,
            .BUILD
        ]
    }
    

    
    public func isFetchable() -> Bool {
        !fetchableTypes.filter{$0 == self}.isEmpty
    }
    
    public func isAcc() -> Bool {
        !accountIDs.filter{$0 == self}.isEmpty
    }
    
   public  var name: String {
        switch self {
        case .ACCOUNT:                   return "App"
        case .WORFKLOW:                  return "Workflow"
        case .PROJECT:                   return "Project"
        case .BUILD:                     return "Build"
        case .UNKNOWN:                   return "UNKNOWN"
        case .ACCOUNT_GITHUB_TOKEN:            return "GitHub"
        case .ACCOUNT_APPLE:             return "Xcode Cloud"
        case .ACCOUNT_BAMBOO:            return "Bamboo"
        case .ACCOUNT_TREVISCI:          return "Travis CI"
        case .ACCOUNT_JENKINS:           return "Jenkis"
        case .LOG:                       return "Log"
        case .APPSTATUS:                 return "App Status"
        case .ALL:                       return "All"
        case .ACCOUNT_GITLAB:            return "GitLab"
        case .ACCOUNT_GITHUB_ENTERPRISE_BASIC,
                .ACCOUNT_GITHUB_ENTERPRISE_OAUTH,
                .ACCOUNT_GITHUB_ENTERPRISE_TOKEN: return "GitHub Enterprise"
        case .ACCOUNT_GITLAB_ENTERPRISE: return "GitLab Enterprise"
        case .ACCOUNT_GITHUB_OAUTH:   return "GitHub"
            
        }
        
    }
    
    public var authName: String {
        switch self {
        case .ACCOUNT_GITHUB_TOKEN:                   return "Personal Access Token"
        case .ACCOUNT_GITHUB_OAUTH:                   return "OAuth Access Token"
 
        default: return "Undefined"
        }
        
    }
    

}
