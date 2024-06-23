class zcl_json_renderer definition
                        public
                        create public.

  public section.

    types t_engine type ref to zif_json_renderer_engine.

    methods constructor
              importing
                i_engine type zcl_json_renderer=>t_engine.

    methods render
              importing
                i_data type data
              returning
                value(r_val) type string.

  protected section.

    data an_engine type zcl_json_renderer=>t_engine.

endclass.
class zcl_json_renderer implementation.

  method constructor.

    me->an_engine = i_engine.

  endmethod.
  method render.

    r_val = me->an_engine->process( i_data ).

  endmethod.

endclass.
