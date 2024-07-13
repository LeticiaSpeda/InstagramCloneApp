import Foundation
import Combine

final class UserSessionService: ObservableObject {
    @Published var session: UserSession?
    
    func login() {
        session = .init(user: .init(name: "Leticia"), token: UUID().uuidString)
    }
    
    func logout() {
        session = nil
    }
}
