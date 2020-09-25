requires "verification.k"

module 2FA0F84E1A4DA02BBD120A98801F92005A6365DA15071997CCF96D66117737FC
  imports VERIFICATION

// Vow__exhaustiveness
rule [Vow..exhaustiveness]:
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
        <program> Vow_bin_runtime </program>
        <jumpDests> #computeValidJumpDests(Vow_bin_runtime) </jumpDests>
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
andBool 706554684 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 3501048671 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 1745947439 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 1763987465 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 2622662641 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 3828548933 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 1769929592 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 699302164 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 3572022915 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 234953099 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 1554044707 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 3622725451 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 3149598075 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 1082251066 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 4084909596 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 462327034 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 621184346 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 2507842956 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 1710941022 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 3411853577 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 3276395362 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 911646327 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 1690136595 =/=Int #asWord(VCallData [ 0 .. 4 ])
andBool 3207937467 =/=Int #asWord(VCallData [ 0 .. 4 ]) 

endmodule
