# Backup of the site template before the navy & mint restyle (2026-11-14)

These are exact copies of the template files as they were on the live site at
commit 89f484f (deploy e0d950e), before "Option E" (navy & mint accents) was applied.
This folder is not used by Hugo and is not published.

To restore the old look, copy the files back over their counterparts:

    cp backup/2026-11-14_pre-navy-mint/static/css/main.css static/css/main.css
    cp backup/2026-11-14_pre-navy-mint/layouts/partials/header.html layouts/partials/header.html
    cp backup/2026-11-14_pre-navy-mint/static/favicon_*.png static/

then rebuild and deploy as usual. The full old state is also in git history
(commit 89f484f) and tagged `pre-navy-mint-2026-11-14` if the tag push succeeded.
