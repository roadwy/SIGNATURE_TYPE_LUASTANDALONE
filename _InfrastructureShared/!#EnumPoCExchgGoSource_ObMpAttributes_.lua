if #mp.enum_mpattributesubstring("SCPT:PoCExchgGoSource") >= 2 then
  mp.set_mpattribute("Lua:PoCExchgGoSourceFrags")
end
return mp.CLEAN
