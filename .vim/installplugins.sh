function install() {
	mkdir -p "${HOME}/.vim/pack/plugin/start/";
	cd "${HOME}/.vim/pack/plugin/start";
	git clone "https://github.com/$1" --depth=1 \
		--branch=${2:-"master"} ${3};
}

install "gruvbox-community/gruvbox"
install "neoclide/coc.nvim" "release"
install "tpope/vim-sleuth"
