# Pocket Infinity Remix/Update/Art Pass (infiniti)

## Requirements
to properly view & compile the `.map` file you will need:

- the .wad files included in this folder
- Makkon's concrete, tech, and metal wads ([Makkon Textures](https://www.slipseer.com/index.php?resources/makkon-textures.28/) - too big to include here!)
- a recent build of Paril's fork of ericw tools ([nightly builds here](https://ci.appveyor.com/project/EricWasylishen/ericw-tools/history) - you're looking for the latest build from the `type-cleanup` branch)

## Preferred Compilation settings

`qbsp -splitturb`

`vis -noambient`

`light -soft -extra4 -surflight_subdivide 24 -bspxlit`
