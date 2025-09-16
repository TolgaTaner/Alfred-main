import Foundation
import ArgumentParser

struct Alfred: ParsableCommand {
    static var configuration = CommandConfiguration(
        abstract: "Alfred ready to surve!",
        subcommands: [MoveTemplate.self, InstallSnippets.self]
    )
}

//.build/release/alfred move-template VIPER
struct MoveTemplate: ParsableCommand {
    static var configuration = CommandConfiguration(
        abstract: "Copy and paste given .xctemplate to Xcode templates."
    )

    @Argument(help: "Template Name (Example Given: VIPER)")
    var templateName: String

    func run() throws {
        let fileManager = FileManager.default

        let targetDir = fileManager.homeDirectoryForCurrentUser
            .appendingPathComponent("Library/Developer/Xcode/Templates/Custom")

        let scriptDir = URL(fileURLWithPath: fileManager.currentDirectoryPath)

        let sourceTemplate = scriptDir.appendingPathComponent("\(templateName).xctemplate")
        let destinationTemplate = targetDir.appendingPathComponent("\(templateName).xctemplate")

        try fileManager.createDirectory(at: targetDir, withIntermediateDirectories: true, attributes: nil)

        if fileManager.fileExists(atPath: destinationTemplate.path) {
            try fileManager.removeItem(at: destinationTemplate)
        }

        try fileManager.copyItem(at: sourceTemplate, to: destinationTemplate)

        print("✅ \(templateName).xctemplate copy and paste successfully: \(destinationTemplate.path)")
    }
}

// .build/release/alfred install-snippets folderName
struct InstallSnippets: ParsableCommand {
    static var configuration = CommandConfiguration(
        abstract: "moves .codesnippet folders to xCode"
    )

    @Argument(help: "Snippets içeren klasörün ismi")
    var folderName: String

    func run() throws {
        let fileManager = FileManager.default

        let sourceDir = URL(fileURLWithPath: fileManager.currentDirectoryPath)
            .appendingPathComponent(folderName)

        let targetDir = fileManager.homeDirectoryForCurrentUser
            .appendingPathComponent("Library/Developer/Xcode/UserData/CodeSnippets")

        try fileManager.createDirectory(at: targetDir, withIntermediateDirectories: true)

        let snippetFiles = try fileManager.contentsOfDirectory(at: sourceDir, includingPropertiesForKeys: nil)
            .filter { $0.pathExtension == "codesnippet" }

        if snippetFiles.isEmpty {
            print("⚠️ There is no snippet.")
            return
        }

        for file in snippetFiles {
            let dest = targetDir.appendingPathComponent(file.lastPathComponent)

            if fileManager.fileExists(atPath: dest.path) {
                try fileManager.removeItem(at: dest)
            }

            try fileManager.copyItem(at: file, to: dest)
            print("✅ Kopyalandı: \(file.lastPathComponent)")
        }

        print("📦 Tüm snippet dosyaları başarıyla taşındı → \(targetDir.path)")
    }
}
