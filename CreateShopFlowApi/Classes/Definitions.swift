import Combine
import Swinject

public struct AddShopResult {
    
    public init(vc: UIViewController, id: String) {
        self.vc = vc
        self.id = id
    }
    
    public let vc: UIViewController
    public let id: String
}

public enum AddShopError: Error {
    case flowCancelled
}

public protocol CreateShopFlowApi {
        
    func startFlow(in viewController: UIViewController, di: Container) -> AnyPublisher<AddShopResult, AddShopError>
    
}
