requires "verification.k"

module B4EBA9A6E86E13C042645A6C853EB13562655DABC101EF180F66D0D8A99CE2C9
  imports VERIFICATION

// End__exhaustiveness
rule [End..exhaustiveness]:
  <k> #execute ~> CONTINUATION => #halt ~> CONTINUATION </k>
  <exit-code> 1 </exit-code>
  <mode> NORMAL </mode>
  <schedule> ISTANBUL </schedule>
  <ethereum>
    <evm>
      <output> _ => ?_ </output>
      <statusCode> _ => EVMC_REVERT </statusCode>
      <endPC> _ => ?_ </endPC>
      <callStack> VCallStack </callStack>
      <interimStates> _ </interimStates>
      <touchedAccounts> _ => ?_ </touchedAccounts>
      <callState>
        <program> End_bin_runtime </program>
        <jumpDests> #computeValidJumpDests(End_bin_runtime) </jumpDests>
        <id> ACCT_ID </id>
        <caller> CALLER_ID </caller>
        <callData> #abiCallData("poke", #bytes32(ABI_ilk)) ++ CD => ?_ </callData>
        <callValue> VCallValue </callValue>
        <wordStack> .WordStack => ?_ </wordStack>
        <localMem> .Memory => ?_ </localMem>
        <pc> 0 => ?_ </pc>
        <gas> #gas(VGas) => ?_ </gas>
        <memoryUsed> 0 => ?_ </memoryUsed>
        <callGas> _ => ?_ </callGas>
        <static> false </static>
        <callDepth> VCallDepth => ?_ </callDepth>
      </callState>
      <substate>
        <selfDestruct> VSelfDestruct </selfDestruct>
        <log> _ => ?_ </log>
        <refund> Vrefund => ?_ </refund>
      </substate>
      <gasPrice> _ </gasPrice>
      <origin> ORIGIN_ID </origin>
      <blockhashes> _ </blockhashes>
      <block>
        <previousHash> _ </previousHash>
        <ommersHash> _ </ommersHash>
        <coinbase> _ </coinbase>
        <stateRoot> _ </stateRoot>
        <transactionsRoot> _ </transactionsRoot>
        <receiptsRoot> _ </receiptsRoot>
        <logsBloom> _ </logsBloom>
        <difficulty> _ </difficulty>
        <number> BLOCK_NUMBER </number>
        <gasLimit> _ </gasLimit>
        <gasUsed> _ </gasUsed>
        <timestamp> TIME </timestamp>
        <extraData> _ </extraData>
        <mixHash> _ </mixHash>
        <blockNonce> _ </blockNonce>
        <ommerBlockHeaders> _ </ommerBlockHeaders>
      </block>
    </evm>
    <network>
      <chainID> VChainId </chainID>
      <activeAccounts> SetItem(ACCT_ID)
      SetItem(Pip)
      SetItem(Vat)
      SetItem(1)
      SetItem(2)
      SetItem(3)
      SetItem(4)
      SetItem(5)
      SetItem(6)
      SetItem(7)
      SetItem(8)
      SetItem(9) _ </activeAccounts>
      <accounts> _ </accounts>
      <txOrder> _ </txOrder>
      <txPending> _ </txPending>
      <messages> _ </messages>
    </network>
  </ethereum>
requires #rangeAddress(ACCT_ID)
andBool ACCT_ID =/=Int 0
andBool #notPrecompileAddress(ACCT_ID)
andBool #rangeAddress(CALLER_ID)
andBool #rangeAddress(ORIGIN_ID)
andBool #rangeUInt(256, TIME)
andBool #rangeUInt(256, ACCT_ID_balance)
andBool #rangeUInt(256, ECREC_BAL)
andBool #rangeUInt(256, SHA256_BAL)
andBool #rangeUInt(256, RIP160_BAL)
andBool #rangeUInt(256, ID_BAL)
andBool #rangeUInt(256, MODEXP_BAL)
andBool #rangeUInt(256, ECADD_BAL)
andBool #rangeUInt(256, ECMUL_BAL)
andBool #rangeUInt(256, ECPAIRING_BAL)
andBool #rangeUInt(256, BLAKE2_BAL)
andBool VCallDepth <=Int 1024
andBool #rangeUInt(256, VCallValue)
andBool #rangeUInt(256, VChainId)
andBool 3778284093 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 2455107593 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 1763987465 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 3799003100 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 4270131142 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 3834124307 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 231365057 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 2622662641 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 699302164 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 3572022915 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 1677383774 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 1242622630 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 3358614214 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 3874382506 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 2507842956 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 3376016380 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 1856251221 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 1268921914 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 1710941022 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 2313831891 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 1346293510 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 1864784787 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 3999549365 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 1495283548 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 911646327 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 1651291077 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 1690136595 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 3207937467 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 3803237103 =/=Int #asWord(VCallData [ 0 .. 4 ]) 

endmodule
