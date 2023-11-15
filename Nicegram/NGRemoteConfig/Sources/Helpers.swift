public var hideUnblock: Bool {
    let remoteValue = RemoteConfigServiceImpl.shared.get(Bool.self, byKey: "hideUnblock")
    let defaultValue = false
    return remoteValue ?? defaultValue
}

public var allowCopyProtectedContent: Bool {
    let remoteValue = RemoteConfigServiceImpl.shared.get(Bool.self, byKey: "allowCopyProtectedContent")
    let defaultValue = false
    return remoteValue ?? defaultValue
}
