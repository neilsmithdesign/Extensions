//
//  UIImage+Ext.swift
//  
//
//  Created by Neil Smith on 26/08/2019.
//

import UIKit
import CoreImage

public extension UIImage {
    
    class func with(color: UIColor) -> UIImage? {
        
        let rect = CGRect(x: 0, y: 0, width: 1, height: 1)
        UIGraphicsBeginImageContextWithOptions(rect.size, false, 0)
        guard let context = UIGraphicsGetCurrentContext() else { return nil }
        color.setFill()
        context.fill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
        
    }
    
}


public extension UIImage {
    
    enum NoirImageError: String, Error {
        case invalidURLSupplied
        case invalidFilterName
        case unableToObtainOutputImage
        case unableToCreateCGImage
    }
    
    class `func makeNoir(imageFrom url: URL) throws -> UIImage? {
        let context = CIContext()
        guard let image = CIImage(contentsOf: url) else { throw NoirImageError.invalidURLSupplied }
        guard let filter = CIFilter(name: "CIPhotoEffectNoir") else { throw NoirImageError.invalidFilterName }
        filter.setValue(image, forKey: kCIInputImageKey)
        guard let output = filter.outputImage else { throw NoirImageError.unableToObtainOutputImage }
        guard let cgImage = context.createCGImage(output, from: output.extent) else { throw NoirImageError.unableToCreateCGImage }
        return UIImage(cgImage: cgImage)
    }
    
}
