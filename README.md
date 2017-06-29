<h5>Clone the repository</h5>

	git clone https://github.com/listen-compute/.vim.git


<h5>Create symbolic links</h5>

	ln -s [actual location of your .vimrc] [expected location of your .vimrc]

	ln -s ~/.vim/.vimrc ~/.vimrc
	ln -s ~/.vim/.gvimrc ~/.gvimrc


<h5>Initialize .vim as git repository</h5>

	cd ~/.vim
	git init


<h5>Add plugins as submodules</h5>

	starting in the bundle folder e.g(.vim/bundle/)

	example:
	git submodule add http://github.com/username/plugin-name.git


<h5>Pull the latest changes</h5>

	git pull 


Okay...so you cloned the git repository, created symbolic links for the .vimrc and gvimrc files, you pulled the latest changes, you checked, the .vim/bundles/ folder you see if the plugin is there, and you noticed that the folder is there but it's empty. Well now you need to...


<h5>Initialize and update submodules</h5>

	git submodule init
	git submodule update

  
<h5>Setup a local git profile - In terminal...</h5>

	git config --global user.name "your username on github"
	git config --global user.email "email associated with your account"

Assuming you're using linux, the local profile is tyically stored in your home directory ~.gitconfig


<h5>How to setup a remote</h5>
	
	git remote add [whatever here just don't start with a "."] URL
	
	example:
	
	git remote add origin https://github.com/lover-fighter/.vim.git 

	or

	git remote add origin git@github.com:username/repository.git
	

<h5>Some remote commands</h5>

	git remote -v #this displays all your remotes.
	git remote rm [remote name] #removes remote.


<h5>Commiting and pushing</h5>

	load up any new changes: 	git add .
	load up specific changes:	git add [specific file]
	commit + comment:		git commit -m "[comment here]"
	commit + comment example:	git commit -m "added auto-pairs as submodule"
	

<h5>Push to remote</h5>

	So let's say you named your remote "origin" and your pushing to the "master" branch.

	So...
	git push origin master
