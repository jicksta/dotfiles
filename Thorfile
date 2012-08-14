class Dotfiles < Thor
  
  MAPPINGS = {
    "zshrc" => "~/.zshrc",
    "gemrc" => "~/.gemrc",
    "vimrc" => "~/.vimrc",
    "vim" => "~/.vim",
    "gitconfig" => "~/.gitconfig"
  }
  
  desc "symlink", "create symlinks in $HOME"
  method_options :force => :boolean
  def symlink
    MAPPINGS.each do |(src, destination)|
      create_symlink src, destination
    end
  end

  desc "update", "update all git submodules"
  def update
    raise "TODO"
  end

  desc "brew_install", "install the homebrew recipes I like"
  def brew_install
    raise "TODO"
  end

  desc "check", "Do a sanity check of the environment"
  def check
    raise "TODO"
  end

  private

  def create_symlink(src, destination)
    src = File.expand_path(src)
    destination = File.expand_path(destination)

    abort "Cannot find file #{src}" if !File.exist?(src) 

    if File.exist?(destination)
      STDERR.puts "Destination already exists! Skipping. #{destination}"
    else
      system "ln -s #{src} #{destination}"
      puts "symlink %10s => %s" % [src, destination]
    end
  end
end
