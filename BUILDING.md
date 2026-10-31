# Building PaRappa the Rapper

The official release entrypoint uses the maintained shared builder. Start from
this title's pinned psxrecomp and recomp-ui revisions and supply the legally
owned USA image described in DISC.md. The local game config uses
`disc/PaRappa the Rapper.cue` and extracted `disc/SCUS_941.83`.

```powershell
.\scripts\package_release.ps1 --channel public --platform windows --work-dir G:/Temp/parappa-release --out-dir dist
```

```sh
./scripts/package_release.sh --channel public --platform linux --work-dir /tmp/parappa-release --out-dir dist
```

The builder regenerates game C from the original executable, uses bundled
OpenBIOS, builds with two compiler jobs, collects three fresh selective runtime
PGO profiles from a private muted boot, closes that process normally, and builds
with strict profile use. It verifies and packages the compiled game, original
controller map, title mods, notices and overlay-toolchain fallback. Profiles are
specific to the current source/compiler/configuration and are never transplanted.
Boot training is a build step; it is not gameplay or performance qualification.

The named `scripts/package_release_prebuilt.sh` and manual Legacy prebuilt
portability workflow retain the former no-disc committed-C packaging path.
They do not supply fresh-PGO release qualification and no longer run on tags;
manual legacy publication is OFF by default so official validated artifacts are
not replaced by a competing tag build. Linux recipes remain supported source;
this release's new production evidence covers Windows x64 only.
