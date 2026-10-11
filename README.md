# cv-template

A clean, ATS-friendly CV template in LaTeX. One shared style, many CV variants — keep a separate version per role (e.g. data, cloud, AI) without duplicating the design.

## Structure

```
shared/
  style.sty       # page layout, packages, spacing
  colors.tex      # color palette
  commands.tex    # \cvname, \cvsection, \cvsubsection, \cvproject, ...
example/
  main.tex        # entry point for one CV variant
  sections/       # header, summary, skills, certifications, projects, experience, education
```

## Usage

1. Click **Use this template** on GitHub (or clone the repo).
2. Edit the files in `example/sections/` with your own details.
3. Build:

```bash
make
```

The PDF is written to `example/main.pdf`. Requires a TeX distribution with `latexmk` (TeX Live, MacTeX, or MiKTeX).

### Multiple variants

Copy `example/` to a new folder (e.g. `data/`), tailor its sections, and run `make` again — every folder with a `main.tex` is built. You can also build a single one with `make data`.

### Customizing

- **Colors:** `shared/colors.tex`
- **Margins, spacing, fonts:** `shared/style.sty`
- **Section and entry layout:** `shared/commands.tex`
- **Section order:** the `\input` lines in each variant's `main.tex`

## Commands

| Command | Purpose |
| --- | --- |
| `\cvname{Name}` | Large name in the header |
| `\cvtagline{Text}` | Subtitle under the name |
| `\cvcontact{...}` | A line of contact details |
| `\cvsection{Title}` | Section heading with a rule |
| `\cvsubsection{Org}{Dates}{Role}` | Job or education entry |
| `\cvproject{Name}{Label}` | Project entry |
| `\cvtech{Text}` | Muted tech-stack line |

## CI

GitHub Actions builds every variant on push and uploads the PDFs as a workflow artifact.

## License

MIT
