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

### **Required**
- **Pandoc** – used to convert Markdown into DOCX and PDF  
  Install from: https://pandoc.org/installing.html
- **pre-commit hook** – ensures documents are generated automatically when files change

---

### **How It Works**
You **should not run the script manually**.

The generation process is handled automatically by the pre-commit hook:

- Whenever a file is **added or modified in the `src/` folder**, the `generate.sh` script is executed.
- A **DOCX file** is automatically created and stored in the `generated/` folder.
- The **`good_to_go/` folder** serves as a release area for manually reviewed CVs, where you can also export them to PDF.