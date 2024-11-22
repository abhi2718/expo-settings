
import ExpoModulesCore
import SwiftUI

// Define the ExpoSettingsView class to show only the SwiftUI button
class ExpoSettingsView: ExpoView {
    var buttonHostingController: UIHostingController<SwiftUIButtonView>?

    required init(appContext: AppContext? = nil) {
        super.init(appContext: appContext)
        clipsToBounds = true

        // Set up SwiftUI button view
        let buttonView = SwiftUIButtonView(
            title: "Press Me",
            onPress: {
                print("Button Pressed!")
                // Add your button press logic here
            }
        )
        
        // Host the SwiftUI view using UIHostingController
        buttonHostingController = UIHostingController(rootView: buttonView)
        
        if let buttonHostingView = buttonHostingController?.view {
            addSubview(buttonHostingView)
        }
    }

    override func layoutSubviews() {
        super.layoutSubviews()

        // Layout the SwiftUI button to fill the entire view
        buttonHostingController?.view.frame = bounds
    }
}

