class Dotfiles < Thor
  
  MAPPINGS = {
    "zshrc" => "~/.zshrc",
    "vimrc" => "~/.vimrc",
    "vim" => "~/.vim"
  }
  
  desc "symlink", "create symlinks in $HOME"
  method_options :force => :boolean
  def symlink
    Dotfiles.color = "black"
    MAPPINGS.each do |(src, destination)|
      if File.exist? destination
        puts "symlink %10s => %s" % [src, destination]
        create_symlink src, destination
      else
        puts "symlink %10s => %s (EXISTS!)" % [src, destination]
      end
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

  def create_symlink

  end
end
