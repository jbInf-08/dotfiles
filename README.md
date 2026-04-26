# dotfiles

Personal shell/bootstrap files for bioinformatics workstations.

## Quick install

```bash
git clone https://github.com/jbInf-08/dotfiles.git
cd dotfiles
cp .bashrc ~/.bashrc
cp bioinfo_env.yml ~/
```

## Recommended order

1. Install `micromamba` to `$HOME/bin/micromamba`.
2. Copy `.bashrc` to your home directory.
3. Create the environment: `micromamba env create -f bioinfo_env.yml`.
4. Open a new shell and verify `micromamba activate bioinfo` works.

## Files

- `.bashrc`: interactive shell defaults plus micromamba initialization.
- `bioinfo_env.yml`: reproducible bioinformatics toolchain environment.

## Maintenance

- Keep host-specific aliases in `~/.bash_aliases` so `.bashrc` stays portable.
- Periodically refresh dependencies: `micromamba env update -f bioinfo_env.yml --prune`.
