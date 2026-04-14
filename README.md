# homebrew-spectra

Homebrew tap for [spectra](https://github.com/IbrarYunus/spectra) — a fast terminal music visualiser for macOS by [Ibrar Yunus](https://ibraryunus.com).

## Install

```sh
brew tap IbrarYunus/spectra
brew install spectra-vis
```

> The Homebrew formula is named `spectra-vis` because `spectra` is already taken
> in homebrew-core (a C++ eigenvalue library). The installed binary is still
> called **`spectra`**.

Then run:

```sh
spectra --system          # capture system audio (macOS 13+, requires Screen Recording permission)
spectra                    # microphone input
spectra -f song.mp3        # visualise an audio file
spectra -h                 # all options
spectra --credits          # author info
```

## Styles

`bars`, `mirror`, `wave`, `spectro`, `bars+wave`, `blocks`, `radial`, `lissajous`, `matrix`, `particles` — cycle with `space` in-app.

## Build requirements

Formula builds from source; it will pull in `rust` (build dep) and needs Xcode Command Line Tools for `swiftc` (the ScreenCaptureKit shim).

## License

MIT — see the main [spectra repo](https://github.com/IbrarYunus/spectra).
