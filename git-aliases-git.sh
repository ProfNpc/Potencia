#!/bin/bash
# ============================================================
# Aliases de Git para reduzir digitação no Git Bash
# ============================================================
#
# COMO INSTALAR:
# 1. Copie este arquivo para a pasta pessoal (home) do aluno.
#    No Git Bash: cp git-aliases-git.sh ~/
# 2. Adicione esta linha no final do arquivo ~/.bashrc:
#    source ~/git-aliases-git.sh
# 3. Feche e abra o Git Bash de novo (ou rode: source ~/.bashrc)
#
# Depois disso, os comandos abaixo funcionam em qualquer pasta.
# ============================================================

# --- Git básico ---
alias gs='git status'                      # gs        -> git status
alias ga='git add .'                       # ga        -> adiciona tudo
alias gaa='git add -A'                     # gaa       -> adiciona tudo (incluindo remoções)
alias gp='git push'                        # gp        -> git push
alias gpl='git pull'                       # gpl       -> git pull
alias gf='git fetch'                       # gf        -> git fetch
alias gcl='git clone'                      # gcl       -> git clone

# --- Branches ---
alias gb='git branch'                      # gb        -> lista branches
alias gco='git checkout'                   # gco nome  -> troca de branch
alias gcb='git checkout -b'                # gcb nome  -> cria e troca de branch
alias gm='git merge'                       # gm nome   -> mescla branch

# --- Histórico e diferenças ---
alias gl='git log --oneline --graph --all --decorate'   # gl -> histórico compacto
alias gd='git diff'                        # gd        -> mostra diferenças
alias gr='git remote -v'                   # gr        -> mostra remotos

# --- Stash ---
alias gst='git stash'                      # gst       -> guarda alterações
alias gstp='git stash pop'                 # gstp      -> recupera alterações guardadas

# --- Commit (funções, não aliases, porque precisam de argumento com espaços) ---
gc() {
    # Uso: gc "mensagem do commit"
    git commit -m "$1"
}

gac() {
    # Uso: gac "mensagem do commit"
    # Adiciona tudo E faz commit em um único comando
    git add -A && git commit -m "$1"
}

gacp() {
    # Uso: gacp "mensagem do commit"
    # Adiciona tudo, faz commit E dá push em um único comando
    git add -A && git commit -m "$1" && git push
}

# --- Maven (úteis no dia a dia de Java/Spring) ---
alias mvnc='mvn clean install'             # mvnc      -> compila o projeto do zero
alias mvnt='mvn test'                      # mvnt      -> roda os testes
alias mvnr='mvn spring-boot:run'           # mvnr      -> roda a aplicação Spring Boot
alias mvnq='mvn clean install -DskipTests' # mvnq      -> compila pulando os testes (mais rápido)

# --- Navegação (menos digitação para entrar/sair de pastas) ---
alias ..='cd ..'
alias ...='cd ../..'

# --- Configurações de conforto no terminal ---
# Busca reversa no histórico: aperte Ctrl+R e digite 2-3 letras
# de um comando já usado antes para reexecutá-lo sem digitar tudo de novo.
# (Isso já vem ativado por padrão no Git Bash, não precisa configurar nada.)

# Evita comandos repetidos duplicados no histórico
export HISTCONTROL=ignoredups:erasedups

echo "Aliases de Git carregados! Use 'gs', 'ga', 'gc \"mensagem\"', 'gp', 'gco nome', etc."
