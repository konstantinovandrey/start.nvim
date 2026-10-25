# My Neovim config (kickstart.nvim)

Personal [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim) configuration.

| | |
|---|---|
| Repo | `github.com/konstantinovandrey/start.nvim` (public fork of `nvim-lua/kickstart.nvim`) |
| Linux config path | `~/.config/nvim` |
| Windows mirror | `~/Desktop/.config/nvim` |
| Upstream remote | `upstream` → `nvim-lua/kickstart.nvim` |
| Own remote | `origin` → `konstantinovandrey/start.nvim` |

---

## Remotes

`origin` is **your** fork — normal `git push` goes there.
`upstream` is the official kickstart — use it to pull in new upstream changes:

```bash
git fetch upstream
git rebase upstream/master      # rebase your commits on top
git push --force-with-lease origin master
```

## Setup on a new machine

### 1. Clone

```bash
gh repo clone konstantinovandrey/start.nvim ~/.config/nvim
cd ~/.config/nvim
```

### 2. Install plugins

```vim
:Lazy sync
```

### 3. Extra tooling

Some parts of this config shell out to external programs:

| Feature | Needs |
|---|---|
| `lua/custom/compiler.lua` — `<leader>m` compiles C++ with g++ | `g++` |
| `lua/custom/compiler.lua` — `<C-=>`, `<C-->`, `<C-0>` change the kitty font size | `kitty` |
| `aw-watcher-vim` — ActivityWatch tracker | `pip install --user -e .` inside the plugin dir |
| `sniprun` — `<leader>r` runs Python | `pip install sniprun` + a configured runtime |
| neo-tree (`<C-b>`) | bundled with kickstart |

Install the ActivityWatch watcher once:

```bash
git clone https://github.com/ActivityWatch/aw-watcher-vim ~/.local/share/aw-watcher-vim
cd ~/.local/share/aw-watcher-vim && pip install --user -e .
```

If you do not use kitty, delete the font-size bindings in
`lua/custom/compiler.lua` — they silently do nothing otherwise.

## Customisations on top of kickstart

| Where | What |
|---|---|
| `init.lua` | window title = file name, `<C-b>` toggles neo-tree, enables neo-tree + the `custom.plugins` import, ActivityWatch watcher |
| `lua/custom/plugins/init.lua` | catppuccin (mocha) theme, sniprun with `<leader>r` / `<leader>R` |
| `lua/custom/compiler.lua` | compile C++ with g++ (`<leader>m`), kitty font-size bindings |

Everything else is stock kickstart.

## Keys worth knowing

| Key | Action |
|---|---|
| `<leader>r` | run the current Python file (sniprun) |
| `<leader>R` | run the visual selection (sniprun) |
| `<leader>m` | compile the current C++ file with g++ |
| `<C-b>` | toggle neo-tree |
| `<C-=>` / `<C-->` / `<C-0>` | kitty font size +2 / -2 / reset to 13 |

## Upstream

Forked from [nvim-lua/kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim).
The original README is kept verbatim in
[`docs/upstream-kickstart.md`](docs/upstream-kickstart.md).

## License

MIT — see [`LICENSE.md`](LICENSE.md).
