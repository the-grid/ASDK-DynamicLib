//
//  RootNode.swift
//  ASDK-DynamicLib
//
//  Created by Nicholas Velloff on 6/17/16.
//  Copyright © 2016 The Grid. All rights reserved.
//

import Foundation

class RootNode: ASDisplayNode, ASNetworkImageNodeDelegate {
    
    let backgroundNode: ASDisplayNode
    let imageNode: ASNetworkImageNode
    
    override init() {
        backgroundNode = ASDisplayNode()
        imageNode = ASNetworkImageNode()
        imageNode.contentMode = .ScaleAspectFit
        imageNode.needsDisplayOnBoundsChange = false
        imageNode.layerBacked = true
        
        super.init()
        
        usesImplicitHierarchyManagement = true
        imageNode.delegate = self
        
        guard let url = NSURL(string: "http://asyncdisplaykit.org/static/logo.png") else { fatalError() }
        imageNode.URL = url
    }
    
    override func layoutSpecThatFits(constrainedSize: ASSizeRange) -> ASLayoutSpec {
        print("layoutSpecThatFits: \(constrainedSize)")
        let bgSpec = ASBackgroundLayoutSpec(child: backgroundNode, background: imageNode)
        backgroundNode.preferredFrameSize = constrainedSize.max
        return bgSpec
    }
    
    // MARK: --- ASNetworkImageNodeDelegate ---
    
    func imageNode(imageNode: ASNetworkImageNode, didLoadImage image: UIImage) {
        
    }
    
    func imageNodeDidStartFetchingData(imageNode: ASNetworkImageNode) {
        
    }
    
    func imageNode(imageNode: ASNetworkImageNode, didFailWithError error: NSError) {
        
    }
    
    func imageNodeDidFinishDecoding(imageNode: ASNetworkImageNode) {
        
    }
    
}