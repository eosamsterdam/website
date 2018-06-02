
PROJECT_FILES=FileList["**/*"].exclude(/_site/)

file ".lastbuild" => PROJECT_FILES do
  sh %[bundle exec jekyll build]
  sh %[touch .lastbuild]
end

task :build => ".lastbuild"

task :commit => :build do
   sh %[git add --all _site]
   sh %[git commit -m "gh-pages build commit" || true]
end

# https://github.com/X1011/git-directory-deploy
task :ship do
   sh %[GIT_DEPLOY_DIR=_site GIT_DEPLOY_BRANCH=gh-pages GIT_DEPLOY_REPO=git@github.com:eosamsterdam/website.git ./deploy.sh]
end
