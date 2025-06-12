# 🧰 Alfred – Xcode Template & Snippet Manager

**Alfred** is a lightweight, Swift-based command-line tool that helps you manage custom Xcode file templates (`.xctemplate`) and code snippets (`.codesnippet`). Designed for iOS/macOS developers who want to save time and streamline their project setup.

---

## 🚀 Features

- 📦 Install custom `.xctemplate` folders into Xcode's Templates directory  
- ✂️ Copy `.codesnippet` files to Xcode's User Code Snippets folder  

---

## 📦 Installation

### 1. Clone and build

```bash
git clone https://github.com/yourusername/alfred.git
cd alfred
swift build -c release
```

### 2. (Optional) Add to PATH

```bash
sudo cp .build/release/Alfred /usr/local/bin/alfred
```

> You can now run `alfred` from anywhere in your terminal.

---

## 🛠️ Usage

### 📁 Install an Xcode template

```bash
alfred install VIPER
```

Copies `VIPER.xctemplate` from the current directory to:

```
~/Library/Developer/Xcode/Templates/Custom/
```

---

### ✂️ Install code snippets

```bash
alfred install-snippets MySnippets
```

Copies all `.codesnippet` files from the `MySnippets` folder to:

```
~/Library/Developer/Xcode/UserData/CodeSnippets/
```

---

### 🔧 Manual installation (without Alfred)

If you'd like to install templates or snippets manually, you can use the following Terminal commands:

#### 🧩 Copy a `.xctemplate` file manually

```bash
mkdir -p "$HOME/Library/Developer/Xcode/Templates/Custom"
cp -R ./VIPER.xctemplate "$HOME/Library/Developer/Xcode/Templates/Custom/"
```

#### ✂️ Copy `.codesnippet` files manually

```bash
mkdir -p "$HOME/Library/Developer/Xcode/UserData/CodeSnippets"
cp ./MySnippets/*.codesnippet "$HOME/Library/Developer/Xcode/UserData/CodeSnippets/"
```

---

## 📁 Example Project Structure

```
alfred/
├── Sources/
│   └── Alfred/
│       └── main.swift
├── VIPER.xctemplate/
├── MySnippets/
│   ├── debugLog.codesnippet
│   └── initView.codesnippet
```

---

## 🧰 Requirements

- macOS  
- Swift 5.9 or newer  
- Xcode installed  

---

## 📄 License

MIT License

---

## 🤝 Contributing

Feel free to submit issues or pull requests. Contributions are welcome — especially ideas for useful developer workflows and automation.
