# Markdown CV Generator

This is a small utility project for managing your CV in **Markdown** and generating formatted **DOCX** and **PDF** versions from it.

Your CV lives as a single source of truth (`.md` file) in the `src` folder.  
The script uses a template from the `template` folder to produce nicely formatted files in the `generated` folder.

---

## Features

- Keep your CV in clean, version-controlled Markdown
- Generate **DOCX** and **PDF** from the same source
- Use a reusable **template** for consistent styling
- Simple one-command workflow

---

## Project Structure

```text
.
├── src/
│   └── cv.md              # Your main CV in Markdown
├── template/
│   └── cv-template.docx   # Template used for styling (example name)
├── generated/
│   └── ...                # Generated DOCX/PDF files go here
├── scripts/
│   └── generate.sh        # Script to build DOCX/PDF from src/cv.md
└── README.md
```

## Prerequisites

Make sure the following tools are installed before running the generator script:

### **Required**
- **Pandoc** – used to convert Markdown into DOCX and PDF  
  Install from: https://pandoc.org/installing.html

### **PDF Generation (if your script produces PDF)**
Depending on how PDF output is configured in `generate.sh`, you will need one of the following:

- **Tectonic** (recommended for simplicity)  
  https://tectonic-typesetting.github.io/en-US/install.html

**or**

- A LaTeX distribution such as:  
  - **TeX Live** (Linux/macOS)  
  - **MacTeX** (macOS)  
  - **MiKTeX** (Windows)  

These are required because Pandoc relies on a LaTeX engine to generate PDFs unless another PDF backend is used.

---

Once these tools are installed, you can run the script normally:

```bash
./scripts/generate.sh
