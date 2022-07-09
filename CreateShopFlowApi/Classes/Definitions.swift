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
    case flowCancelled(_ vc: UIViewController)
}


public struct EditShopFlowRequest {
    
    
    public let id: String
    public let name: String?
    public let description: String?
    public let shopNumber: String?
    public let keywords: [String]
    public let companyType: String
    public let categories: [String]
    public let deliveryMethods: [String]
    public let countries: [String]
    public let qtyOptions: String?
    
    public let phoneNumbers: [String]
    public let websites: [String]
    public let email: String?
    
    public let foundedCountry: String?
    public let address: String?
    public let city: String?
    
    public let coverImage: String?
    public let images: [String]
    
    public init(id: String, name: String?, description: String?, shopNumber: String?, keywords: [String], companyType: String, categories: [String], deliveryMethods: [String], countries: [String], qtyOptions: String?, phoneNumbers: [String], websites: [String], email: String?, foundedCountry: String?, address: String?, city: String?, coverImage: String?, images: [String]) {
        self.id = id
        self.name = name
        self.description = description
        self.shopNumber = shopNumber
        self.keywords = keywords
        self.companyType = companyType
        self.categories = categories
        self.deliveryMethods = deliveryMethods
        self.countries = countries
        self.qtyOptions = qtyOptions
        self.phoneNumbers = phoneNumbers
        self.websites = websites
        self.email = email
        self.foundedCountry = foundedCountry
        self.address = address
        self.city = city
        self.coverImage = coverImage
        self.images = images
    }
}

public protocol CreateShopFlowApi {
        
    func startFlow(in viewController: UIViewController, fromOnBoarding: Bool) -> AnyPublisher<AddShopResult, AddShopError>
    
    func startEditFlow(in viewController: UIViewController, request: EditShopFlowRequest) -> AnyPublisher<AddShopResult, AddShopError>
     
}
