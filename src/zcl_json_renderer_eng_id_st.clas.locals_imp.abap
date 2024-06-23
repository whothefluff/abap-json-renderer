*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations
class converter implementation.

  method byte_chains_to_string.

    cl_abap_conv_in_ce=>create( )->convert( exporting input = i_binary_representation
                                            importing data = r_string ).

  endmethod.

endclass.
