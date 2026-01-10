# HumanDateDiff (Delphi)

HumanDateDiff is a **pure Delphi library** for converting date/time differences
into **human-readable text**, inspired by Moment.js / Day.js / Humanizer,
but designed specifically for **native Delphi (Win32/Win64/FMX)**.

✔ No external dependencies  
✔ Locale-aware (English, Hindi, Gujarati, Portuguese)  
✔ Smart calendar rules  
✔ Production-ready  

---

## ✨ Features

- Human-readable date differences  
  - `just now`
  - `yesterday / tomorrow`
  - `last week / next week`
  - `last month / next month`
  - `last year / next year`
- Composite output  
  - `2 days, 3 hours ago`
- Smart thresholds  
  - `6 days → last week`
  - `30 days → last month`
- Locale-specific plural rules  
  - Correct Hindi & Gujarati grammar
- Fluent API
- Full DUnitX test suite
- Runtime Package (.bpl) support

---

## 📦 Installation

### Option 1: Use Source Directly (Recommended)
Add the `Source` folder to your Delphi **Library Path**.

### Option 2: Runtime Package
1. Open `Packages/HumanDateDiffRT.dpk`
2. Build (or Install)
3. Add `HumanDateDiffRT` to your project runtime packages

---

## 🚀 Basic Usage

```delphi
uses HumanDateDiff, HumanDateDiff.Lang.EN;

ShowMessage(
  THumanDateDiff.New
    .Lang(LangEN)
    .Diff(Now - 2, Now)
);
// → "2 days ago"
```

## 🧩 Composite Output
```delphi
THumanDateDiff.New
  .Lang(LangEN)
  .MaxUnits(2)
  .Diff(Now - 2 - EncodeTime(3,0,0,0), Now);
// → "2 days, 3 hours ago"
```

## 🌍 Locale Examples
### Hindi 🇮🇳
```delphi
THumanDateDiff.New
  .Lang(LangHI)
  .Diff(Now - 3, Now);
// → "3 दिन पहले"
```

### Gujarati 🇮🇳
```delphi
THumanDateDiff.New
  .Lang(LangGU)
  .Diff(Now - 5, Now);
// → "5 દિવસ પહેલા"
```

## 🧠 Smart Rules Examples
```
1 day ago        → yesterday
6 days ago       → 6 days ago
7 days ago       → last week
30 days ago      → last month
400 days ago     → last year
```

## Tests

This project includes a full DUnitX test suite.

To run tests:

Open Tests/HumanDateDiff.Tests.dproj

Build & Run

## 📚 Documentation

docs/DESIGN.md – Architecture & design decisions

docs/LANGUAGE_GUIDE.md – Adding new languages/locales

## 🛣 Roadmap

- Additional Indian languages
- CLDR plural categories
- Time-zone aware rules
- GitHub Actions CI
- GetIt package support

## 📄 License

MIT License – free for commercial and open-source use.

## 🤝 Contributing

Pull requests are welcome.
Please include tests for new features or language packs.