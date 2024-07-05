if peattributes.ismsil then
  mp.set_mpattribute("PUA:Block:WizzRemote:Bit")
  return mp.INFECTED
end
return mp.CLEAN
