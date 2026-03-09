# ── Oh My Posh ───────────────────────────────────────────────────────────
oh-my-posh init pwsh --config "$env:USERPROFILE\jandedobbeleer.omp.json" | Invoke-Expression

# ── Aliases ──────────────────────────────────────────────────────────────
Set-Alias ll Get-ChildItem
function la { Get-ChildItem -Force @args }
function .. { Set-Location .. }
function ... { Set-Location ..\.. }

# ── Conda / Micromamba ───────────────────────────────────────────────────
function activate { conda activate @args }
function deactivate { conda deactivate }

# ── WSL shortcuts ────────────────────────────────────────────────────────
function wsl-home { wsl -d Ubuntu -- bash -c "cd ~ && bash" }
function wsl-bioinfo { wsl -d Ubuntu -- bash -c "cd ~ && micromamba activate bioinfo && bash" }

# ── Git shortcuts ────────────────────────────────────────────────────────
function gs { git status @args }
function ga { git add @args }
function gc { git commit -m @args }
function gp { git push @args }
function gl { git log --oneline --graph --decorate @args }

# ── Navigation shortcuts ─────────────────────────────────────────────────
function projects { Set-Location D:\jvboy\projects }
function downloads { Set-Location C:\Users\jvboy\Downloads }

# ── Useful functions ─────────────────────────────────────────────────────
function which { Get-Command @args | Select-Object -ExpandProperty Source }
function reload { . $PROFILE }

# ── Welcome message ──────────────────────────────────────────────────────
Write-Host "PowerShell 7 ready" -ForegroundColor Cyan