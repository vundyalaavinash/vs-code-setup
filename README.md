# vs-code-setup

VS Code configured to look and feel like Warp: Warp Dark palette, Hack font, no left icon rail, terminal in the main area, Claude Code in the right pane, GitHub PR review and GitLens.

```
git clone git@github.com:vundyalaavinash/vs-code-setup.git
cd vs-code-setup && ./install.sh
```

Backs up the existing `settings.json` before overwriting. macOS only.

To refresh the dump from this machine:

```
cp ~/Library/Application\ Support/Code/User/settings.json settings.json
code --list-extensions > extensions.txt
```
