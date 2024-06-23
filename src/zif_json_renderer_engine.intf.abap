interface zif_json_renderer_engine public.

  methods process
            importing
              i_data type data
            returning
              value(r_val) type string.

endinterface.
