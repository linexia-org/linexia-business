# Building Linexia Business

Linexia Business is a **remaster of an installed Debian 13 (trixie) system**: the
build host is set up exactly as the finished OS should look, then
[penguins-eggs](https://github.com/pieroproietti/penguins-eggs) clones it into a
live ISO with the Calamares installer.

There is no custom compiled code. This repository holds the system configuration
files and package lists, taken from the released **v1.57** ISO
(`linexia_business_1.57.iso`, sha256 `a2136fa4…2731`).

## Repository layout

| Path | Contents |
|---|---|
| `rootfs/` | Files placed in the system before cloning (paths relative to `/`) |
| `packages/debian-packages.txt` | Installed Debian packages in v1.57 |
| `packages/flatpak-apps.txt` | Installed Flatpak apps in v1.57 |

### `rootfs/` highlights

- `etc/os-release`: OS name "Linexia Business (Code Name FTR)". Keep `ID=debian` and
  `VERSION_CODENAME=trixie`, because apt and the COSMIC repository depend on them.
  Divert it so `base-files` does not overwrite it:
  `dpkg-divert --local --rename --add /etc/os-release`.
- `etc/apt/sources.list.d/cosmic-trixie.list`: COSMIC desktop packages for trixie.
- `etc/greetd/cosmic-greeter.toml`: the live session logs in automatically with `start-cosmic`.
- `etc/live/config.conf.d/linexia.conf`: live user name.
- `etc/calamares/`: installer settings and modules.
- `etc/xdg/mimeapps.list`: default apps (Loupe for images).
- `etc/skel/.config/cosmic/com.system76.CosmicAppLibrary/`: app launcher groups.
- `etc/odoo/odoo.conf`, `etc/systemd/system/odoo.service`: Odoo Community, installed from
  source in `/opt/odoo/odoo-server` with a venv and local PostgreSQL 17.
- `usr/local/bin/`: installer launcher and first-login helper scripts.
- `home/linexia/Desktop/`: the "Install Linexia" desktop icon.

## Outline

1. Install Debian 13 and the COSMIC desktop. Then install the applications listed in
   `packages/` and copy the `rootfs/` files into place.
2. Clone the system into a live ISO with penguins-eggs (`produce --clone`).
3. Test BIOS and UEFI boot in a VM, and a Calamares install on real hardware.

## Default credentials (live / fresh install)

These are public defaults, not secrets. Change them after installation.

- Live user `linexia`, password `evolution` (penguins-eggs default).
- Odoo databases `odoo_demo` (with demo data) and `odoo`: login `admin` / `admin`.
  The Odoo master password is also `admin`.
