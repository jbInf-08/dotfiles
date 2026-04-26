# dotfiles

Personal shell/bootstrap files for bioinformatics workstations.

## Quick install

```bash
git clone https://github.com/jbInf-08/dotfiles.git
cd dotfiles
cp .bashrc ~/.bashrc
cp bioinfo_env.yml ~/
```

For Windows PowerShell profile usage, copy:

```powershell
Copy-Item .\powershell_profile.ps1 $PROFILE.CurrentUserAllHosts -Force
```

## Recommended order

1. Install `micromamba` to `$HOME/bin/micromamba`.
2. Copy `.bashrc` to your home directory.
3. Create the environment: `micromamba env create -f bioinfo_env.yml`.
4. Open a new shell and verify `micromamba activate bioinfo` works.

## Files

- `.bashrc`: interactive shell defaults plus micromamba initialization.
- `bioinfo_env.yml`: reproducible bioinformatics toolchain environment.
- `powershell_profile.ps1`: PowerShell aliases and environment bootstrap.
- `.vimrc`, `.nanorc`, `.emacs`: editor defaults for CLI workflows.
- `wslconfig`: WSL resource/runtime tuning.

## Portable vs machine-specific settings

- Keep shared defaults in tracked files.
- Put machine-specific overrides in local files such as `~/.bash_aliases`, `~/.bashrc.local`, or a private PowerShell profile that dot-sources the tracked one.
- Avoid committing host paths, usernames, or private tokens.

## Rollback

If a profile change causes issues:

1. Restore your previous backup (`cp ~/.bashrc.bak ~/.bashrc` or equivalent).
2. Start a fresh shell and confirm startup succeeds.
3. Reapply changes incrementally from this repo.

## Maintenance

- Keep host-specific aliases in `~/.bash_aliases` so `.bashrc` stays portable.
- Periodically refresh dependencies: `micromamba env update -f bioinfo_env.yml --prune`.
