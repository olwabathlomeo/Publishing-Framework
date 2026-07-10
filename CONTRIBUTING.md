# Contributing / Developer setup

Prerequisites (Ubuntu/Debian):

```bash
sudo apt-get update
sudo apt-get install -y pandoc texlive-xetex make
```

Optional useful packages for PDF fonts and images:

```bash
sudo apt-get install -y texlive-latex-recommended texlive-latex-extra imagemagick
```

Build locally:

```bash
cd /home/interns/Documents/Publishing-Framework
./scripts/build.sh
```

If a GUI authentication or confirmation dialog appears when installing packages, please accept it locally — this automation cannot interact with desktop pop-ups.

CI: GitHub Actions workflow `.github/workflows/pandoc-build.yml` runs the build and uploads `output/` as artifact.
