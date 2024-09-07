echo 'set git alias'
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.pl pull
git config --global alias.ps push

git config --global core.editor vi

echo 'Please add '//npm.pkg.github.com/:_authToken=GITHUB_NPM_TOKEN' into ~/.npmrc, if you use github private npm registry'
