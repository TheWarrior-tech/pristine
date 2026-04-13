<div align="center">

✦ Pristine

Deep clean and optimize your Mac — from the terminal.

Pristine is a zero-dependency, single-file Mac cleaner that runs entirely in your terminal. 



Think CleanMyMac meets iStat Menus meets AppCleaner — but free, open-source, and fully inspectable. 



No Electron. No subscription. No bloat.

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


✨ Features

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

🚀 Install

One-liner:

curl -fsSL [https://raw.githubusercontent.com/TheWarrior-tech/pristine/main/install.sh](https://raw.githubusercontent.com/TheWarrior-tech/pristine/main/install.sh) | bash


Manual install:

curl -fsSL [https://raw.githubusercontent.com/TheWarrior-tech/pristine/main/pristine](https://raw.githubusercontent.com/TheWarrior-tech/pristine/main/pristine) -o pristine
chmod +x pristine
sudo mv pristine /usr/local/bin/pristine


That's it. No Homebrew, no npm, no Python. Pure bash.

📖 Usage

Core Commands

pristine                      # Launch interactive menu
pristine clean                # Deep clean caches, logs & browser data
pristine optimize             # Flush DNS, run maintenance, rebuild services
pristine analyze              # Visualize disk usage (home folder)
pristine analyze ~/Downloads  # Drill into a specific folder
pristine uninstall            # Remove apps + all hidden files
pristine purge                # Delete build artifacts
pristine status               # Live system health dashboard
pristine doctor               # Full health check & recommendations


Options

pristine clean --dry-run      # Preview what would be cleaned (no changes made)
pristine purge --dry-run      # Preview artifact removal
pristine --version            # Show version
pristine --help               # Show all commands


🔍 How It Works

🧹 What Gets Cleaned

pristine clean targets the following areas to free up space:

User caches — ~/Library/Caches

System logs — ~/Library/Logs, crash reporter logs

Browser caches — Chrome, Brave, Firefox, Safari

Developer tool caches — npm, Yarn, pnpm, pip, Composer, Gradle, Maven, Go modules, Cargo

Xcode — DerivedData, iOS DeviceSupport, Archives

App caches — Slack, Spotify, VS Code logs, Adobe

Docker — image cache layers

Trash — ~/.Trash

Temp files — $TMPDIR

🗑 Uninstaller: What It Removes

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

📺 Previews

⚡ Status Dashboard

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

  ✓  Disk space (265GB free)            47% used
  ✓  Memory pressure                    Normal — 58%
  ⚠  Trash                              4.2GB — consider emptying
  ⚠  User caches                        22.4GB — run 'pristine clean'
  ✓  SSD SMART status                   Verified
  ✓  macOS version                      14.5
  ✓  System uptime                      3 days

  Passed: 5  Warnings: 2  Critical: 0


🛡 Safety & Configuration

Safety First

Always confirms before deleting anything.

--dry-run mode on every destructive command — see exactly what would happen before committing.

No root required for most operations (sudo is only requested for DNS flush, maintenance scripts, and memory purge).

doctor is completely read-only and safe to run anytime.

analyze never deletes anything — safely browse and understand your disk space.

Custom Configuration

To set custom project scan paths for pristine purge, create a configuration file at ~/.config/pristine/purge_paths with one path per line:

~/Documents/Projects
~/Work/Clients
~/Code


🤝 Contributing

PRs are welcome! Please open an issue first for big changes. Areas where contributions would be highly appreciated:

Additional browser cache paths

New build artifact patterns

Improved memory/CPU metric accuracy

Windows Subsystem for Linux (WSL) support

Shell completion scripts (zsh, bash, fish)

📈 Star History

<a href="https://www.star-history.com/?repos=TheWarrior-tech%2Fpristine&type=date&legend=top-left">
<picture>
<source media="(prefers-color-scheme: dark)" srcset="https://api.star-history.com/chart?repos=TheWarrior-tech/pristine&type=date&theme=dark&legend=top-left" />
<source media="(prefers-color-scheme: light)" srcset="https://api.star-history.com/chart?repos=TheWarrior-tech/pristine&type=date&legend=top-left" />
<img alt="Star History Chart" src="https://api.star-history.com/chart?repos=TheWarrior-tech/pristine&type=date&legend=top-left" />
</picture>
</a>

📄 License

MIT — free to use, modify, and distribute.

<div align="center">
<i>Made with ☕ and a Mac that had 500GB of node_modules.</i>
</div>
