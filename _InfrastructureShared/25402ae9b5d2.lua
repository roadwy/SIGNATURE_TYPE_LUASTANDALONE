if mp.get_mpattribute("PACKED_WITH:[FunctionPacked]") and mp.get_mpattribute("SCRIPT:base64") then
  return mp.INFECTED
end
return mp.CLEAN
