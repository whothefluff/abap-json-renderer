class zcl_json_renderer_eng_ui2 definition
                                public
                                create public.

  public section.

    methods constructor
              importing
                i_target_naming_convention type /ui2/cl_json=>pretty_name_mode default /ui2/cl_json=>pretty_mode-none
                i_name_mappings type /ui2/cl_json=>name_mappings optional
                i_compressing type abap_bool default abap_true
                i_stopping_on_error type abap_bool default abap_true
                i_using_associative_arrays type abap_bool default abap_false
                i_optimizing_assoc_arrays type abap_bool default abap_false
                i_using_timestamps_in_iso8601 type abap_bool default abap_false
                i_serializing_numc_as_string type abap_bool default abap_false
                i_using_ddic_conversion_exits type abap_bool default abap_false
                i_beautifying_output type abap_bool default abap_false
                i_json_val_for_initial_ts type string default `""`
                i_json_val_for_initial_date type string default `""`
                i_json_val_for_initial_time type string default `""`.

    interfaces: zif_json_renderer_engine.

  protected section.

    data a_ui2_instance type ref to /ui2/cl_json.

endclass.
class zcl_json_renderer_eng_ui2 implementation.

  method constructor.

    me->a_ui2_instance = new #( compress = i_compressing
                                pretty_name = i_target_naming_convention
                                assoc_arrays = i_using_associative_arrays
                                ts_as_iso8601 = i_using_timestamps_in_iso8601
                                expand_includes = abap_true
                                assoc_arrays_opt = i_optimizing_assoc_arrays
                                strict_mode = i_stopping_on_error
                                numc_as_string = i_serializing_numc_as_string
                                name_mappings = i_name_mappings
                                conversion_exits = i_using_ddic_conversion_exits
                                format_output = i_beautifying_output
                                hex_as_base64 = abap_true "not used inside
                                bool_types = /ui2/cl_json=>mc_bool_types && `\TYPE=OS_BOOLEAN`
                                bool_3state = /ui2/cl_json=>mc_bool_3state
                                initial_ts = i_json_val_for_initial_ts
                                initial_date = i_json_val_for_initial_date
                                initial_time = i_json_val_for_initial_time ).

  endmethod.
  method zif_json_renderer_engine~process.

    me->a_ui2_instance->serialize_int( i_data ).

  endmethod.

endclass.
