//
//  ContentView.swift
//  Example
//
//  Created by Macbook on 25/2/26.
//

import SwiftUI
import KinisBalanceAIKit
import Combine

struct TempPayload: Equatable {
    static func == (lhs: TempPayload, rhs: TempPayload) -> Bool {
        lhs.id == rhs.id
    }
    
    let id = UUID()
    let data: [String: Any]
}

@MainActor
public class AppCoordinator: ObservableObject {
    @Published var tempPayload: TempPayload?
    @Published public var path: NavigationPath
    @Published var id = UUID()
    
    public init(path: NavigationPath = NavigationPath()) {
        self.path = path
    }
    
    public func push(page: CoordinateData) {
        path.append(page)
    }
    
    public func pop(_ payload: [String: Any]? = nil) {
        path.removeLast()
        if let payload {
            tempPayload = TempPayload(data: payload)
        }
    }
    
    public func reset() {
        self.id = UUID()
    }
    
    public func popToRoot(_ payload: [String: Any]? = nil) {
        path.removeLast(path.count)
        if let payload {
            tempPayload = TempPayload(data: payload)
        }
    }
}

public class CoordinateData: Hashable {
    let page: String
    
    public init(page: String) {
        self.page = page
    }
    
    public static func == (lhs: CoordinateData, rhs: CoordinateData) -> Bool {
        let lhsType = type(of: lhs)
        let rhsType = type(of: rhs)
        if lhsType == rhsType {
            return lhs.equalsTo(rhs)
        } else {
            return false
        }
    }
    
    func equalsTo(_ rhs: CoordinateData) -> Bool {
        self.page == rhs.page
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(page)
    }
}

struct ContentView: View {
    @State var showSDK = false
    
    var body: some View {
        NavigationStack {
            NavigationLink("Take Test") {
                KinisBalanceView(
                    KinisBalanceConfig(
                        apiKey: "yyy", style: StyleConfig(color: ColorConfig(), cardStrokeStyle: AnyShapeStyle(LinearGradient(colors: [.red, .blue], startPoint: .leading, endPoint: .trailing))),
                        userInfo: KinisUserInfo(
                            id: "123",
                            yob: 1998,
                            name: "Marc",
                            gender: .male,
                            language: .vi
                        )
                    )
                )
            }
        }
    }
}
#Preview {
    ContentView()
}
