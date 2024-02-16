# Odroid C4
## CoreELEC
 - https://coreelec.org/

## Docker
 - https://discourse.coreelec.org/t/first-steps-in-docker/12217

## Node-exporter
- run docker container by `run_node-exporter.sh`
- metrics are available on endpoint `http://<ip>:9100/metrics`

## Kodi
- update cache size: 
  - create file `advancedsettings.xml` at `/storage/.kodi/userdata/` with content:
```xml
<?xml version="1.0"?>
<!-- video cache set to 580.26666641235 MB -->
<advancedsettings>
    <cache>
        <memorysize>608453700</memorysize>
        <buffermode>1</buffermode>
        <readfactor>20</readfactor>
    </cache>
</advancedsettings>
```