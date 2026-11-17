# Homebrew tap de fcophox

## Mawaru

Mockups 3D animados de dispositivos, con exportación a vídeo. Web: https://mawaru.fcophox.com

```bash
brew install --cask fcophox/tap/mawaru
```

- **Actualizar:** `brew upgrade --cask mawaru`
- **Desinstalar:** `brew uninstall --cask mawaru`. Con `--zap` también se borran los ajustes y los modelos importados.

Mawaru no está notarizada por Apple. El cask le quita la marca de cuarentena después de instalarla, así que abre sin el aviso de Gatekeeper.

### Publicar una versión nueva

1. Sube el `.dmg` a una release `vX.Y.Z` de [fcophox/mawaru-app](https://github.com/fcophox/mawaru-app/releases).
2. En `Casks/mawaru.rb`, actualiza `version` y `sha256` (`shasum -a 256 Mawaru-X.Y.Z-universal.dmg`).
