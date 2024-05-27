connection: "oil"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: oil_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: oil_default_datagroup

explore: co2 {
  always_filter: {
    filters: [co2.year: ">1990"]
  }
}
