import Combine
import Swinject

public struct AddShopResult {
    
    public enum Action {
        case showHomePage
        case showBusinessProfile
    }
    
    public init(vc: UIViewController, id: String, action: Action) {
        self.vc = vc
        self.id = id
        self.action = action
    }
    
    public let vc: UIViewController
    public let id: String
    public let action: Action
}

public enum AddShopError: Error {
    case flowCancelled
}

public protocol CreateShopFlowApi {
        
    func startFlow(in viewController: UIViewController, di: Container) -> AnyPublisher<AddShopResult, AddShopError>
    
}
