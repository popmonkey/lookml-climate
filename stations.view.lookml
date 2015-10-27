- view: stations
  sql_table_name: "[ghcnd_stations.stations]"

  fields:
  - measure: count
    type: count
    drill_fields: detail*

  - dimension: id
    type: string
    sql: ${TABLE}.id

  - dimension: location
    type: location
    sql_latitude: ${TABLE}.latitude
    sql_longitude: ${TABLE}.longitude

  - dimension: elevation
    type: number
    sql: ${TABLE}.elevation

  - dimension_group: state
    type: string
    sql: ${TABLE}.state

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: gsn_flag
    type: string
    sql: ${TABLE}.gsn_flag

  - dimension_group: hcn_crn_flag
    type: string
    sql: ${TABLE}.hcn_crn_flag

  - dimension: wmo_id
    type: int
    sql: ${TABLE}.wmo_id

  sets:
    detail:
      - id
      - latitude
      - longitude
      - elevation
      - state_time
      - name
      - gsn_flag
      - hcn_crn_flag_time
      - wmo_id

