import Foundation
 
public enum FetchCredKeys: String, Identifiable {
    public var id: String { self.rawValue}
    
    case GITHUB_ACCOUNT
    case GITHUB_KEY
    case GITHUB_REPONAME
    case GITHUB_URL
    case APPLE_ISSUERID
    case APPLE_KEY
    case APPLE_KEYID
    case JENKINS_USERNAME
    case JENKINS_PASSWORD
    case JENKINS_URL
    case JENKINS_CREB
    case TREVIS_TOKEN
    case GITLAB_ACCOUNT
    case GITLAB_HOST
    case GITLAB_TOKEN
    case BAMBOO_TOKEN
    case BAMBOO_URL
    
    public static var allKeys  : [FetchCredKeys] { [
        GITHUB_ACCOUNT,
        GITHUB_KEY,
        GITHUB_REPONAME,
        APPLE_ISSUERID,
        APPLE_KEY,
        APPLE_KEYID,
        BAMBOO_TOKEN,
        BAMBOO_URL,
        JENKINS_USERNAME,
        JENKINS_PASSWORD,
        GITLAB_ACCOUNT,
        GITLAB_TOKEN,
        GITLAB_HOST,
        JENKINS_URL,
        TREVIS_TOKEN
    ]
    }
    
    public var promtString  : String {
        switch self {
            case .GITHUB_ACCOUNT        : return "Username"
            case .GITHUB_KEY            : return "Token"
            case .GITHUB_REPONAME       : return "Repname"
            case .GITHUB_URL            : return "Host"
            case .APPLE_ISSUERID        : return "IssuerID"
            case .APPLE_KEY             : return "Key"
            case .APPLE_KEYID           : return "KeyID"
            case .BAMBOO_TOKEN          : return "Token"
            case .BAMBOO_URL            : return "Host"
            case .JENKINS_USERNAME      : return "Username"
            case .JENKINS_PASSWORD      : return "Password"
            case .GITLAB_ACCOUNT        : return "Username"
            case .GITLAB_TOKEN          : return "Token"
            case .GITLAB_HOST           : return "Host"
            case .JENKINS_URL           : return "Host"
            case .TREVIS_TOKEN          : return "Token"
            case .JENKINS_CREB          : return "Token"
           
       
        }
    }
    
    public  var isPassword  : Bool {
        switch self {
            case .GITHUB_ACCOUNT        : return false
            case .GITHUB_KEY            : return true
            case .GITHUB_REPONAME       : return false
            case .GITHUB_URL            : return false
            case .APPLE_ISSUERID        : return false
            case .APPLE_KEY             : return true
            case .APPLE_KEYID           : return false
            case .BAMBOO_TOKEN          : return true
            case .BAMBOO_URL            : return false
            case .JENKINS_USERNAME      : return false
            case .JENKINS_PASSWORD      : return true
            case .GITLAB_ACCOUNT        : return false
            case .GITLAB_TOKEN          : return true
            case .GITLAB_HOST           : return false
            case .JENKINS_URL           : return false
            case .TREVIS_TOKEN          : return true
            case .JENKINS_CREB          : return false
        }
    }
    
    
    public var placeholderString  : String {
        switch self {
            case .GITHUB_ACCOUNT        : return "octocat"
            case .GITHUB_KEY            : return "key"
            case .GITHUB_REPONAME       : return "reponame"
            case .APPLE_ISSUERID        : return "issuerid"
            case .APPLE_KEY             : return "key"
            case .APPLE_KEYID           : return "keyID"
            case .BAMBOO_TOKEN          : return "token"
            case .BAMBOO_URL            : return "https://example.com"
            case .JENKINS_USERNAME      : return "Username"
            case .JENKINS_PASSWORD      : return "Password"
            case .GITLAB_ACCOUNT        : return "account"
            case .GITLAB_TOKEN          : return "token"
            case .GITLAB_HOST           : return "https://example.com"
            case .JENKINS_URL           : return "https://example.com"
            case .TREVIS_TOKEN          : return "token"
            case .JENKINS_CREB          : return "password"
            case .GITHUB_URL            : return "https://example.com"
           
        }
    }
}
