{ config, ... }:

{
  #homebrew packages
  homebrew = {
    enable = true;
    onActivation.autoUpdate = true;
    onActivation.upgrade = true;
    onActivation.cleanup = "zap"; # Uncomment this if you want all brew packages not defined in this file to be removed when updated
    brews = [
      "gnutls"
      "cask"
      "docker"
      "hashcat"
      "ifstat"
      "iperf"
      "ipmitool"
      "iproute2mac"
      "m-cli"
      "mas"
      "nmap"
      "openssh"
      "openvpn"
      "python@3.9"
      "speedtest-cli"
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
      "balenaetcher"
      "basecamp"
      "battle-net"
      "blockblock"
      "cscreen"
      "cyberduck"
      "daisydisk"
      "disk-drill"
      "firefox"
      "flutter"
      "google-chrome"
      "handbrake"
      "istat-menus"
      "joplin"
      "jumpcut"
      "lulu"
      "microsoft-remote-desktop"
      "nvidia-geforce-now"
      "omnigraffle"
      "pock"
      "protonmail-bridge"
      "protonvpn"
      "raycast"
      "signal"
      "slack"
      "sublime-text"
      "transmission"
      "wifi-explorer-pro"
      "zoom"
    ];
    masApps = {
      "1Password for Safari" = 1569813296
      "AdBlock" = 1402042596
      "ClassLinkExtension" = 1436703417
      "djay Pro" = 1302002064
      "djay Pro AI" = 450527929
      "DuckDuckGo Privacy for Safari" = 1482920575
      "Final Cut Pro" = 424389933
      "GarageBand" = 682658836
      "iMovie" = 408981434
      "Keynote" = 409183694
      "Logic Pro" = 634148309
      "MainStage" = 634159523
      "Numbers" = 409203825
      "Pages" = 409201541
      "PayPal Honey" = 1472777122
      "WiFi Explorer" = 494803304
      "WiFi Signal" = 525912054
      "Xcode" = 497799835
    };
  };
}