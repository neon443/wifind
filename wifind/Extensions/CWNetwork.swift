//
//  CWNetwork.swift
//  wifind
//
//  Created by neon443 on 04/11/2025.
//

import Foundation
import CoreWLAN

extension CWNetwork {
	func codable() -> CWNetworkCodable {
		return CWNetworkCodable(self)
	}
}
