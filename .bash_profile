# auto complition
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# enable stack autocompletion
eval "$(stack --bash-completion-script stack)"

# stack fbuild alias
alias sbuild="stack build        -j 2 --test --bench --no-run-tests --no-run-benchmarks"
alias fbuild="stack build --fast -j 2 --test --bench --no-run-tests --no-run-benchmarks"

# GPG
export GPG_TTY=$(tty)


alias pgstagdb="psql -U normuser -h staging-encryption.cljmfk9dc93i.ap-southeast-1.rds.amazonaws.com -d holmusk"
