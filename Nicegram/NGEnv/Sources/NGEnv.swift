import Foundation
import BuildConfig

public struct NGEnvObj: Decodable {
    public let app_review_login_code: String
    public let app_review_login_phone: String
    public let bundle_id: String
    public let premium_bundle: String
    public let ng_api_url: String
    public let validator_url: String
    public let ng_lab_url: String
    public let ng_lab_token: String
    public let moby_key: String
    public let app_id: String
    public let privacy_url: String
    public let terms_url: String
    public let restore_url: String
    public let reg_date_url: String
    public let reg_date_key: String
    public let esim_api_url: String
    public let esim_api_key: String
    public let google_client_id: String
    public let ecommpay_merchant_id: String
    public let ecommpay_project_id: Int
    public let referral_bot: String
    public let remote_config_cache_duration_seconds: Double
    public let telegram_auth_bot: String
    public let google_cloud_api_key: String
    public let applovin_api_key: String
    public let applovin_ad_unit_id: String
    public let websocket_url: URL
}

func parseNGEnv() -> NGEnvObj {
    let ngEnv = BuildConfig(baseAppBundleId: Bundle.main.bundleIdentifier!).ngEnv
    let decodedData = Data(base64Encoded: ngEnv)!

    return try! JSONDecoder().decode(NGEnvObj.self, from: decodedData)
}

public var NGENV = parseNGEnv()
