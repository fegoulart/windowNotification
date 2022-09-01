//
//  ConnectivityStatusView.swift
//  windowsNotification
//
//  Created by Fernando Luiz Goulart on 01/09/22.
//

import Foundation
import UIKit

final class ConnectivityStatusView: UIView {

    lazy var messageLabel: UILabel = {
        var label = UILabel()
        label.text = "SEM INTERNET"
        label.textColor = .white
        label.textAlignment = .center
        label.setContentHuggingPriority(.required, for: .vertical)
        return label
    }()

    init() {
        super.init(frame: .zero)
        buildView()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension ConnectivityStatusView: ViewCodeProtocol {
    func setupHierarchy() {
        addSubviewWithConstraints(
            subview: messageLabel,
            leading: 16, trailing: -16,
            top: 6, bottom: -6
        )
    }

    func setupConstraints() { }

    func additionalSetup() {
        backgroundColor = .orange
    }
}
