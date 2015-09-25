name 'pantry'
default_source :community

run_list(
  'pantry'
)

default['homebrew'].tap do |brew|
  brew['taps'] = %w(caskroom/cask caskroom/fonts)
  brew['formulas'] =  %w(fish git jenv nvm rbenv)
  brew['casks'] = %w(atom dockertoolbox dropbox flux font-input google-chrome slack spotify vagrant vagrant-manager)
end

default['chocolatey'].tap do |choco|
  choco['packages'] = %w(atom git powershell)
end
