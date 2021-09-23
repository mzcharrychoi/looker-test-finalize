connection: "20210910harry"

# include all the views
include: "/views/**/*.view"

datagroup: harry_looker_test_default_datagroup {
  sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: harry_looker_test_default_datagroup

explore: ga_sessions {
  join: ga_sessions__hits {
    view_label: "Ga Sessions: Hits"
    sql: LEFT JOIN UNNEST(${ga_sessions.hits}) as ga_sessions__hits ;;
    relationship: one_to_many
  }

  join: ga_sessions__hits__product {
    view_label: "Ga Sessions: Hits Product"
    sql: LEFT JOIN UNNEST(${ga_sessions__hits.product}) as ga_sessions__hits__product ;;
    relationship: one_to_many
  }

  access_filter:  {
    field:  geo_network__country
    user_attribute: country
  }
}
