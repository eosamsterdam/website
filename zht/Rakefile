
file ".lastbuild" => FileList["**/*"].exclude(/_site/) do
  sh %[bundle exec jekyll build]
  sh %[touch .lastbuild]
end

task :build => ".lastbuild"

task :commit => :build do
   sh %[git add --all _site]
   sh %[git commit -m "gh-pages build commit" || true]
end

# http://clontz.org/blog/2014/05/08/git-subtree-push-for-deployment/
task :ship do
   sh %[git push origin `git subtree split --prefix _site master`:gh-pages --force]
end
