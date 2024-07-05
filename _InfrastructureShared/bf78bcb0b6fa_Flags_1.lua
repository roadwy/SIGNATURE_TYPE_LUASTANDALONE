if mp.get_mpattribute("SIGATTR:DelphiFile") and peattributes.isexe and (hstrlog[1].matched or hstrlog[2].matched or hstrlog[3].matched or hstrlog[4].matched) then
  return mp.INFECTED
end
return mp.LOWFI
