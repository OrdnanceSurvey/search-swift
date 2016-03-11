//
//  SearchResult.swift
//
//  Created by Dave Hardiman on 11/03/2016
//  Copyright (c) Ordnance Survey. All rights reserved.
//

import Foundation
import OSJSON

public class SearchResult: NSObject {

    // MARK: Properties
    public let language: String
    public let lastUpdateDate: String
    public let rpc: String
    public let buildingNumber: String?
    public let postcode: String
    public let uprn: String
    public let matchDescription: String
    public let entryDate: String
    public let postalAddressCode: String
    public let localCustodianCode: Int
    public let status: String
    public let blpuStateCode: String?
    public let organisationName: String?
    public let postalAddressCodeDescription: String
    public let classificationCodeDescription: String
    public let xCoordinate: Int
    public let match: Float
    public let classificationCode: String
    public let topographyLayerToid: String?
    public let localCustodianCodeDescription: String
    public let blpuStateCodeDescription: String
    public let dependentLocality: String?
    public let logicalStatusCode: String
    public let yCoordinate: Int
    public let thoroughfareName: String?
    public let address: String
    public let postTown: String
    public let blpuStateDate: String?


    init(language: String, lastUpdateDate: String, rpc: String, buildingNumber: String?, postcode: String, uprn: String, matchDescription: String, entryDate: String, postalAddressCode: String, localCustodianCode: Int, status: String, blpuStateCode: String?, organisationName: String?, postalAddressCodeDescription: String, classificationCodeDescription: String, xCoordinate: Int, match: Float, classificationCode: String, topographyLayerToid: String?, localCustodianCodeDescription: String, blpuStateCodeDescription: String, dependentLocality: String?, logicalStatusCode: String, yCoordinate: Int, thoroughfareName: String?, address: String, postTown: String, blpuStateDate: String?) {
        self.language = language
        self.lastUpdateDate = lastUpdateDate
        self.rpc = rpc
        self.buildingNumber = buildingNumber
        self.postcode = postcode
        self.uprn = uprn
        self.matchDescription = matchDescription
        self.entryDate = entryDate
        self.postalAddressCode = postalAddressCode
        self.localCustodianCode = localCustodianCode
        self.status = status
        self.blpuStateCode = blpuStateCode
        self.organisationName = organisationName
        self.postalAddressCodeDescription = postalAddressCodeDescription
        self.classificationCodeDescription = classificationCodeDescription
        self.xCoordinate = xCoordinate
        self.match = match
        self.classificationCode = classificationCode
        self.topographyLayerToid = topographyLayerToid
        self.localCustodianCodeDescription = localCustodianCodeDescription
        self.blpuStateCodeDescription = blpuStateCodeDescription
        self.dependentLocality = dependentLocality
        self.logicalStatusCode = logicalStatusCode
        self.yCoordinate = yCoordinate
        self.thoroughfareName = thoroughfareName
        self.address = address
        self.postTown = postTown
        self.blpuStateDate = blpuStateDate
    }







    //MARK: JSON initialiser
    convenience init?(json: JSON) {
        guard let language = json.stringValueForKey(SearchResult.LanguageKey),        
lastUpdateDate = json.stringValueForKey(SearchResult.LastUpdateDateKey),        
rpc = json.stringValueForKey(SearchResult.RpcKey),        
buildingNumber = json.stringValueForKey(SearchResult.BuildingNumberKey),        
postcode = json.stringValueForKey(SearchResult.PostcodeKey),        
uprn = json.stringValueForKey(SearchResult.UprnKey),        
matchDescription = json.stringValueForKey(SearchResult.MatchDescriptionKey),        
entryDate = json.stringValueForKey(SearchResult.EntryDateKey),        
postalAddressCode = json.stringValueForKey(SearchResult.PostalAddressCodeKey),
status = json.stringValueForKey(SearchResult.StatusKey),        
blpuStateCode = json.stringValueForKey(SearchResult.BlpuStateCodeKey),        
organisationName = json.stringValueForKey(SearchResult.OrganisationNameKey),        
postalAddressCodeDescription = json.stringValueForKey(SearchResult.PostalAddressCodeDescriptionKey),        
classificationCodeDescription = json.stringValueForKey(SearchResult.ClassificationCodeDescriptionKey),        
classificationCode = json.stringValueForKey(SearchResult.ClassificationCodeKey),
topographyLayerToid = json.stringValueForKey(SearchResult.TopographyLayerToidKey),        
localCustodianCodeDescription = json.stringValueForKey(SearchResult.LocalCustodianCodeDescriptionKey),        
blpuStateCodeDescription = json.stringValueForKey(SearchResult.BlpuStateCodeDescriptionKey),        
dependentLocality = json.stringValueForKey(SearchResult.DependentLocalityKey),        
logicalStatusCode = json.stringValueForKey(SearchResult.LogicalStatusCodeKey),
thoroughfareName = json.stringValueForKey(SearchResult.ThoroughfareNameKey),        
address = json.stringValueForKey(SearchResult.AddressKey),        
postTown = json.stringValueForKey(SearchResult.PostTownKey),        
blpuStateDate = json.stringValueForKey(SearchResult.BlpuStateDateKey)
        else {
            return nil
        }
        let localCustodianCode = json.intValueForKey(SearchResult.LocalCustodianCodeKey)
        let xCoordinate = json.intValueForKey(SearchResult.XCoordinateKey)
        let match = json.doubleValueForKey(SearchResult.MatchKey)
        let yCoordinate = json.intValueForKey(SearchResult.YCoordinateKey)

        self.init(
            language: language,            
lastUpdateDate: lastUpdateDate,            
rpc: rpc,            
buildingNumber: buildingNumber,            
postcode: postcode,            
uprn: uprn,            
matchDescription: matchDescription,            
entryDate: entryDate,            
postalAddressCode: postalAddressCode,            
localCustodianCode: Int(localCustodianCode),            
status: status,            
blpuStateCode: blpuStateCode,            
organisationName: organisationName,            
postalAddressCodeDescription: postalAddressCodeDescription,            
classificationCodeDescription: classificationCodeDescription,            
xCoordinate: Int(xCoordinate),            
match: Float(match),            
classificationCode: classificationCode,            
topographyLayerToid: topographyLayerToid,            
localCustodianCodeDescription: localCustodianCodeDescription,            
blpuStateCodeDescription: blpuStateCodeDescription,            
dependentLocality: dependentLocality,            
logicalStatusCode: logicalStatusCode,            
yCoordinate: Int(yCoordinate),            
thoroughfareName: thoroughfareName,            
address: address,            
postTown: postTown,            
blpuStateDate: blpuStateDate
        )
    }
}

extension SearchResult {
    // MARK: Declaration for string constants to be used to decode and also serialize.
    @nonobjc internal static let LanguageKey: String = "LANGUAGE"
    @nonobjc internal static let LastUpdateDateKey: String = "LAST_UPDATE_DATE"
    @nonobjc internal static let RpcKey: String = "RPC"
    @nonobjc internal static let BuildingNumberKey: String = "BUILDING_NUMBER"
    @nonobjc internal static let PostcodeKey: String = "POSTCODE"
    @nonobjc internal static let UprnKey: String = "UPRN"
    @nonobjc internal static let MatchDescriptionKey: String = "MATCH_DESCRIPTION"
    @nonobjc internal static let EntryDateKey: String = "ENTRY_DATE"
    @nonobjc internal static let PostalAddressCodeKey: String = "POSTAL_ADDRESS_CODE"
    @nonobjc internal static let LocalCustodianCodeKey: String = "LOCAL_CUSTODIAN_CODE"
    @nonobjc internal static let StatusKey: String = "STATUS"
    @nonobjc internal static let BlpuStateCodeKey: String = "BLPU_STATE_CODE"
    @nonobjc internal static let OrganisationNameKey: String = "ORGANISATION_NAME"
    @nonobjc internal static let PostalAddressCodeDescriptionKey: String = "POSTAL_ADDRESS_CODE_DESCRIPTION"
    @nonobjc internal static let ClassificationCodeDescriptionKey: String = "CLASSIFICATION_CODE_DESCRIPTION"
    @nonobjc internal static let XCoordinateKey: String = "X_COORDINATE"
    @nonobjc internal static let MatchKey: String = "MATCH"
    @nonobjc internal static let ClassificationCodeKey: String = "CLASSIFICATION_CODE"
    @nonobjc internal static let TopographyLayerToidKey: String = "TOPOGRAPHY_LAYER_TOID"
    @nonobjc internal static let LocalCustodianCodeDescriptionKey: String = "LOCAL_CUSTODIAN_CODE_DESCRIPTION"
    @nonobjc internal static let BlpuStateCodeDescriptionKey: String = "BLPU_STATE_CODE_DESCRIPTION"
    @nonobjc internal static let DependentLocalityKey: String = "DEPENDENT_LOCALITY"
    @nonobjc internal static let LogicalStatusCodeKey: String = "LOGICAL_STATUS_CODE"
    @nonobjc internal static let YCoordinateKey: String = "Y_COORDINATE"
    @nonobjc internal static let ThoroughfareNameKey: String = "THOROUGHFARE_NAME"
    @nonobjc internal static let AddressKey: String = "ADDRESS"
    @nonobjc internal static let PostTownKey: String = "POST_TOWN"
    @nonobjc internal static let BlpuStateDateKey: String = "BLPU_STATE_DATE"

}
