 #### (* --- JSON Prettyprint --- *)
 
    uses System.JSON;

    (* --- JSON Prettyprint --- *)
    function JSON_PrettyPrint(Value: String; indentation: Integer = 4): String; inline;
    var
      JV: TJSONValue;
    begin
      JV := nil;
      try
        try
          JV := TJSONObject.ParseJSONValue(Value);
          Result := JV.Format(indentation);
        except
          Result := '{"Error":"Wrong JSON Format"}';
        end;
      finally
        FreeAndNil(JV);
      end;
    end;

