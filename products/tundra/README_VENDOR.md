# vendor/motorola/tundra - NOT in aospa.dependencies, on purpose

Dubai's aospa.dependencies downloads vendor/motorola from AOSPA's
proprietary_vendor_motorola (uvite) + firmware repo. Those repos contain
dubai, not tundra. Adding them here would sync the wrong blobs.

For tundra, vendor/motorola/tundra must be generated locally:

1. Clone TheMuppets tundra + sm7325-common (lineage-22.1 / lineage-21) into
   a dump dir, OR extract from a stock tundra device via adb.
2. cd device/motorola/tundra && ./extract-files.sh <dump-or-adb>
   using the proprietary-files.txt in this tree (curated: dubai base
   minus dubai-specific, plus 62 tundra-specific lines).

Do NOT add the AOSPA blob repos back unless someone verifies they contain
tundra. Do NOT copy the whole LOS vendor tree: that reintroduces the
Lineage-only blobs this bringup is trying to avoid.
