# Licensing notice

The Linexia build configuration, branding scripts and documentation in this
repository are licensed under the **GNU GPL v3.0** (see `LICENSE`). The Linexia
name and logo are trademarks of their owner and are not covered by the GPL.

The Linexia Business ISO is an aggregate of independent programs. Each program keeps its own
licence. Main components:

| Component | Licence | Source |
|---|---|---|
| Debian 13 (trixie) base | Various free licences (DFSG) | https://sources.debian.org |
| COSMIC desktop | GPL-3.0 | https://github.com/pop-os |
| Odoo Community 20.0 | LGPL-3.0 | https://github.com/odoo/odoo |
| Calamares installer | GPL-3.0 | https://github.com/calamares/calamares |
| penguins-eggs | GPL-3.0 | https://github.com/pieroproietti/penguins-eggs |
| Bazaar app store | GPL-3.0 | https://github.com/kolunmi/bazaar |

Source code for the Debian packages is available from the Debian archive
(`deb-src` lines are enabled in `/etc/apt/sources.list`; use `apt source <package>`).
Flatpak apps come from Flathub with their upstream sources.

## Non-free components shipped in the ISO

For convenience the ISO also includes some freely downloadable but **proprietary**
software and firmware. These are not open source and keep their own licence terms:

- Hardware firmware and CPU microcode from Debian `non-free-firmware`
  (`firmware-*`, `intel-microcode`)
- SoftMaker FreeOffice 2024
- Dropbox
- Warp Terminal
- Zoom (Flatpak `us.zoom.Zoom`)
- Master PDF Editor (Flatpak `net.code_industry.MasterPDFEditor`)

Users can remove any of them after installation.
