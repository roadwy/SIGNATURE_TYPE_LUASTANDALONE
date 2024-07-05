if mp.HSTR_WEIGHT >= 4 then
  mp.set_mpattribute("PUA:Block:CoinMiner.D")
  return mp.INFECTED
end
return mp.LOWFI
