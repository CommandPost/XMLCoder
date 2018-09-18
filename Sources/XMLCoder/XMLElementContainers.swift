//
//  XMLElementContainers.swift
//  XMLCoder
//
//  Created by Frank on 24/08/2018.
//  Copyright © 2018 Frank Lefebvre. All rights reserved.
//

import Foundation

protocol XMLEncodingContainer {
    var nodes: [XMLNode] { get }
    var attributes: [XMLNode] { get }
}

class UnkeyedXMLElementContainer: XMLEncodingContainer {
    var nodes: [XMLNode] = []
    var attributes: [XMLNode] = []
}

class KeyedXMLElementContainer: XMLEncodingContainer {
    var nodes: [XMLNode] = []
    var attributes: [XMLNode] = []
}

class SingleXMLElementContainer: XMLEncodingContainer {
    var nodes: [XMLNode] = []
    var attributes: [XMLNode] = []
}

struct CodableXMLString<T>: Encodable, ExpressibleByStringLiteral {
    typealias StringLiteralType = String
    
    let value: String
    
    init(stringLiteral: StringLiteralType) {
        self.value = stringLiteral
    }
}

enum InlineTextType {}
enum AttributeType {}

typealias CodableXMLInlineText = CodableXMLString<InlineTextType>
typealias CodableXMLAttribute = CodableXMLString<AttributeType>

protocol XMLQualifiedKey {
    var namespace: String? { get }
}
