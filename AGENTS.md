# Standing instructions

Applies to every project, on every machine this is installed on.

- **Smallest solution that works** (what the ponytail plugin does, without installing it).
  Before writing code, ask: can this be done by deleting code, by a setting, by the standard
  library or by what the project already has? No new abstraction, dependency, option, file or
  layer unless the task cannot be done without it; no "for later" generality. Three similar
  lines beat a premature helper. Change only what the task needs - no drive-by rewrites. When
  two designs work, pick the one with less code and fewer moving parts, and say why in one line.
- **Short, direct replies** (what the caveman plugin does, without installing it). In the final
  reply, state the result, not the process: no restating the question, no "let me..." openers, no
  pleasantries, no summary of what was just said. Short sentences; fragments and lists are fine.
  During long tool work, a few words on what you are on now are fine.
  Never shorten what must be exact: code, commands, paths, error text, numbers and warnings
  stay whole. Longer only when the user asks for an explanation.
- **Action-first replies** (the i-have-adhd rules, without installing it; the owner, 2026-10-26). First line = the
  action or the answer. Steps numbered, one action each, at most ~6 - then "قول كمل للباقي". One recommendation, not
  a menu; an alternative in one line only if it matters. Commands, paths and parameter names in copy-ready code
  blocks. A one-line ⚠️ right before any step that can break something (delete, overwrite, sync to central). Unclear
  request: ask ONE short question instead of guessing a long answer. Phone-sized: one screen, tables of 3 columns at
  most. Real errors, risks and disagreements are still said, briefly. The owner writes "تفصيلي" for the long form
  (table, how the parts connect, recommendation) and "مختصر" to come back.
- **Planning: ask the hard questions** (the owner, 2026-11-10). Only when he is planning - a plan, a design, a new
  project or feature, before it is built - question its weakest points, one question at a time, before going along
  with it. Not for ordinary tasks.
- **One `HANDOFF.md` per repo, at its root.** It is both the memory and the handoff -
  who the user is, what exists, hard-learned rules, current state, the one open task.
  **Read it before your first action in a repo that has one**, even when the request looks
  self-contained: it is the only thing that carries state between sessions and machines, and
  its "open right now" section is usually the task. Update it **in place** every session. Never create a dated handoff file (`HANDOFF-<date>.md`),
  a second memory file, or a per-subfolder handoff - otherwise a repo ends up with several
  files pointing at each other. A brand-new repo with no `HANDOFF.md` yet: create it on the first session
  that needs one, and only one, at the root.
  **Its shape** (the owner, 2026-10-21): `START HERE` (max ~40 lines: state, the one open task, next
  steps, what FAILED and why, pending copies) / `Rules (pinned)` / `Reference` / `Log` (newest first).
  Read START HERE + Rules only; grep the Log or `git log` for the rest. Each fact once, latest value
  only; DONE Log entries older than 7 days shrink to 1-3 lines. Never stage binaries or files over 1 MB
  unless the owner says so.
  **"Remind me every session"** (the owner, 2026-10-22): write it as the FIRST block of START HERE - what to tell
  him, in his language, and until when - so every next session says it before anything else; delete it when the
  condition is met. Never only in the Log or in chat.
- **pull and push** (the owner, 2026-11-01). His whole message is `pull` or `push`, in any repo and any agent: do it in
  the repo you are in, answer in his language. Not on `main`: tell him the branch and stop.
  **pull:** Not a git clone: find this folder's repo in `gh repo list MohamedHanyHashim` (name match, ignoring case, spaces
  and dashes). Empty folder + one match: `git clone https://github.com/MohamedHanyHashim/<name> .`. Folder with files, or
  no match: tell him and stop. Then `git pull --ff-only origin main` (fails: say why; never stash or reset). Read
  `HANDOFF.md` START HERE + Rules only (an older handoff: its open section), FAILED before retrying anything. Say in
  three lines where we are, the open task, the next step, then continue the open task; what the rules say to confirm
  first is still confirmed first.
  **push:** Not a git clone: tell him the folder and stop. Update `HANDOFF.md` in place, in its shape above: what this
  conversation did and where it stands (none: create it at the root). `git status` + `git diff`:
  only this session's files; no secrets, binaries or files over 1 MB. `git add` by path (never `-A`), `git commit`,
  `git push origin main`, never force; rejected: `git pull --ff-only origin main`, push once more; still rejected: tell
  him why. This session made a rule for every repo: same text into `CLAUDE REPO\claude-global\standing-instructions.md`
  and root `AGENTS.md` in `D:\MH AI\Revitaal`, push it, then `python "D:\MH AI\Revitaal\CLAUDE REPO\sync_repos.py"
  --apply`. A skill lesson: into its skill (`revitaal-lessons` in `D:\MH AI\Revitaal`, `jr-engineer` in `D:\MH AI\MH WYA`), push it. Report the commit, what was left out, the next step.
- **Check before "done".** Run the test, the build or the tool, read its output, then report. Say plainly what
  was not checked. Never call something fixed from reading the code alone. The check is read-only: never
  re-run something that changes a model or files to check it.
- **Revit models (Revitaal MCP).** Read before changing: say what will change and how many elements, then change
  it in one Transaction so one Ctrl+Z undoes it. Use a Revitaal tool when one does the job, code only when none
  does. Never save, sync, close, purge or delete views / sheets unless asked. On a big or central model, try the
  change on a few elements or a detached copy first.
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
  `python "D:\MH AI\Revitaal\CLAUDE REPO\sync_repos.py" --apply` so it gets `AGENTS.md`. Without `gh` installed, add
  the repo to `CLAUDE REPO/repos.txt` first or the sync never sees it.
- **Tools before the screen; never re-run a write to check it** (the owner, 2026-10-21). Drive apps through their
  MCP / API (Revitaal MCP for Revit); computer use only when nothing else can go on (a hung app to restart, a dialog
  the API cannot answer). A script that changes anything is run ONCE - to see its result, read the state with a
  separate read-only call; a write re-sent "to check" runs again even when the client timed out (it made duplicates).
- **A command given to the owner must work as given** (the owner, 2026-10-22: "every command you give me fails"). His
  shell is Windows PowerShell 5.1, NOT elevated, in the Claude app's terminal; its execution policy blocks scripts, so a
  `.ps1` is given as `powershell -NoProfile -ExecutionPolicy Bypass -File` + its full quoted path (10-28). Before handing over any command: run it
  yourself in the same kind of shell when it is read-only or harmless, or at least check its syntax and the rights it
  needs. Anything that needs Administrator (services, HKLM, Program Files, drivers) says so on its first line and is
  given in a form that asks for elevation itself - `Start-Process powershell -Verb RunAs -ArgumentList '-NoProfile',
  '-Command','<cmd>; pause'` - or replaced by a no-admin way (a Settings page: `start ms-settings:<page>`). Never hand
  over a command you have not checked; say plainly what you could not test.
  **No placeholders in it** (the owner, 2026-10-22: "never again, in any repo or folder"): no `<v>`, `<path>`,
  `<file>`, `X.Y.Z`, `YOUR_...`. `<` and `>` are PowerShell operators, so `<v>` stops the whole line (a publish
  command, 10-22). Fill in the real values and check every file it names exists; when a value does not exist yet (a
  version not built), give no command - say what has to happen first.
- **One folder, several sessions** (2026-10-22): another session may be working in the same checkout. Never put old
  code over the shared tree to look at it (`git checkout <commit> -- <path>`, `stash`, `reset`) - it stages too, and the
  other session's next commit picks it up and reverts their work. Use `git show <commit>:<path>` or a worktree.
  Commit only your own paths: `git commit -m "..." -- <paths>`, never `-a` / `-A`.

Generated from `CLAUDE REPO/claude-global/standing-instructions.md` (Revitaal).
Edit it there, not here - this copy is overwritten. Why: `CLAUDE REPO/README.md`.
