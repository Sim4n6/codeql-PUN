// --- stubs ---

struct URL {
	init?(string: String) {}
    init(fileURLWithPath path: String, isDirectory: Bool) {}
}

class NSURL {
    init?(string: String) {}
}

extension String {
    struct Encoding {
        static let utf8 = Encoding()
    }

    init(contentsOf: URL) {
        let data = ""
        self.init(data)
    }

    init(contentsOfFile path: String) throws {
        self.init("")
    }

    init(contentsOfFile path: String, encoding enc: String.Encoding) throws {
        self.init("")
    }

    init(contentsOfFile path: String, usedEncoding: inout String.Encoding) throws {
        self.init("")
    }
}

class NSString {
    init() { }
    init(string aString: String) { }
    convenience init(contentsOfFile path: String, encoding enc: UInt) throws { self.init() }
    convenience init(contentsOfFile path: String, usedEncoding enc: UnsafeMutablePointer<UInt>?) throws { self.init() }

    func write(toFile: String, atomically: Bool, encoding: UInt) {}
    func write(to: URL, atomically: Bool, encoding: UInt) {}

    var utf8String: UnsafePointer<CChar>? { get { return nil } }
}

class Data {
    struct ReadingOptions : OptionSet { let rawValue: Int }
    struct WritingOptions : OptionSet { let rawValue: Int }

    init<S>(_ elements: S) { count = 0 }
	init(contentsOf: URL, options: ReadingOptions) { count = 0 }

	func copyBytes(to: UnsafeMutablePointer<UInt8>, count: Int) {}

    func write(to: URL, options: Data.WritingOptions = []) {}

	var count: Int
}

class NSData {
    struct WritingOptions : OptionSet { let rawValue: Int }
    func write(to: URL, atomically: Bool) -> Bool { return false }
    func write(to: URL, options: NSData.WritingOptions) {}
    func write(toFile: String, atomically: Bool) -> Bool { return false }
    func write(toFile: String, options: NSData.WritingOptions) {}
}

class NSKeyedUnarchiver {
    func unarchiveObject(withFile: String) -> Any? { return nil }
}

struct URLResourceKey {}

struct FileAttributeKey : Hashable {}

struct ObjCBool {}

struct AutoreleasingUnsafeMutablePointer<Pointee> {}

struct FilePath : ExpressibleByStringLiteral {
    typealias StringLiteralType = String
    init(stringLiteral: String) {}
    func lexicallyNormalized() -> FilePath { return "" }
    func starts(with: FilePath) -> Bool { return false }
}

class FileManager {
    class DirectoryEnumerator {}
    struct DirectoryEnumerationOptions : OptionSet { let rawValue: Int }
    struct ItemReplacementOptions : OptionSet { let rawValue: Int }
    struct UnmountOptions : OptionSet { let rawValue: Int }
    struct SearchPathDomainMask {}
    enum SearchPathDirectory : UInt { case none }
    enum URLRelationship : Int { case none }

    func contentsOfDirectory(at: URL, includingPropertiesForKeys: [URLResourceKey]?, options: FileManager.DirectoryEnumerationOptions) -> [URL] { return []}
    func contentsOfDirectory(atPath: String) -> [String] { return [] }
    func enumerator(at: URL, includingPropertiesForKeys: [URLResourceKey]?, options: FileManager.DirectoryEnumerationOptions, errorHandler: ((URL, Error) -> Bool)?) -> FileManager.DirectoryEnumerator? { return nil }
    func enumerator(atPath: String) -> FileManager.DirectoryEnumerator? { return nil }
    func subpathsOfDirectory(atPath: String) -> [String] { return [] }
    func subpaths(atPath: String) -> [String]? { return nil }
    func createDirectory(at: URL, withIntermediateDirectories: Bool, attributes: [FileAttributeKey : Any]?) {}
    func createDirectory(atPath: String, withIntermediateDirectories: Bool, attributes: [FileAttributeKey : Any]?) {}
    func createFile(atPath: String, contents: Data?, attributes: [FileAttributeKey : Any]?) -> Bool { return false }
    func removeItem(at: URL) {}
    func removeItem(atPath: String) {}
    func trashItem(at: URL, resultingItemURL: AutoreleasingUnsafeMutablePointer<NSURL?>?) {}
    func replaceItemAt(_: URL, withItemAt: URL, backupItemName: String?, options: FileManager.ItemReplacementOptions) -> URL? { return nil}
    func replaceItem(at: URL, withItemAt: URL, backupItemName: String?, options: FileManager.ItemReplacementOptions, resultingItemURL: AutoreleasingUnsafeMutablePointer<NSURL?>?) {}
    func copyItem(at: URL, to: URL) {}
    func copyItem(atPath: String, toPath: String) {}
    func moveItem(at: URL, to: URL) {}
    func moveItem(atPath: String, toPath: String) {}
    func createSymbolicLink(at: URL, withDestinationURL: URL) {}
    func createSymbolicLink(atPath: String, withDestinationPath: String) {}
    func linkItem(at: URL, to: URL) {}
    func linkItem(atPath: String, toPath: String) {}
    func destinationOfSymbolicLink(atPath: String) -> String { return "" }
    func fileExists(atPath: String) -> Bool { return false }
    func fileExists(atPath: String, isDirectory: UnsafeMutablePointer<ObjCBool>?) -> Bool { return false }
    func setAttributes(_: [FileAttributeKey : Any], ofItemAtPath: String) {}
    func contents(atPath: String) -> Data? { return nil }
    func contentsEqual(atPath: String, andPath: String) -> Bool { return false }
    func changeCurrentDirectoryPath(_: String) -> Bool { return false }
    func unmountVolume(at: URL, options: FileManager.UnmountOptions, completionHandler: (Error?) -> Void) {}
    // Deprecated methods
    func changeFileAttributes(_: [AnyHashable : Any], atPath: String) -> Bool { return false }
    func directoryContents(atPath: String) -> [Any]? { return nil }
    func createDirectory(atPath: String, attributes: [AnyHashable : Any]) -> Bool { return false }
    func createSymbolicLink(atPath: String, pathContent: String) -> Bool { return false }
    func pathContentOfSymbolicLink(atPath: String) -> String? { return nil }
    func replaceItemAtURL(originalItemURL: NSURL, withItemAtURL: NSURL, backupItemName: String?, options: FileManager.ItemReplacementOptions) -> NSURL? { return nil }
}

struct FileDescriptor {
    struct AccessMode : RawRepresentable {
        static let readOnly = AccessMode(rawValue: 0)
        let rawValue: UInt8
        init(rawValue: UInt8) { self.rawValue = rawValue}
    }

    struct OpenOptions : RawRepresentable {
        static let append = OpenOptions(rawValue: 0)
        let rawValue: UInt8
        init(rawValue: UInt8) { self.rawValue = rawValue}
    }
}

struct FilePermissions : RawRepresentable {
    static let ownerRead = FilePermissions(rawValue: 0)
    let rawValue: UInt8
    init(rawValue: UInt8) { self.rawValue = rawValue}
}

class ArchiveByteStream {
    static func fileStream(fd: FileDescriptor, automaticClose: Bool = true) -> ArchiveByteStream? { return nil }
    static func withFileStream<E>(fd: FileDescriptor, automaticClose: Bool = true, _ body: (ArchiveByteStream) -> E) -> E { return body(ArchiveByteStream()) }
    static func fileStream(path: FilePath, mode: FileDescriptor.AccessMode, options: FileDescriptor.OpenOptions, permissions: FilePermissions) -> ArchiveByteStream? { return nil }
    static func withFileStream<E>(path: FilePath, mode: FileDescriptor.AccessMode, options: FileDescriptor.OpenOptions, permissions: FilePermissions, _ body: (ArchiveByteStream) -> E) -> E { return body(ArchiveByteStream()) }
}

class Bundle {
    init?(url: URL) {}
    init?(path: String) {}
}

// GRDB

struct Configuration {}

class Database {
    init(path: String, description: String, configuration: Configuration) {}
}

class DatabasePool {
    init(path: String, configuration: Configuration) {}
}

class DatabaseQueue {
    init(path: String, configuration: Configuration) {}
}

class DatabaseSnapshotPool {
    init(path: String, configuration: Configuration) {}
}

class SerializedDatabase {
    init(path: String, configuration: Configuration = Configuration(), defaultLabel: String, purpose: String? = nil) {}
}

// Realm

class Realm {
}

extension Realm {
	struct Configuration {
		init(
			fileURL: URL? = URL(fileURLWithPath: "defaultFile", isDirectory: false),
			inMemoryIdentifier: String? = nil,
			syncConfiguration: Int = 0,
			encryptionKey: Data? = nil,
			readOnly: Bool = false,
			schemaVersion: UInt64 = 0,
			migrationBlock: Int = 0,
			deleteRealmIfMigrationNeeded: Bool = false,
			shouldCompactOnLaunch: Bool = false,
			objectTypes: Int = 0,
			seedFilePath: URL? = nil) { }

		var fileURL: URL?
        var seedFilePath: URL?
	}
}

// sqlite3

func sqlite3_open(
    _ filename: UnsafePointer<CChar>?,
    _ ppDb: UnsafeMutablePointer<OpaquePointer?>?) -> Int32 { return 0 }

func sqlite3_open16(
    _ filename: UnsafeRawPointer?,
    _ ppDb: UnsafeMutablePointer<OpaquePointer?>?) -> Int32 { return 0 }

func sqlite3_open_v2(
    _ filename: UnsafePointer<CChar>?,
    _ ppDb: UnsafeMutablePointer<OpaquePointer?>?,
    _ flags: Int32,
    _ zVfs: UnsafePointer<CChar>?) -> Int32 { return 0 }

var sqlite3_temp_directory: UnsafeMutablePointer<CChar>?

// SQLite.swift

enum URIQueryParameter {
}

class Connection {
	enum Location {
		case inMemory
		case uri(String, parameters: [URIQueryParameter] = [])
	}

	init(_ location: Location = .inMemory, readonly: Bool = false) throws { }
	convenience init(_ filename: String, readonly: Bool = false) throws { try self.init() }
}

// --- tests ---

func test(buffer1: UnsafeMutablePointer<UInt8>, buffer2: UnsafeMutablePointer<UInt8>) {
    let remoteString = String(contentsOf: URL(string: "http://example.com/")!)
    let remoteUrl = URL(string: remoteString)!
    let remoteNsUrl = NSURL(string: remoteString)!
    let safeUrl =  URL(string: "")!
    let safeNsUrl = NSURL(string: "")!

    Data("").write(to: remoteUrl, options: []) // $ hasPathInjection=253

    let nsData = NSData()
    let _ = nsData.write(to: remoteUrl, atomically: false) // $ hasPathInjection=253
    nsData.write(to: remoteUrl, options: []) // $ hasPathInjection=253
    let _ = nsData.write(toFile: remoteString, atomically: false) // $ hasPathInjection=253
    nsData.write(toFile: remoteString, options: []) // $ hasPathInjection=253

    let fm = FileManager()
    let _ = fm.contentsOfDirectory(at: remoteUrl, includingPropertiesForKeys: [], options: []) // $ hasPathInjection=253
    let _ = fm.contentsOfDirectory(atPath: remoteString) // $ hasPathInjection=253
    let _ = fm.enumerator(at: remoteUrl, includingPropertiesForKeys: [], options: [], errorHandler: nil) // $ hasPathInjection=253
    let _ = fm.enumerator(atPath: remoteString) // $ hasPathInjection=253
    let _ = fm.subpathsOfDirectory(atPath: remoteString) // $ hasPathInjection=253
    let _ = fm.subpaths(atPath: remoteString) // $ hasPathInjection=253
    fm.createDirectory(at: remoteUrl, withIntermediateDirectories: false, attributes: [:]) // $ hasPathInjection=253
    let _ = fm.createDirectory(atPath: remoteString, attributes: [:]) // $ hasPathInjection=253
    let _ = fm.createFile(atPath: remoteString, contents: nil, attributes: [:]) // $ hasPathInjection=253
    fm.removeItem(at: remoteUrl) // $ hasPathInjection=253
    fm.removeItem(atPath: remoteString) // $ hasPathInjection=253
    fm.trashItem(at: remoteUrl, resultingItemURL: AutoreleasingUnsafeMutablePointer<NSURL?>()) // $ hasPathInjection=253
    let _ = fm.replaceItemAt(remoteUrl, withItemAt: safeUrl, backupItemName: nil, options: []) // $ hasPathInjection=253
    let _ = fm.replaceItemAt(safeUrl, withItemAt: remoteUrl, backupItemName: nil, options: []) // $ hasPathInjection=253
    fm.replaceItem(at: remoteUrl, withItemAt: safeUrl, backupItemName: nil, options: [], resultingItemURL: AutoreleasingUnsafeMutablePointer<NSURL?>()) // $ hasPathInjection=253
    fm.replaceItem(at: safeUrl, withItemAt: remoteUrl, backupItemName: nil, options: [], resultingItemURL: AutoreleasingUnsafeMutablePointer<NSURL?>()) // $ hasPathInjection=253
    fm.copyItem(at: remoteUrl, to: safeUrl) // $ hasPathInjection=253
    fm.copyItem(at: safeUrl, to: remoteUrl) // $ hasPathInjection=253
    fm.copyItem(atPath: remoteString, toPath: "") // $ hasPathInjection=253
    fm.copyItem(atPath: "", toPath: remoteString) // $ hasPathInjection=253
    fm.moveItem(at: remoteUrl, to: safeUrl) // $ hasPathInjection=253
    fm.moveItem(at: safeUrl, to: remoteUrl) // $ hasPathInjection=253
    fm.moveItem(atPath: remoteString, toPath: "") // $ hasPathInjection=253
    fm.moveItem(atPath: "", toPath: remoteString) // $ hasPathInjection=253
    fm.createSymbolicLink(at: remoteUrl, withDestinationURL: safeUrl) // $ hasPathInjection=253
    fm.createSymbolicLink(at: safeUrl, withDestinationURL: remoteUrl) // $ hasPathInjection=253
    fm.createSymbolicLink(atPath: remoteString, withDestinationPath: "") // $ hasPathInjection=253
    fm.createSymbolicLink(atPath: "", withDestinationPath: remoteString) // $ hasPathInjection=253
    fm.linkItem(at: remoteUrl, to: safeUrl) // $ hasPathInjection=253
    fm.linkItem(at: safeUrl, to: remoteUrl) // $ hasPathInjection=253
    fm.linkItem(atPath: remoteString, toPath: "") // $ hasPathInjection=253
    fm.linkItem(atPath: "", toPath: remoteString) // $ hasPathInjection=253
    let _ = fm.destinationOfSymbolicLink(atPath: remoteString) // $ hasPathInjection=253
    let _ = fm.fileExists(atPath: remoteString) // $ hasPathInjection=253
    let _ = fm.fileExists(atPath: remoteString, isDirectory: UnsafeMutablePointer<ObjCBool>.init(bitPattern: 0)) // $ hasPathInjection=253
    fm.setAttributes([:], ofItemAtPath: remoteString) // $ hasPathInjection=253
    let _ = fm.contents(atPath: remoteString) // $ hasPathInjection=253
    let _ = fm.contentsEqual(atPath: remoteString, andPath: "") // $ hasPathInjection=253
    let _ = fm.contentsEqual(atPath: "", andPath: remoteString) // $ hasPathInjection=253
    let _ = fm.changeCurrentDirectoryPath(remoteString) // $ hasPathInjection=253
    let _ = fm.unmountVolume(at: remoteUrl, options: [], completionHandler: { _ in }) // $ hasPathInjection=253
    // Deprecated methods
    let _ = fm.changeFileAttributes([:], atPath: remoteString) // $ hasPathInjection=253
    let _ = fm.directoryContents(atPath: remoteString) // $ hasPathInjection=253
    let _ = fm.createDirectory(atPath: remoteString, attributes: [:]) // $ hasPathInjection=253
    let _ = fm.createSymbolicLink(atPath: remoteString, pathContent: "") // $ hasPathInjection=253
    let _ = fm.createSymbolicLink(atPath: "", pathContent: remoteString) // $ hasPathInjection=253
    let _ = fm.pathContentOfSymbolicLink(atPath: remoteString) // $ hasPathInjection=253
    let _ = fm.replaceItemAtURL(originalItemURL: remoteNsUrl, withItemAtURL: safeNsUrl, backupItemName: nil, options: []) // $ hasPathInjection=253
    let _ = fm.replaceItemAtURL(originalItemURL: safeNsUrl, withItemAtURL: remoteNsUrl, backupItemName: nil, options: []) // $ hasPathInjection=253

    var encoding = String.Encoding.utf8
    let _ = try! String(contentsOfFile: remoteString) // $ hasPathInjection=253
    let _ = try! String(contentsOfFile: remoteString, encoding: String.Encoding.utf8) // $ hasPathInjection=253
    let _ = try! String(contentsOfFile: remoteString, usedEncoding: &encoding) // $ hasPathInjection=253

    let _ = try! NSString(contentsOfFile: remoteString, encoding: 0) // $ hasPathInjection=253
    let _ = try! NSString(contentsOfFile: remoteString, usedEncoding: nil) // $ hasPathInjection=253
    NSString().write(to: remoteUrl, atomically: true, encoding: 0)  // $ hasPathInjection=253
    NSString().write(toFile: remoteString, atomically: true, encoding: 0) // $ hasPathInjection=253

    let _ = NSKeyedUnarchiver().unarchiveObject(withFile: remoteString) // $ hasPathInjection=253
    let _ = ArchiveByteStream.fileStream(fd: remoteString as! FileDescriptor, automaticClose: true) // $ hasPathInjection=253
    ArchiveByteStream.withFileStream(fd: remoteString as! FileDescriptor, automaticClose: true) { _ in } // $ hasPathInjection=253
    let _ = ArchiveByteStream.fileStream(path: FilePath(stringLiteral: remoteString), mode: .readOnly, options: .append, permissions: .ownerRead) // $ hasPathInjection=253
    ArchiveByteStream.withFileStream(path: FilePath(stringLiteral: remoteString), mode: .readOnly, options: .append, permissions: .ownerRead) { _ in } // $ hasPathInjection=253
    let _ = Bundle(url: remoteUrl) // $ hasPathInjection=253
    let _ = Bundle(path: remoteString) // $ hasPathInjection=253

    // GRDB

    let _ = Database(path: remoteString, description: "", configuration: Configuration()) // $ hasPathInjection=253
    let _ = Database(path: "", description: "", configuration: Configuration()) // Safe
    let _ = DatabasePool(path: remoteString, configuration: Configuration()) // $ hasPathInjection=253
    let _ = DatabasePool(path: "", configuration: Configuration()) // Safe
    let _ = DatabaseQueue(path: remoteString, configuration: Configuration()) // $ hasPathInjection=253
    let _ = DatabaseQueue(path: "", configuration: Configuration()) // Safe
    let _ = DatabaseSnapshotPool(path: remoteString, configuration: Configuration()) // $ hasPathInjection=253
    let _ = DatabaseSnapshotPool(path: "", configuration: Configuration()) // Safe
    let _ = SerializedDatabase(path: remoteString, defaultLabel: "") // $ hasPathInjection=253
    let _ = SerializedDatabase(path: "", defaultLabel: "") // Safe
    let _ = SerializedDatabase(path: remoteString, defaultLabel: "", purpose: nil) // $ hasPathInjection=253
    let _ = SerializedDatabase(path: "", defaultLabel: "", purpose: nil) // Safe
    let _ = SerializedDatabase(path: remoteString, configuration: Configuration(), defaultLabel: "") // $ hasPathInjection=253
    let _ = SerializedDatabase(path: "", configuration: Configuration(), defaultLabel: "") // Safe
    let _ = SerializedDatabase(path: remoteString, configuration: Configuration(), defaultLabel: "", purpose: nil) // $ hasPathInjection=253
    let _ = SerializedDatabase(path: "", configuration: Configuration(), defaultLabel: "", purpose: nil) // Safe

    // Realm

	_ = Realm.Configuration(fileURL: safeUrl) // GOOD
	_ = Realm.Configuration(fileURL: remoteUrl) // $ hasPathInjection=253
	_ = Realm.Configuration(seedFilePath: safeUrl) // GOOD
	_ = Realm.Configuration(seedFilePath: remoteUrl) // $ hasPathInjection=253

	var config = Realm.Configuration() // GOOD
	config.fileURL = safeUrl // GOOD
	config.fileURL = remoteUrl // $ hasPathInjection=253
	config.seedFilePath = safeUrl // GOOD
	config.seedFilePath = remoteUrl // $ hasPathInjection=253

    // sqlite3

    var db: OpaquePointer?
    let localData = Data(0)
    let remoteData = Data(contentsOf: URL(string: "http://example.com/")!, options: [])
    localData.copyBytes(to: buffer1, count: localData.count)
    remoteData.copyBytes(to: buffer2, count: remoteData.count)

    _ = sqlite3_open("myFile.sqlite3", &db) // GOOD
    _ = sqlite3_open(remoteString, &db) // $ hasPathInjection=253
    _ = sqlite3_open16(buffer1, &db) // GOOD
    _ = sqlite3_open16(buffer2, &db) // $ hasPathInjection=373
    _ = sqlite3_open_v2("myFile.sqlite3", &db, 0, nil) // GOOD
    _ = sqlite3_open_v2(remoteString, &db, 0, nil) // $ hasPathInjection=253

    sqlite3_temp_directory = UnsafeMutablePointer<CChar>(mutating: NSString(string: "myFile.sqlite3").utf8String) // GOOD
    sqlite3_temp_directory = UnsafeMutablePointer<CChar>(mutating: NSString(string: remoteString).utf8String) // $ MISSING: hasPathInjection=253

    // SQLite.swift

    try! _ = Connection()
    try! _ = Connection(Connection.Location.uri("myFile.sqlite3")) // GOOD
    try! _ = Connection(Connection.Location.uri(remoteString)) // $ MISSING: hasPathInjection=253
    try! _ = Connection("myFile.sqlite3") // GOOD
    try! _ = Connection(remoteString) // $ hasPathInjection=253
}

func testBarriers() {
    let remoteString = String(contentsOf: URL(string: "http://example.com/")!)

    let fm = FileManager()

    let filePath = FilePath(stringLiteral: remoteString)
    if (filePath.lexicallyNormalized().starts(with: "/safe")) {
        let _ = fm.contents(atPath: remoteString) // Safe
    }
    let _ = fm.contents(atPath: remoteString) // $ hasPathInjection=397
}
