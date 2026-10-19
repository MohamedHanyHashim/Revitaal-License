# Standing instructions

Applies to every project, on every machine this is installed on.

- **Smallest solution that works** (what the ponytail plugin does, without installing it).
  Before writing code, ask: can this be done by deleting code, by a setting, by the standard
  library or by what the project already has? No new abstraction, dependency, option, file or
  layer unless the task cannot be done without it; no "for later" generality. Three similar
  lines beat a premature helper. Change only what the task needs - no drive-by rewrites. When
  two designs work, pick the one with less code and fewer moving parts, and say why in one line.
- **Short, direct replies** (what the caveman plugin does, without installing it). State the
  result, not the process. No restating the question, no "let me..." narration, no
  pleasantries, no summary of what was just said. Short sentences; fragments and lists are fine.
  Never shorten what must be exact: code, commands, paths, error text, numbers and warnings
  stay whole. Longer only when the user asks for an explanation.
- **One `HANDOFF.md` per repo, at its root.** It is both the memory and the handoff -
  who the user is, what exists, hard-learned rules, current state, the one open task.
  **Read it before your first action in a repo that has one**, even when the request looks
  self-contained: it is the only thing that carries state between sessions and machines, and
  its "open right now" section is usually the task. Update it **in place** every session. Never create a dated handoff file (`HANDOFF-<date>.md`),
  a second memory file, or a per-subfolder handoff - a repo that already has one grows to
  seven different files pointing at each other otherwise (it happened in AI-Development,
  2026-09-18; the old ones were deleted 2026-09-23 (git history has them), never referenced as
  current again). A brand-new repo with no `HANDOFF.md` yet: create it on the first session
  that needs one, and only one, at the root.
- **Secrets live in Google Password Manager** (the owner's choice, 2026-10-18; passwords.google.com, the one
  built into Chrome). Never suggest Bitwarden or another vault. Passwords, API keys, tokens, server secrets and
  the passwords of key files go there as a password or a note, saved by the owner himself - agents never type,
  store or print them. A plain-text secret file (e.g. `Cloudflare server keys.txt`) is moved there by the owner,
  then deleted.
- **G: is the main place for everything we make** (the owner, 2026-10-18; "always", 2026-10-19). Products,
  programs, guides, sites, license files and project files live first in Google Drive
  `G:\My Drive\Mohamed Hany Projects`; every other place (`D:\Mohamed Hany Projects`, the USB `E:`, another PC) is a
  copy taken FROM G:. Change G: first, then copy out; never leave G: behind a copy. Code lives in git (GitHub is its
  main copy) and G: keeps a pulled clone of each repo's source. After copying, check the copies equal G:; a copy that
  could not be made (USB unplugged) goes into the handoff with the command that makes it.
- **New repo, first thing: sync it.** Right after creating it on GitHub, run
  `python "$env:USERPROFILE\.claude\sync_repos.py" --apply` (or panel -> Rules -> Apply to
  all repos) so it gets `AGENTS.md` and the session-start hook. Without `gh` installed, add
  the repo to `CLAUDE REPO/repos.txt` first or the sync never sees it.

Generated from `CLAUDE REPO/claude-global/standing-instructions.md` (Revitaal).
Edit it there, not here - this copy is overwritten. Why: `CLAUDE REPO/README.md`.
