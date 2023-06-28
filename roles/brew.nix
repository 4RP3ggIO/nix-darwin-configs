{ config, pkgs, ... }:

{
  #homebrew packages
  homebrew = {
    enable = true;
    onActivation.autoUpdate = true;
    onActivation.upgrade = true;
    onActivation.cleanup = "zap";
    brews = [
      "gnutls"
      "cask"
      "docker"
      "hashcat"
      "ifstat"
      "iperf"
      "ipmitool"
      "m-cli"
      "mas"
      "nmap"
      "openssh"
      "openvpn"
      "python@3.9"
      "speedtest-cli"
      "starship"
      "thefuck"
      "tree"
      "youtube-dl"
      "zsh"
    ];
    taps = [
      "homebrew/bundle"
      "homebrew/cask"
      "homebrew/cask-fonts"
      "homebrew/core"
      "homebrew/services"
      "koekeishiya/formulae"
      "yassinebridi/formulae"
    ];
    casks = [
      "1password"
      "1password-cli"
      "airtool"
      "balenaetcher"
      "basecamp"
      "blockblock"
      "cscreen"
      "cyberduck"
      "daisydisk"
      "disk-drill"
      "firefox"
      "google-chrome"
      "handbrake"
      "istat-menus"
      "iterm2"
      "joplin"
      "lulu"
      "mds"
      "microsoft-remote-desktop"
      "nvidia-geforce-now"
      "protonmail-bridge"
      "protonvpn"
      "raycast"
      "secretive"
      "slack"
      "sublime-text"
      "transmission"
      "wifi-explorer"
      "zoom"
    ];
    masApps = {
      "1Password for Safari" = 1569813296;
      "AdBlock" = 1402042596;
      "ClassLinkExtension" = 1436703417;
      "djay Pro" = 1302002064;
      "djay Pro AI" = 450527929;
      "DuckDuckGo Privacy for Safari" = 1482920575;
      "Final Cut Pro" = 424389933;
      "GarageBand" = 682658836;
      "iMovie" = 408981434;
      "Keynote" = 409183694;
      "Logic Pro" = 634148309;
      "MainStage" = 634159523;
      "Numbers" = 409203825;
      "Pages" = 409201541;
      "PayPal Honey" = 1472777122;
      "WiFi Explorer" = 494803304;
      "WiFi Signal" = 525912054;
      "Xcode" = 497799835;
    };
  };

  # Nix managed packages
  environment.systemPackages = with pkgs; [ 
    zsh
  ];
}
