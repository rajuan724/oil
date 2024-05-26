view: co2 {
  sql_table_name: `oil_and_gas.CO2` ;;

  dimension: cement {
    type: number
    sql: ${TABLE}.Cement ;;
  }
  dimension: coal {
    type: number
    sql: ${TABLE}.Coal ;;
  }
  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }
  dimension: flaring {
    type: number
    sql: ${TABLE}.Flaring ;;
  }
  dimension: gas {
    type: number
    sql: ${TABLE}.Gas ;;
  }
  dimension: oil {
    type: number
    sql: ${TABLE}.Oil ;;
  }
  dimension: other {
    type: number
    sql: ${TABLE}.Other ;;
  }
  dimension: total {
    type: number
    sql: ${TABLE}.Total ;;
  }
  dimension: year {
    type: number
    sql: ${TABLE}.Year ;;
  }
  measure: count {
    type: count
  }
}
