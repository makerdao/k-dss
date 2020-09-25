requires "verification.k"

module F4576F8915793BA7ED372F4669BFB2E57A9800CAE522ED7865F1D39DE69A8D82
  imports VERIFICATION

// Pot__exhaustiveness
rule [Pot..exhaustiveness]:
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
        <program> Pot_bin_runtime </program>
        <jumpDests> #computeValidJumpDests(Pot_bin_runtime) </jumpDests>
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
andBool 745139544 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 1763987465 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 3375033540 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 2622662641 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 2674363594 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 1216082050 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 2139513249 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 699302164 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 3572022915 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 77101299 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 2507842956 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 199994502 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 1710941022 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 548118667 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 911646327 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 1651291077 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 3207937467 =/=Int #asWord(VCallData [ 0 .. 4 ]) 

endmodule
