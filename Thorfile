class Dotfiles < Thor
  
  DEFAULT_SYMLINK_DIR = "~"

  MAPPINGS = {
    "zshrc" => ".zshrc",
    "zsh" => ".zsh",
    "gemrc" => ".gemrc",
    "vimrc" => ".vimrc",
    "vim" => ".vim",
    "gitconfig" => ".gitconfig",
  }
  
  desc "symlink", "create symlinks in $HOME"
  option :in, type: :string, default: DEFAULT_SYMLINK_DIR
  def symlink
    MAPPINGS.each do |(src, name)|
      destination = File.join(options[:in], name)
      create_symlink src, destination
    end
  end

  desc "brew", "install the homebrew recipes I like"
  def brew
    system "brew tap homebrew/bundle && brew bundle"
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
