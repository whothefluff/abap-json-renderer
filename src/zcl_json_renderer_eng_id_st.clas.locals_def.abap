*"* use this source file for any type of declarations (class
*"* definitions, interfaces or type declarations) you need for
*"* components in the private section
class converter definition
                create public.

  public section.

    methods byte_chains_to_string
              importing
                i_binary_representation type xsequence
              returning
                value(r_string) type string.

endclass.
