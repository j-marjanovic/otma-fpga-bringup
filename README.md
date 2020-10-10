# Bring-up project for Stratix V on OTMA board

## Recompiling the project

### Regenerating the IP variations

Run `generate_ips.sh` script in `scripts` folder to regenerate all IP
variations.

## Software generation

Here are the commands which were used to generate software project. Maybe this
can be useful when setting up single-script build for CI.

### Generate BSP

```
nios2-bsp hal . ../../qsys/system.sopcinfo --cpu-name nios2_gen2_0 --type-version 16.1
```

### Generate application

```
nios2-app-generate-makefile --app-dir . --bsp-dir ../otma_bringup_bsp --elf-name
```
