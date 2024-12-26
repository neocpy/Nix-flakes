# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, modulesPath, ... }:

{
  imports =
    [ (modulesPath + "/installer/scan/not-detected.nix")
    ];

  boot.initrd.availableKernelModules = [ "xhci_pci" "ahci" "usb_storage" "usbhid" "sd_mod" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ "kvm-amd" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    { device = "/dev/disk/by-uuid/36960f3c-b1e2-41c9-bf2c-dd7f9194dd5c";
      fsType = "ext4";
    };

  fileSystems."/boot" =
    { device = "/dev/disk/by-uuid/A21D-AD39";
      fsType = "vfat";
      options = [ "fmask=0022" "dmask=0022" ];
    };

  swapDevices =
    [ { device = "/dev/disk/by-uuid/f5c5d6f1-9bbd-4fdc-b177-84efcccbd914"; }
    ];

  fileSystems."/mydata/SmallerBoi" =
    { device = "/dev/disk/by-uuid/E0A4F609A4F5E248";
      fsType = "ntfs";
    };

#  fileSystems."/mydata/Back-ups" =
#    { device = "/dev/disk/by-uuid/9A1E9A2F1E9A0503";
#      fsType = "ntfs";
#    };

  fileSystems."/mydata/SSD" =
    { device = "/dev/disk/by-uuid/90225F50225F3A84";
      fsType = "ntfs";
    };
#  fileSystems."/mydata/BigBoi" =
#    { device = "/dev/disk/by-uuid/2bf8226a-f235-41d7-a992-77c5e31f8475";
#      fsType = "btrfs";
#    };
  # Enables DHCP on each ethernet and wireless interface. In case of scripted networking
  # (the default) this is the recommended approach. When using systemd-networkd it's
  # still possible to use this option, but it's recommended to use it in conjunction
  # with explicit per-interface declarations with `networking.interfaces.<interface>.useDHCP`.
  networking.useDHCP = lib.mkDefault true;
  # networking.interfaces.enp7s0.useDHCP = lib.mkDefault true;
  # networking.interfaces.wlp4s0.useDHCP = lib.mkDefault true;

  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
  hardware.cpu.amd.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
}