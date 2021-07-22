import SwiftUI


public enum RectangleCorner: Hashable {
    case topLeading
    case topTrailing
    case bottomLeading
    case bottomTrailing
}


extension RectangleCorner {
    
    public func opposite(alongAxis axis: Axis) -> Self {
        switch axis {
        case .horizontal:
            switch self {
            case .topLeading:
                return .bottomLeading
            case .topTrailing:
                return .bottomTrailing
            case .bottomLeading:
                return .topLeading
            case .bottomTrailing:
                return .bottomTrailing
            }
        case .vertical:
            switch self {
            case .topLeading:
                return .topTrailing
            case .topTrailing:
                return .topLeading
            case .bottomLeading:
                return .bottomTrailing
            case .bottomTrailing:
                return .bottomLeading
            }
        }
    }
}

extension RectangleCorner: CaseIterable {}


// MARK: - `UIRectCorner` + Init with `RectangleCorners`

#if os(iOS) || os(tvOS) || targetEnvironment(macCatalyst)

extension UIRectCorner {
    
    public init(_ corners: [RectangleCorner]) {
        self.init()
        
        for corner in corners {
            switch corner {
                case .topLeading:
                    formUnion(.topLeft)
                case .topTrailing:
                    formUnion(.topRight)
                case .bottomLeading:
                    formUnion(.bottomLeft)
                case .bottomTrailing:
                    formUnion(.bottomRight)
            }
        }
    }
}


extension Array where Element == RectangleCorner {
    
    public init(_ corners: UIRectCorner) {
        self.init()
        
        if corners.contains(.topLeft) {
            append(.topLeading)
        }
        
        if corners.contains(.topRight) {
            append(.topTrailing)
        }
        
        if corners.contains(.bottomLeft) {
            append(.bottomLeading)
        }
        
        if corners.contains(.bottomRight) {
            append(.bottomTrailing)
        }
    }
}

#endif
