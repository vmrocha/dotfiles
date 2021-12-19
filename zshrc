alias brails="./bin/rails"
alias brake="./bin/rake"
alias byarn="./bin/yarn"
alias bspoom="./bin/spoom"
alias btapioca="./bin/tapioca"

alias gitl="git log --oneline --no-decorate"
alias gits="git show --name-status"
alias pull="git pull -p --rebase"
alias push="git push"
alias amend="git commit --amend"
alias be="bundle exec"
alias push_branch="push origin $(git rev-parse --abbrev-ref HEAD)"
alias l="ls"
alias ll="ls -l"
alias reload="source ~/.zshrc"
alias compile_sorbet="./bazel build //main:sorbet --config=dbg"
alias compile_sorbet_release="./bazel build //main:sorbet --config=release-linux"
alias setup_sorbet="compile_sorbet && reload && ./tools/scripts/build_compilation_db.sh"

git_find() {
  git log -G "$1" --oneline
}

main_and_delete() {
    current_branch=$(git rev-parse --abbrev-ref HEAD)
    master_exists=$(git branch --list master)

    if [ -n "${master_exists}" ]; then
        git switch master
    else
        git switch main
    fi

    git branch -D $current_branch
}

