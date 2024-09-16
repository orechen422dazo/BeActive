import SwiftUI

@main
struct BeActiveApp: App {
    @StateObject var manager = HealthManager()
    
    var body: some Scene {
        WindowGroup {
            BeActiveTabView()
                .environmentObject(manager)
        }
    }
}
