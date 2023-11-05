# Pocket Infinity Remix/Update/Art Pass (infiniti)

## Requirements
to properly view & compile the `.map` file you will need:

- the pocket_infinity.wad file included in this folder
- a 2.0.0 alpha + build of ericw tools ([latest build here](https://github.com/ericwa/ericw-tools/releases/tag/2.0.0-alpha3))

## Preferred Compilation settings

`qbsp -splitturb`
`vis -noambient`
`light -soft -extra4 -surflight_subdivide 16 -bspxlit -sunsamples 1000 -emissivequality`

*to compile the new experimental highres lightmap (ezquake 3.6.4+ only), add `-world_units_per_luxel 8 -novanilla` to the params passed to `light`
