//
//  ExtentionString.swift
//  applebox
//
//  Created by eqat on 2020/10/09.
//  Copyright © 2020 Eqat. All rights reserved.
//

import UIKit

extension String {

    func localized(comment: String = "") -> (String) {
        return NSLocalizedString(self, comment: comment)
    }
}
