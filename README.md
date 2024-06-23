# abap-json-renderer

ABAP variables to JSON format

## Use

- Create an instance of the renderer injecting an **engine**[^1]:
   ```abap
   data(json_renderer) = new zcl_json_renderer( new zcl_json_renderer_eng_id_st( ) ).
   ```
[^1]: You can implement interface _ZIF_JSON_RENDERER_ENGINE_ to tweak the process 

- Call the method with the variable as an argument:
   ```abap
   json_renderer->render( itab ).
   ```