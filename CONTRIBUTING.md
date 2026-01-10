# Contributing to HumanDateDiff

Thank you for your interest in contributing to **HumanDateDiff** 🎉  
Contributions of all kinds are welcome — bug fixes, new features, tests, and
language packs.

This document explains **how to contribute effectively and safely**.

---

## 🧭 Project Philosophy

HumanDateDiff aims to be:

- ✅ Pure Delphi (no external runtime dependencies)
- ✅ Predictable and human-friendly
- ✅ Locale-aware and grammatically correct
- ✅ Suitable for business / accounting / ERP software
- ✅ Well-tested and stable

Please keep these goals in mind when contributing.

---

## 🛠 Development Requirements

- **Delphi 10.3+** (earlier versions may work but are not guaranteed)
- **DUnitX** (for tests)
- Windows (Win32 / Win64)

Optional but recommended:
- Git
- GitHub account

---

## 📁 Repository Layout (Quick Overview)
Source/ → Core library code
Packages/ → Delphi runtime/design-time packages
Tests/ → DUnitX test suite
docs/ → Design & language documentation


---

## 🚀 Getting Started

1. **Fork** the repository on GitHub
2. **Clone** your fork locally
3. Add the `Source` folder to your Delphi Library Path
4. Open the test project:


Tests/HumanDateDiff.Tests.dproj

5. Run tests to ensure everything is green ✅

---

## 🧪 Tests Are Mandatory

Any change that affects behavior **must include tests**.

### Required for:
- New features
- Bug fixes
- Locale / language additions
- Rule or threshold changes

If a change cannot be tested, please explain **why** in the pull request.

---

## 🌍 Adding a New Language

New languages are very welcome.

### Steps:
1. Create a new unit:


HumanDateDiff.Lang.XX.pas

2. Define:
- Unit translations
- Plural rules
- Natural phrases (`yesterday`, `last week`, etc.)
3. Add **at least one test** in:


TestHumanDateDiff.Locales.pas

4. Update `docs/LANGUAGE_GUIDE.md` (if needed)

📌 **Important:**  
Do **not** assume English-style pluralization.  
Always consider local grammar rules.

---

## 🧠 Coding Guidelines

Please follow these rules:

- ✔ Use **clear, readable Pascal**
- ✔ Avoid premature optimization
- ✔ Prefer correctness over cleverness
- ✔ Keep core logic free of UI/VCL dependencies
- ❌ No breaking API changes without discussion
- ❌ No hardcoded language strings in engine logic

Formatting:
- 2-space or standard Delphi indentation
- Meaningful method and variable names
- No commented-out code

---

## 🔁 Backward Compatibility

HumanDateDiff is intended to be stable.

- Avoid breaking existing public APIs
- If breaking change is unavoidable:
- Clearly document it
- Add migration notes
- Discuss it first (Issue or Discussion)

---

## 🐛 Reporting Bugs

Please open a GitHub **Issue** and include:

- Delphi version
- Platform (Win32 / Win64)
- Locale used
- Input dates
- Expected output
- Actual output

Minimal reproducible examples are highly appreciated.

---

## 📦 Pull Request Process

1. Create a feature branch from `main`
2. Make your changes
3. Ensure **all tests pass**
4. Add or update tests
5. Update documentation if needed
6. Open a Pull Request with:
- Clear title
- Description of the change
- Reason for the change

---

## 🏷 Versioning

This project uses **Semantic Versioning**:



MAJOR.MINOR.PATCH


- PATCH → bug fixes
- MINOR → new features (backward compatible)
- MAJOR → breaking changes

---

## 📄 License

By contributing, you agree that your code will be released under the **MIT License**.

---

## 🙏 Thank You

Every contribution — big or small — makes HumanDateDiff better.

Delphi needs high-quality open-source libraries,  
and your help truly matters ❤️