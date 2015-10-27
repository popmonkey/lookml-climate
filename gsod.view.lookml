- view: gsod
  sql_table_name: "[publicdata:samples.gsod]"

  fields:
  - measure: count
    type: count
    drill_fields: detail*
    
  - measure: mean_max_temp
    type: avg
    sql: ${TABLE}.max_temperature
    drill_fields: detail*
    
  - measure: max_max_temp
    type: max
    sql: ${TABLE}.max_temperature
    drill_fields: detail*
    
  - dimension: station_number
    type: int
    sql: ${TABLE}.station_number

  - dimension: wban_number
    type: int
    sql: ${TABLE}.wban_number

  - dimension: year
    type: int
    sql: ${TABLE}.year

  - dimension: month
    type: int
    sql: ${TABLE}.month

  - dimension: day
    type: int
    sql: ${TABLE}.day

  - dimension: mean_temp
    type: number
    sql: ${TABLE}.mean_temp

  - dimension: num_mean_temp_samples
    type: int
    sql: ${TABLE}.num_mean_temp_samples

  - dimension: mean_dew_point
    type: number
    sql: ${TABLE}.mean_dew_point

  - dimension: num_mean_dew_point_samples
    type: int
    sql: ${TABLE}.num_mean_dew_point_samples

  - dimension: mean_sealevel_pressure
    type: number
    sql: ${TABLE}.mean_sealevel_pressure

  - dimension: num_mean_sealevel_pressure_samples
    type: int
    sql: ${TABLE}.num_mean_sealevel_pressure_samples

  - dimension: mean_station_pressure
    type: number
    sql: ${TABLE}.mean_station_pressure

  - dimension: num_mean_station_pressure_samples
    type: int
    sql: ${TABLE}.num_mean_station_pressure_samples

  - dimension: mean_visibility
    type: number
    sql: ${TABLE}.mean_visibility

  - dimension: num_mean_visibility_samples
    type: int
    sql: ${TABLE}.num_mean_visibility_samples

  - dimension: mean_wind_speed
    type: number
    sql: ${TABLE}.mean_wind_speed

  - dimension: num_mean_wind_speed_samples
    type: int
    sql: ${TABLE}.num_mean_wind_speed_samples

  - dimension: max_sustained_wind_speed
    type: number
    sql: ${TABLE}.max_sustained_wind_speed

  - dimension: max_gust_wind_speed
    type: number
    sql: ${TABLE}.max_gust_wind_speed

  - dimension: max_temperature
    type: number
    sql: ${TABLE}.max_temperature

  - dimension: max_temperature_explicit
    type: yesno
    sql: ${TABLE}.max_temperature_explicit

  - dimension_group: min_temperature
    type: number
    sql: ${TABLE}.min_temperature

  - dimension_group: min_temperature_explicit
    type: yesno
    sql: ${TABLE}.min_temperature_explicit

  - dimension: total_precipitation
    type: number
    sql: ${TABLE}.total_precipitation

  - dimension: snow_depth
    type: number
    sql: ${TABLE}.snow_depth

  - dimension: fog
    type: yesno
    sql: ${TABLE}.fog

  - dimension: rain
    type: yesno
    sql: ${TABLE}.rain

  - dimension: snow
    type: yesno
    sql: ${TABLE}.snow

  - dimension: hail
    type: yesno
    sql: ${TABLE}.hail

  - dimension: thunder
    type: yesno
    sql: ${TABLE}.thunder

  - dimension: tornado
    type: yesno
    sql: ${TABLE}.tornado

  sets:
    detail:
      - station_number
      - wban_number
      - year
      - month
      - day
      - mean_temp
      - num_mean_temp_samples
      - mean_dew_point
      - num_mean_dew_point_samples
      - mean_sealevel_pressure
      - num_mean_sealevel_pressure_samples
      - mean_station_pressure
      - num_mean_station_pressure_samples
      - mean_visibility
      - num_mean_visibility_samples
      - mean_wind_speed
      - num_mean_wind_speed_samples
      - max_sustained_wind_speed
      - max_gust_wind_speed
      - max_temperature
      - max_temperature_explicit
      - min_temperature_time
      - min_temperature_explicit_time
      - total_precipitation
      - snow_depth
      - fog
      - rain
      - snow
      - hail
      - thunder
      - tornado

