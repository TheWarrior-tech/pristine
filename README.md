<div align="center">

✦ PRISTINE

Deep clean and optimize your Mac — straight from the terminal.

Think CleanMyMac meets iStat Menus meets AppCleaner — but free, open-source, and fully inspectable.

Zero Dependencies • No Electron • No Subscriptions • No Bloat

</div>

╔═══════════════════════════════════════════════════╗
║   ✦  PRISTINE  — Deep clean and optimize your Mac ║
╚═══════════════════════════════════════════════════╝
  v1.0.0 · Safe by default · Zero dependencies

  ↑↓ or j/k to navigate  ·  Enter to run  ·  q to quit

   ▶  clean       Deep clean caches, logs & browser data
      optimize    Flush DNS, maintenance scripts & services
      analyze     Visual disk space breakdown by folder
      uninstall   Remove apps and all their hidden files
      purge       Delete build artifacts (node_modules etc.)
      status      Live real-time system health dashboard
      doctor      Full system health check & recommendations


✨ Why Pristine?

Feature

Description

🧹 Deep Clean

Removes user caches, system logs, browser caches, npm/pip/yarn/gradle caches, Xcode DerivedData, Docker layers, and Trash.

🗑️ Smart Uninstaller

Finds and removes apps + all associated preferences, launch agents, containers, logs, and support files.

⚡ System Optimizer

Flushes DNS, rebuilds Dock/Finder, runs periodic maintenance, clears font cache, rebuilds Launch Services.

📊 Disk Analyzer

Visual breakdown of disk usage — drill into any folder, see percentage bars at a glance.

📦 Build Artifact Purge

Finds and removes node_modules, target, .build, venv, __pycache__, and 10+ more across all your projects.

⏱️ Live Dashboard

Real-time CPU, memory, disk, battery, and top processes — refreshes every 2 seconds.

🩺 Doctor

Read-only system health report with actionable recommendations.

⌨️ Interactive TUI

Beautiful arrow-key menu — no mouse needed.

🛡️ Safe by Default

Confirmations before every destructive action and a built-in Dry Run mode.

🚀 Installation

Pristine runs entirely on standard bash. No Homebrew, Node, or Python required.

Quick Install (Recommended):

curl -fsSL [https://raw.githubusercontent.com/TheWarrior-tech/pristine/main/install.sh](https://raw.githubusercontent.com/TheWarrior-tech/pristine/main/install.sh) | bash


Manual Install:

curl -fsSL [https://raw.githubusercontent.com/TheWarrior-tech/pristine/main/pristine](https://raw.githubusercontent.com/TheWarrior-tech/pristine/main/pristine) -o pristine
chmod +x pristine
sudo mv pristine /usr/local/bin/pristine


📖 Quick Start

Run the interactive menu by simply typing pristine in your terminal, or use direct commands for specific tasks.

Core Commands

pristine                      # Launch the beautiful interactive menu
pristine clean                # Deep clean caches, logs & browser data
pristine optimize             # Flush DNS, run maintenance, rebuild services
pristine analyze              # Visualize disk usage (home folder)
pristine analyze ~/Downloads  # Drill into a specific folder
pristine uninstall            # Remove apps + all hidden files
pristine purge                # Delete build artifacts
pristine status               # Live system health dashboard
pristine doctor               # Full health check & recommendations


Safety Flags

pristine clean --dry-run      # Preview what would be cleaned (no changes made)
pristine purge --dry-run      # Preview artifact removal
pristine --version            # Show version
pristine --help               # Show all commands


🔍 How It Works

Keep your README clean! Expand the sections below to see exactly what Pristine targets when you run it.

<details>
<summary><b>🧹 What gets cleaned during a Deep Clean?</b> <i>(Click to expand)</i></summary>




pristine clean targets the following areas to free up space safely:

User caches — ~/Library/Caches

System logs — ~/Library/Logs, crash reporter logs

Browser caches — Chrome, Brave, Firefox, Safari

Developer tool caches — npm, Yarn, pnpm, pip, Composer, Gradle, Maven, Go modules, Cargo

Xcode — DerivedData, iOS DeviceSupport, Archives

App caches — Slack, Spotify, VS Code logs, Adobe

Docker — image cache layers

Trash — ~/.Trash

Temp files — $TMPDIR

</details>

<details>
<summary><b>🗑 What gets removed by the Smart Uninstaller?</b> <i>(Click to expand)</i></summary>




When you uninstall an app, pristine uninstall meticulously searches and removes:

The .app bundle itself

~/Library/Application Support/<AppName>

~/Library/Caches/<AppName>

~/Library/Preferences/<AppName>.plist

~/Library/Logs/<AppName>

~/Library/Saved Application State/<AppName>

~/Library/Containers/<AppName>

~/Library/Group Containers/*<AppName>*

~/Library/WebKit/<AppName>

~/Library/LaunchAgents/<AppName>

/Library/Application Support/<AppName>

/Library/LaunchAgents/<AppName>

/Library/LaunchDaemons/<AppName>

/Library/PrivilegedHelperTools/<AppName>

</details>

📺 Previews

⚡ Status Dashboard

A beautiful, real-time look at your system resources.

  PRISTINE STATUS  Health ● 94  MacBook-Pro · Apple M3 Pro · 18GB · macOS 14.5

  ⚙  CPU
  Usage   ████████░░░░░░░░░░░░░░░░░░░░   28%
  Load    0.45 1.12 1.03

  ▦  Memory
  Used    ███████████████░░░░░░░░░░░░░   58%
  Usage   10.6 GB / 18.0 GB

  ▤  Disk  (/)
  Used    █████████████░░░░░░░░░░░░░░░   47%
  Free    265.2 GB free · 500.0 GB total

  ⚡ Battery
  Level   ████████████████████████████  100%
  Status  Charged

  ▶  Top Processes
  WindowServer            8.2%
  Slack                   4.1%
  Chrome Helper           3.8%


🔬 Doctor Report

Instant health checks with actionable advice.

  ✓  Disk space (265GB free)            47% used
  ✓  Memory pressure                    Normal — 58%
  ⚠  Trash                              4.2GB — consider emptying
  ⚠  User caches                        22.4GB — run 'pristine clean'
  ✓  SSD SMART status                   Verified
  ✓  macOS version                      14.5
  ✓  System uptime                      3 days

  Passed: 5  Warnings: 2  Critical: 0


🛡 Safety & Configuration

Pristine is designed to be safe by default. It will never delete files without your explicit permission unless you bypass prompts.

Always confirms: You hold the keys. Confirmations are required before deleting anything.

Dry-Run Mode: Use --dry-run on every destructive command to see exactly what would happen before committing.

No Root Required: Most operations work perfectly without sudo (it is only requested for DNS flushes, maintenance scripts, and memory purging).

Read-Only Tools: doctor and analyze are completely read-only. Browse your disk space and check your system health with total peace of mind.

Custom Configuration

To set custom project scan paths for pristine purge, create a configuration file at ~/.config/pristine/purge_paths with one path per line:

~/Documents/Projects
~/Work/Clients
~/Code


🤝 Contributing

PRs are highly welcome! If you are planning a massive change, please open an issue first to discuss it. We'd love help with:

Additional browser cache paths

New build artifact patterns

Improved memory/CPU metric accuracy

Windows Subsystem for Linux (WSL) support

Shell completion scripts (zsh, bash, fish)

📈 Star History

<div align="center">
<a href="https://www.google.com/search?q=https://star-history.com/%23TheWarrior-tech/pristine%26Date">
<picture>
<source media="(prefers-color-scheme: dark)" srcset="https://www.google.com/search?q=https://api.star-history.com/chart%3Frepos%3DTheWarrior-tech/pristine%26type%3DDate%26theme%3Ddark" />
<source media="(prefers-color-scheme: light)" srcset="https://www.google.com/search?q=https://api.star-history.com/chart%3Frepos%3DTheWarrior-tech/pristine%26type%3DDate" />
<img alt="Star History Chart" src="https://www.google.com/search?q=https://api.star-history.com/chart%3Frepos%3DTheWarrior-tech/pristine%26type%3DDate" />
</picture>
</a>
</div>

<div align="center">

📄 License

MIT — Free to use, modify, and distribute.

</div>
