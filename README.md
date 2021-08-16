# ~/.bashrc

If you wish to migrate your existing Vim configuration to Nvim, simply copy your ~/.vimrc to ~/.config/nvim/init.vim.

```
# Use Neovim as "preferred editor"
export VISUAL=nvim

# Use Neovim instead of Vim or Vi
alias vim=nvim
alias vi=nvim

export VIMCONFIG=~/.config/nvim
export VIMDATA=~/.local/share/nvim
```

# Font
https://www.chrisatmachine.com/Linux/05-nerd-fonts/

mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts
mkdir NerdFonts
cd NerdFonts

Copy https://github.com/ryanoasis/nerd-fonts/Hack/Bold/complete/Hack%20Bold%20Nerd%20Font%20Complete.ttf
to NerdFonts directory. Do the same with bold italic, italic, regular.

Set Custom font `Hack Nerd Font Regular` in Terminal settings.
