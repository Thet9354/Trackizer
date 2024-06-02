//
//  UIStateModel.swift
//  Trackizer
//
//  Created by Phoon Thet Pine on 14/2/24.
//

import SwiftUI

public class UIStateModel: ObservableObject
{
    @Published var activeCard: Int = 0
    @Published var screenDrag: Float = 0.0
}

