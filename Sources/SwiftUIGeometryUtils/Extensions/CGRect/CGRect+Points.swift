import SwiftUI


extension CGRect {
    
    public var topLeading: CGPoint {
        .init(x: minX, y: minY)
    }
    
    public var topTrailing: CGPoint {
        .init(x: maxX, y: minY)
    }
    
    public var bottomTrailing: CGPoint {
        .init(x: maxX, y: maxY)
    }
    
    public var bottomLeading: CGPoint {
        .init(x: minX, y: maxY)
    }
    
    public var center: CGPoint {
        .init(x: midX, y: midY)
    }
}



// MARK: - Dimension Utilities
extension CGRect
    
    /// The number of points spanned by the smallest dimension of the rectangle.
    ///
    /// 2-D Rectangles have two dimensions: a ["width" and a "length"](https://elementarymath.edc.org/resources/measurement-length-width-height-depth/)
    public var minimumDimensionSpan: CGFloat {
        min(width, height)
    }
    
    
    /// The number of points spanned by the largest dimension of the rectangle.
    ///
    /// 2-D Rectangles have two dimensions: a ["width" and a "length"](https://elementarymath.edc.org/resources/measurement-length-width-height-depth/)
    public var maximumDimensionSpan: CGFloat {
        max(width, height)
    }
}
