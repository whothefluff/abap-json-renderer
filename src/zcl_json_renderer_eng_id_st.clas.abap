class zcl_json_renderer_eng_id_st definition
                                  public
                                  create public.

  public section.

    interfaces: zif_json_renderer_engine.

  protected section.

endclass.
class zcl_json_renderer_eng_id_st implementation.

  method zif_json_renderer_engine~process.

    data(value_writer) = cl_sxml_string_writer=>create( if_sxml=>co_xt_json ).

    call transformation id source abap = i_data
                           result xml value_writer.

    r_val = new converter( )->byte_chains_to_string( value_writer->get_output( ) ).

  endmethod.

endclass.
