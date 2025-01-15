# How to Update Danny’s Website dannyyagan.com

## Software Used:

- **Git**: [https://git-scm.com/download](https://git-scm.com/download)
- **Hugo**: [https://gohugo.io/installation](https://gohugo.io/installation)
- **Alternative 1**: [Go](https://go.dev/doc/install)
- **Alternative 2**: Installing binaries:
  - Go to [https://github.com/gohugoio/hugo/releases/tag/v0.110.0](https://github.com/gohugoio/hugo/releases/tag/v0.110.0)
  - Download the zip for your system:
    - Latest used: `hugo_0.110.0_windows-amd64.zip`
  - Extract the archive
  - Move the archive to your desired location
  - Add the directory of Hugo/bin to the path:
    1. Hit Start button
    2. Type “environment”
    3. Click on “Edit the environment variables”
    4. Click on “Environment Variables”
    5. Click on the “Path” variable
    6. Click “Edit”
    7. Add the Hugo executable path to a blank line
    8. Click “OK”
  - Verify that Hugo is executable with:
    ```bash
    hugo version
    ```

- **VSCode**: [https://code.visualstudio.com/download](https://code.visualstudio.com/download) (not necessary, but useful for working with Git and Github Desktop)

---

## Website Hosting:

- Hosted on GitHub Pages:
  - Publishes `master` branch to `.io` URL from `.io` repo
  - Hugo s in `scr` - repo
  - `public @...`: so Hugo publishes there

---

## Overview Hugo Structure:

- **Layouts**:
  - Defines the HTML displayed on the website (can use HTML or Go).
  - Layout HTML files are used to define the layout of a page, and then the page is populated with data from its corresponding content directory/file.
  - **Note**: Folder names map to the folder names in the content directory to collect data from those folders’ `_index.md` files.
  - Data folders are used by layouts (most prominently we use the `projects` directory in data for the research page).
  - The name `list.html` is used within each folder under Hugo name convention.

- **Content**:
  - Content folders sync to layout to provide the specific internal (non-layout) HTML information for each page.
  - Each content folder contains a file named `_index.md`.
  - **Note**: Files in `content` are written in `.md` as opposed to HTML.

- **Static**:
  - Data accessed by layout.
  - Generally, this folder contains data that will never be edited (think images or HTML/CSS for navigation elements of the website).

- **Archetypes**:
  - `config.toml`: Holds site metadata and Hugo settings.
  - Can be accessed by `site`.

---

## Updating Website:

### Making Changes Locally:

- If Hugo is not installed, then install Hugo:
  - [Hugo installation link](https://gohugo.io/installation/)

- Building locally:
  - Run:
    ```bash
    hugo serve
    ```
  - This command prompt rebuilds the dev site and serves it locally.
  - Runs at `localhost:1313` by default.

### Publishing Changes:

1. Update GitHub:
   - Can do this with GitHub Desktop or with `git`.
   - In GitHub Desktop:
     1. Type summary and give a name to the change in the bottom-left corner.
     2. Hit “commit to master” (I believe).
     3. Then a new button will appear in the middle of the screen to “push master” (I believe). Hit that button.

2. Run `./renew_submodule_akcan.sh` (needs to be run in Git Bash terminal):
   - Clones repo (only needs to be run the first time the site is updated, but does not hurt to run every time).
   - **Note**: I have created a `renew_submodule_akcan.sh` because `renew_submodule.sh` did not work on my computer (likely a PC issue).

3. Run `./deploy.sh` (needs to be run in Git Bash terminal):
   - Deploys changes.

4. Wait two minutes. It should update in a couple of minutes on the web.
