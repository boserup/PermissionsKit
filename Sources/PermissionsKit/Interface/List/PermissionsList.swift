// The MIT License (MIT)
// Copyright © 2020 Sparrow Code LTD (https://sparrowcode.io, hello@sparrowcode.io)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

#if os(iOS) && canImport(SwiftUI)
import SwiftUI

@available(iOS 13.0, *)
@available(iOSApplicationExtension, unavailable)
public struct PermissionsList: UIViewControllerRepresentable {
    
    private weak var dataSource: PermissionsDataSource?
    private weak var delegate: PermissionsDelegate?
    
    private var permissions: [Permission]
    
    public init(permissions: [Permission], dataSource: PermissionsDataSource? = nil, delegate: PermissionsDelegate? = nil) {
        self.permissions = permissions
        self.dataSource = dataSource
        self.delegate = delegate
    }
    
    // MARK: - UIViewControllerRepresentable
    
    public typealias UIViewControllerType = UINavigationController
    
    public func makeUIViewController(context: Context) -> UINavigationController {
        let controller = PermissionsListController(permissions)
        controller.dataSource = self.dataSource
        controller.delegate = self.delegate
        return UINavigationController(rootViewController: controller)
    }
    
    public func updateUIViewController(_ uiViewController: UINavigationController, context: Context) {}
}
#endif
