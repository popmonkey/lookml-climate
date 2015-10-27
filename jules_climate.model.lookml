- connection: poplooker-climate-data

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

# NOTE: please see https://www.looker.com/docs/r/dialects/bigquery
# NOTE: for BigQuery specific considerations

- explore: gsod
  joins:
    - join: stations
      type: left_outer
      relationship: many_to_one
      sql_on: ${gsod.station_number} = ${stations.wmo_id}

- explore: stations
