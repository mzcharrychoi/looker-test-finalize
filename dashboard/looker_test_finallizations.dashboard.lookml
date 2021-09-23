- dashboard: '0915_looker_handson'
  title: '0915_Looker_Hands-on'
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: ''
    name: ''
    model: harry_looker_test
    explore: ga_sessions
    type: single_value
    fields: [ga_sessions.date_formatted, ga_sessions.total_hits]
    fill_fields: [ga_sessions.date_formatted]
    sorts: [ga_sessions.date_formatted desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "(${ga_sessions.total_hits}\
          \ - offset(${ga_sessions.total_hits},1))/offset(${ga_sessions.total_hits},1)\n\
          \n", label: 전일대비, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: calculation, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    listen:
      Choose First Metric: ga_sessions.p_first_metric
      Device Operating System: ga_sessions.device__operating_system
    row: 0
    col: 0
    width: 4
    height: 3
  - title: New Tile
    name: New Tile
    model: harry_looker_test
    explore: ga_sessions
    type: single_value
    fields: [ga_sessions.dynamic_title_trend]
    filters: {}
    limit: 500
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Choose First Metric: ga_sessions.p_first_metric
      Device Operating System: ga_sessions.device__operating_system
    row: 0
    col: 4
    width: 9
    height: 3
  - title: New Tile
    name: New Tile (2)
    model: harry_looker_test
    explore: ga_sessions
    type: single_value
    fields: [ga_sessions.dynamic_title_bar]
    filters: {}
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Choose First Metric: ga_sessions.p_first_metric
      Device Operating System: ga_sessions.device__operating_system
    row: 0
    col: 13
    width: 10
    height: 3
  - title: New Tile
    name: New Tile (3)
    model: harry_looker_test
    explore: ga_sessions
    type: looker_area
    fields: [ga_sessions.channel_grouping, ga_sessions.date, ga_sessions.total_hits]
    pivots: [ga_sessions.channel_grouping]
    sorts: [ga_sessions.total_hits desc 0, ga_sessions.channel_grouping]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Choose First Metric: ga_sessions.p_first_metric
      Device Operating System: ga_sessions.device__operating_system
    row: 3
    col: 0
    width: 13
    height: 9
  - title: New Tile
    name: New Tile (4)
    model: harry_looker_test
    explore: ga_sessions
    type: looker_bar
    fields: [ga_sessions.channel_grouping, ga_sessions.total_visit]
    filters: {}
    sorts: [ga_sessions.total_visit desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    defaults_version: 1
    listen:
      Choose First Metric: ga_sessions.p_first_metric
      Device Operating System: ga_sessions.device__operating_system
    row: 3
    col: 13
    width: 10
    height: 9
  filters:
  - name: Choose First Metric
    title: Choose First Metric
    type: field_filter
    default_value: channel Grouping
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
      options: []
    model: harry_looker_test
    explore: ga_sessions
    listens_to_filters: []
    field: ga_sessions.p_first_metric
  - name: Device Operating System
    title: Device Operating System
    type: field_filter
    default_value: Android
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: popover
      options: []
    model: harry_looker_test
    explore: ga_sessions
    listens_to_filters: []
    field: ga_sessions.device__operating_system
