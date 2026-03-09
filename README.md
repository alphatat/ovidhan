# 📘 Ovidhan (অভিধান) - Bangla Offline Dictionary

<div align="center">

![Flutter](https://img.shields.io/badge/Flutter-3.x-blue?logo=flutter)
![Platform](https://img.shields.io/badge/Platform-Android%20%7C%20iOS%20%7C%20Windows%20%7C%20Linux-green)
![License](https://img.shields.io/badge/License-MIT-yellow)
![Status](https://img.shields.io/badge/Status-Active%20Development-orange)

**A fast, beautiful, and completely offline Bangla dictionary for everyone.**

[বাংলায় পড়ুন](#বাংলা) • [Report Bug](../../issues) • [Request Feature](../../issues)

</div>

---

## 📖 About / পরিচিতি

**Ovidhan** is a modern, offline-first Bangla dictionary application built with Flutter. It provides instant word definitions, synonyms, and examples without requiring an internet connection. Perfect for students, writers, and anyone who loves the Bengali language.

**অভিধান** হলো একটি আধুনিক, অফলাইন বাংলা অভিধান অ্যাপ যা Flutter দিয়ে তৈরি। এটি ইন্টারনেট সংযোগ ছাড়াই শব্দের অর্থ, সমার্থক শব্দ এবং উদাহরণ তাৎক্ষণিকভাবে প্রদান করে। শিক্ষার্থী, লেখক এবং বাংলা ভাষাপ্রেমীদের জন্য আদর্শ।

---

## ✨ Features / বৈশিষ্ট্য

| Feature | English | বাংলা |
|---------|---------|--------|
| 🔍 **Offline Search** | Instant search through 50k+ words | ৫০ হাজার+ শব্দের তাৎক্ষণিক অনুসন্ধান |
| 🎨 **Custom Themes** | Multiple accent colors + Dark mode | একাধিক রং + ডার্ক মোড |
| ⚡ **Fast Performance** | Optimized for low-end devices | কম মেমোরি ডিভাইসেও দ্রুত কাজ করে |
| 📱 **Multi-Platform** | Android, (iOS, Windows, Linux coming soon)| অ্যান্ড্রয়েড, iOS, উইন্ডোজ, লিনাক্স |
| 🔖 **Favorites** | Save words for quick access | পছন্দের শব্দ সংরক্ষণ |
| 🌐 **Bengali Fonts** | Beautiful Noto Sans Bengali rendering | সুন্দর নোটো সান্স বাংলা ফন্ট |

---

## 📸 Screenshots / স্ক্রিনশট

<div align="center">

| Home & Search | Theme Settings | Dark Mode |
|:-------------:|:-------------:|:---------:|
| ![Home](/home.gif) | ![Themes](/colors.gif) | ![Dark](/dark.gif) |
| *Search Interface* | *Theme Customization* | *Dark Mode* |

</div>


---

## 🚀 Installation / ইনস্টলেশন

### From Releases (Recommended)
1. Go to [Releases](../../releases)
2. Download the latest version for your platform:
   - **Android:** `ovidhan-v1.0.0.apk`
   - **iOS:** `ovidhan-v1.0.0.ipa`
   - **Windows:** `ovidhan-v1.0.0.exe`
   - **Linux:** `ovidhan-v1.0.0.AppImage`

### From Source
```bash
# Clone the repository
git clone https://github.com/alphatat/ovidhan.git
cd ovidhan

# Install dependencies
flutter pub get

# Run the app
flutter run
```

---

## 🛠️ Development Setup / ডেভেলপমেন্ট সেটআপ

### Prerequisites / প্রয়োজনীয়তা

| Tool | Version | Link |
|------|---------|------|
| Flutter | 3.x+ | [flutter.dev](https://flutter.dev) |
| Dart | 3.x+ | [dart.dev](https://dart.dev) |
| Android Studio | Latest | [android.com/studio](https://android.com/studio) |
| VS Code (Optional) | Latest | [code.visualstudio.com](https://code.visualstudio.com) |

### Build Commands / বিল্ড কমান্ড

```bash
# Android APK
flutter build apk --release

# iOS
flutter build ios --release

# Windows
flutter build windows --release

# Linux
flutter build linux --release
```

---

## 📁 Project Structure / প্রজেক্ট স্ট্রাকচার

```
ovidhan/
├── lib/
│   ├── core/                    # Core utilities
│   │   ├── theme/               # Theme management
│   │   ├── widgets/             # Reusable widgets
│   │   └── extensions/          # Context extensions
│   ├── features/                # Feature modules
│   │   ├── search/              # Search functionality
│   │   ├── dictionary/          # Dictionary data
│   │   └── settings/            # Preferences & settings
│   ├── data/                    # Data layer
│   │   ├── database/            # Isar database
│   │   └── models/              # Data models
│   ├── ui/                      # UI layer
│   │   ├── pages/               # App screens
│   │   └── components/          # UI components
│   └── main.dart                # App entry point
├── assets/                      # Assets & fonts
│   ├── fonts/                   # Noto Sans Bengali
│   └── database/                # default.isar
├── test/                        # Unit tests
└── pubspec.yaml                 # Dependencies
```

---

## 🧰 Technologies Used / প্রযুক্তি

| Category | Technology | Purpose |
|----------|------------|---------|
| **Framework** | Flutter 3.x | Cross-platform UI |
| **State Management** | Provider | Theme & settings state |
| **Database** | Isar | Offline-first storage |
| **Persistence** | SharedPreferences | User preferences |
| **Fonts** | Noto Sans Bengali | Bengali text rendering |
| **Architecture** | Feature-First + Clean Layers | Scalable code structure |

---

## 🤝 Contributing / অবদান রাখা

We love your input! Want to contribute? Please follow these steps:

আমরা আপনার অবদান মূল্যায়ি করি! অবদান রাখতে নিচের ধাপগুলো অনুসরণ করুন:

1. **Fork** the repository
2. **Create** your feature branch (`git checkout -b feature/AmazingFeature`)
3. **Commit** your changes (`git commit -m 'Add some AmazingFeature'`)
4. **Push** to the branch (`git push origin feature/AmazingFeature`)
5. **Open** a Pull Request

### Code Guidelines / কোড গাইডলাইন
- ✅ Follow Clean Architecture principles
- ✅ Write meaningful commit messages
- ✅ Test on low-end Android devices
- ✅ Add Bengali comments for Bengali-specific logic

---

## 📄 License / লাইসেন্স

Distributed under the **MIT License**. See `LICENSE` for more information.

**MIT লাইসেন্স** এর অধীনে বিতরণ করা হয়েছে। আরও তথ্যের জন্য `LICENSE` দেখুন।

---

## 📞 Contact / যোগাযোগ

- **GitHub:** [@alphatat](https://github.com/alphatat)
- **Project Link:** [github.com/alphatat/ovidhan](https://github.com/alphatat/ovidhan)
- **Issues:** [Report bugs & request features](../../issues)

---

## 🙏 Acknowledgments / কৃতজ্ঞতা

- [InanXr/ProjectShobdo](https://github.com/InanXR/ProjectShobdo) - For All the Words that are used here

- [Flutter Team and Dart Team](https://flutter.dev) - For the amazing framework
- [Isar Database](https://isar.dev) - For offline-first database solution

- [All Contributors](../../graphs/contributors) - For making this project possible

---

<div align="center">

**Made with ❤️ for Bengali Language Lovers**

**বাংলা ভাষাপ্রেমীদের জন্য তৈরি ❤️ দিয়ে**

⭐ **Star this repo if you find it useful!**

</div>

---

## 📋 Roadmap / রোডম্যাপ

| Version | Features | Status |
|---------|----------|--------|
| v1.0 | Basic search, Offline DB, Theme | ✅ Completed |
| v1.1 | Favorites, Word of the Day | 🔄 In Progress |
| v1.2 | Voice Search, Share Word | 📅 Planned |
| v2.0 | Sync Across Devices, Cloud Backup | 📅 Future |

---

## 🐛 Known Issues / পরিচিত সমস্যা

| Issue | Status | Workaround |
|-------|--------|------------|
| Desktop Isar binaries | ⚠️ Testing | Use mobile for now |
| Large DB file size | 🔧 Optimizing | Gzip compression planned |
| Low-end device jank | 🔧 Optimizing | Pagination implemented |

---

> **Tip:** For best performance, keep the app updated and clear cache periodically from Settings.
> 
> **পরামর্শ:** সর্বোত্তম পারফরম্যান্সের জন্য অ্যাপটি আপডেট রাখুন এবং সেটিংস থেকে মাঝেমধ্যে ক্যাশে পরিষ্কার করুন।
