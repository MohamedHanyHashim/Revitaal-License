// OpenCode's copy of .claude/settings.json: the session-start environment audit (.claude/hooks/session-start.sh).
// OpenCode has no session-start hook that adds context, so the report is shown as a toast. Silent when all is well.
export const SessionStartAudit = async ({ $, client, worktree }) => ({
  event: async ({ event }) => {
    // session.created fires for subagent sessions too; those have a parent.
    if (event.type !== "session.created" || event.properties?.info?.parentID) return
    const out = (await $`bash .claude/hooks/session-start.sh < ${Buffer.from("{}")}`
      .cwd(worktree).quiet().nothrow().text()).trim()
    if (out) await client.tui.showToast({ body: { message: out, variant: "warning" } })
  },
})
