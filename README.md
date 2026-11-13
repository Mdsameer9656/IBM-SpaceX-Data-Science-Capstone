# IBM SpaceX Data Science Capstone — reproducible analysis

This repository package is **prepared for upload**; no GitHub repository has been published automatically.

## Data provenance
`spaceX_analysis_90_launches.csv` contains 90 rows of selected fields transcribed from the public IBM course example dataset at https://raw.githubusercontent.com/Abhigyan-RA/SpaceX-capstone/main/dataset_part_2.csv . Some payload masses are rounded to the nearest kilogram. The historical sample covers 2010–2020 and is not current SpaceX performance.

## Reproduce
Install requirements; open `spaceX_analysis.ipynb` or run `dashboard.py`. `analysis_queries.sql` contains ten SQL exercises, with results exported to `sql_*.csv`. `folium_launch_sites.html` is an actual interactive map. The PowerPoint and PDF show calculated charts and a measured holdout classification benchmark.

## Scope limits
This is an independent reconstruction using a public course sample, **not recovered student notebooks**. The subset excludes the original booster version and exact outcome strings; therefore original IBM queries about NASA booster payloads, booster-specific payload means, and precise landing modes cannot be verified and are replaced by explicitly labeled reproducible alternatives. Model evaluation is based on 18 test launches and is illustrative, not deployment-grade. No GitHub URL is claimed live until published.
