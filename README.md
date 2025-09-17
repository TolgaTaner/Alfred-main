# Alfred-main 🛠️

**Alfred** is a lightweight Swift-based command-line tool that helps you manage custom Xcode templates (`.xctemplate`) and code snippets (`.codesnippet`) with ease.

---

## 🔧 Installation

Install via [Homebrew](https://brew.sh):

```bash
brew tap TolgaTaner/tap
brew install alfredtt

alfredtt move-template VIPER

Usage

Install an Xcode Template

To copy a .xctemplate folder into Xcode’s custom templates directory:

alfredtt move-template TemplateName

Example:

If you have a folder called VIPER.xctemplate in your current directory:
alfredtt move-template VIPER

✅ This will copy the folder to:
~/Library/Developer/Xcode/Templates/Custom/VIPER.xctemplate

Install Xcode Snippets

To move .codesnippet files from a local folder into Xcode:
alfredtt install-snippets SnippetFolderName

Example:
alfredtt install-snippets MySnippets

✅ This will copy all .codesnippet files to:
~/Library/Developer/Xcode/UserData/CodeSnippets/


