//
//  INDITextProperty.swift
//  SwiftINDI
//
//  Created by Don Willems on 18/03/2020.
//  Copyright © 2020 lapsedpacifist. All rights reserved.
//

import Foundation

/**
 * Instances of this class represent an INDI text property vector, which is a vector of
 * text properties that holds one or more properties with textual information.
 */
public class INDITextPropertyVector : INDIDefaultPropertyVector {
    
    /**
     * Initialises the INDI text property vector with the supplied values. INDI properties and
     * property vectors should only be created within the SwiftINDI framework.
     *
     * - Parameter name: The name of the INDI text property vector.
     * - Parameter device: The device for which this INDI text property is valid.
     * - Parameter label: The name of the INDI text property that should be used in a graphical user interface (GUI),
     * i.e. a human readable name. If this property is not defined (i.e. is `nil`), the `name`
     * of the INDI property should be used as the label.  This value is optional.
     * - Parameter group: A name for the group of properties containing
     * this INDI text property vector. This value is optional.
     * - Parameter state: The state (idle, ok, busy, or alert) of the property.
     * - Parameter read: True when the client can read the INDI text property.
     * - Parameter write: True when the client can write to the property, i.e. change the property value.
     * - Parameter timeout: The worse-case time to affect. The default value should be `0`. If the INDI text property is read only, this property
     * is not relevant.
     * - Parameter timestamp: The moment when the propery was valid.
     * - Parameter message: An optional comment on the property.
     */
    init(_ name: String, device: INDIDevice, label: String?, group: String?, state: INDIPropertyState, read: Bool, write: Bool, timeout: Int, timestamp: Date?, message: String?) {
        super.init(name, of: .textProperty, device: device, label: label, group: group, state: state, read: read, write: write, timeout: timeout, timestamp: timestamp, message: message)
    }
}

/**
 * Instances of this class represent an INDI text property, which is a property that holds
 * textual information.
 */
public class INDITextProperty : INDIDefaultProperty {
    
    /**
     * Initialises the INDI text property with the supplied values. INDI properties and
     * property vectors should only be created within the SwiftINDI framework.
     *
     * - Parameter name: The name of the INDI text property.
     * - Parameter label: The name of the INDI text property that should be used in a graphical user interface (GUI),
     * i.e. a human readable name. If this property is not defined (i.e. is `nil`), the `name`
     * of the INDI property should be used as the label.
     * - Parameter vector: The INDI text property vector to which this property will be added as a member.
     */
    init(_ name: String, label: String?, inPropertyVector vector: INDITextPropertyVector) {
        super.init(name, of: .textProperty, label: label, inPropertyVector: vector)
    }
    
    /**
     * The current value of the text property, or `nil` if the property's value has not been set.
     */
    public var textValue : String? {
        get {
            return value as? String
        } set {
            value = newValue
        }
    }
}
