//
//  PNLAssitantNodeContract.swift
//  POPatterns
//
//  Created by Yaroslav Abaturov on 22.03.2024.
//

enum AppLocalDatabaseNodeActionType {
    case setupSubscription
    //Session
    case runSession
    //Calc
    case calculate(with: (data: AppModelFormula, completion: ))
}
