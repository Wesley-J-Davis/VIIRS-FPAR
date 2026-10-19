#!/bin/sh
fetch_urls() {
        while read -r line; do
            curl -b ~/.urs_cookies -c ~/.urs_cookies -L -n -f -Og $line && echo || exit_with_error "Command failed with error. Please retrieve the data manually."
        done;
}
fetch_urls <<'EDSCEOF'
https://data.lpdaac.earthdatacloud.nasa.gov/lp-prod-protected/VJ215A2H.002/VJ215A2H.A2026257.h06v03.002.2026265182920/VJ215A2H.A2026257.h06v03.002.2026265182920.h5
https://data.lpdaac.earthdatacloud.nasa.gov/lp-prod-protected/VJ215A2H.002/VJ215A2H.A2026257.h00v10.002.2026265182943/VJ215A2H.A2026257.h00v10.002.2026265182943.h5
https://data.lpdaac.earthdatacloud.nasa.gov/lp-prod-protected/VJ215A2H.002/VJ215A2H.A2026257.h01v11.002.2026265182939/VJ215A2H.A2026257.h01v11.002.2026265182939.h5
https://data.lpdaac.earthdatacloud.nasa.gov/lp-prod-protected/VJ215A2H.002/VJ215A2H.A2026257.h35v10.002.2026265182955/VJ215A2H.A2026257.h35v10.002.2026265182955.h5
EDSCEOF
