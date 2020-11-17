requires "verification.k"

module B066AD4793DFF847E5571F1395FA6DBC71697CD6BE0EFE08250F43A2645A903E
  imports VERIFICATION

// Dai_permit
claim [Dai.permit.pass.rough]:
  <k> #execute ~> CONTINUATION => #halt ~> CONTINUATION </k>
  <exit-code> 1 </exit-code>
  <mode> NORMAL </mode>
  <schedule> ISTANBUL </schedule>
  <ethereum>
    <evm>
      <output> .ByteArray </output>
      <statusCode> _ => EVMC_SUCCESS </statusCode>
      <endPC> _ => ?_ </endPC>
      <callStack> VCallStack </callStack>
      <interimStates> _ </interimStates>
      <touchedAccounts> _ => ?_ </touchedAccounts>
      <callState>
        <program> Dai_bin_runtime </program>
        <jumpDests> #computeValidJumpDests(Dai_bin_runtime) </jumpDests>
        <id> ACCT_ID </id>
        <caller> CALLER_ID </caller>
        <callData> #abiCallData("permit", #address(ABI_hodler), #address(ABI_ombudsman), #uint256(ABI_n), #uint256(ABI_ttl), #bool(ABI_may), #uint8(ABI_v), #bytes32(ABI_r), #bytes32(ABI_s)) ++ CD => ?_ </callData>
        <callValue> VCallValue </callValue>
        <wordStack> .WordStack => ?_ </wordStack>
        <localMem> .Memory => ?_ </localMem>
        <pc> 0 => ?_ </pc>
        <gas> #gas(VGas) => ?_ </gas>
        <memoryUsed> 0 => ?_ </memoryUsed>
        <callGas> _ => ?_ </callGas>
        <static> false </static>
        <callDepth> VCallDepth </callDepth>
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
      SetItem(1)
      SetItem(2)
      SetItem(3)
      SetItem(4)
      SetItem(5)
      SetItem(6)
      SetItem(7)
      SetItem(8)
      SetItem(9) _ </activeAccounts>
      <accounts>
        <account>
          <acctID> ACCT_ID </acctID>
          <balance> ACCT_ID_balance </balance>
          <code> Dai_bin_runtime </code>
          <storage> ACCT_ID_STORAGE => ACCT_ID_STORAGE [ #Dai.nonces[ABI_hodler] <- 1 +Int Nonce ]  [ #Dai.allowance[ABI_hodler][ABI_ombudsman] <- (#if ABI_may ==Int 0 #then 0 #else maxUInt256 #fi) ] </storage>
          <origStorage> ACCT_ID_ORIG_STORAGE </origStorage>
          <nonce> Nonce_Dai => ?_ </nonce>
        </account>
        <account>
          <acctID> 1 </acctID>
          <balance> ECREC_BAL </balance>
          <code> .ByteArray </code>
          <storage> _:Map </storage>
          <origStorage> _ </origStorage>
          <nonce> _ </nonce>
        </account>
        <account>
          <acctID> 2 </acctID>
          <balance> SHA256_BAL </balance>
          <code> .ByteArray </code>
          <storage> _:Map </storage>
          <origStorage> _ </origStorage>
          <nonce> _ </nonce>
        </account>
        <account>
          <acctID> 3 </acctID>
          <balance> RIP160_BAL </balance>
          <code> .ByteArray </code>
          <storage> _:Map </storage>
          <origStorage> _ </origStorage>
          <nonce> _ </nonce>
        </account>
        <account>
          <acctID> 4 </acctID>
          <balance> ID_BAL </balance>
          <code> .ByteArray </code>
          <storage> _:Map </storage>
          <origStorage> _ </origStorage>
          <nonce> _ </nonce>
        </account>
        <account>
          <acctID> 5 </acctID>
          <balance> MODEXP_BAL </balance>
          <code> .ByteArray </code>
          <storage> _:Map </storage>
          <origStorage> _ </origStorage>
          <nonce> _ </nonce>
        </account>
        <account>
          <acctID> 6 </acctID>
          <balance> ECADD_BAL </balance>
          <code> .ByteArray </code>
          <storage> _:Map </storage>
          <origStorage> _ </origStorage>
          <nonce> _ </nonce>
        </account>
        <account>
          <acctID> 7 </acctID>
          <balance> ECMUL_BAL </balance>
          <code> .ByteArray </code>
          <storage> _:Map </storage>
          <origStorage> _ </origStorage>
          <nonce> _ </nonce>
        </account>
        <account>
          <acctID> 8 </acctID>
          <balance> ECPAIRING_BAL </balance>
          <code> .ByteArray </code>
          <storage> _:Map </storage>
          <origStorage> _ </origStorage>
          <nonce> _ </nonce>
        </account>
        <account>
          <acctID> 9 </acctID>
          <balance> BLAKE2_BAL </balance>
          <code> .ByteArray </code>
          <storage> _:Map </storage>
          <origStorage> _ </origStorage>
          <nonce> _ </nonce>
        </account>
       ... 
      </accounts>
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

  andBool (#rangeAddress(ABI_hodler)
  andBool (#rangeAddress(ABI_ombudsman)
  andBool (#rangeUInt(256, ABI_n)
  andBool (#rangeUInt(256, ABI_ttl)
  andBool (#rangeBool(ABI_may)
  andBool (#rangeUInt(8, ABI_v)
  andBool (#rangeBytes(32, ABI_r)
  andBool (#rangeBytes(32, ABI_s)
  andBool (#rangeUInt(256, Nonce)
  andBool (#rangeUInt(256, Allowed)
  andBool (#rangeBytes(32, Domain_separator)
  andBool ((#sizeByteArray(CD) <=Int 1250000000)
  andBool ((#rangeUInt(256, Nonce +Int 1))
  andBool (#rangeUInt(256, Junk_0)
  andBool (#rangeUInt(256, Junk_1)
  andBool (#rangeUInt(256, Junk_2)
  andBool ((ABI_hodler =/=Int 0)
  andBool ((ABI_hodler ==Int #symEcrec(keccakIntList(#asWord(#parseHexWord("0x19") : #parseHexWord("0x01") : .WordStack) Domain_separator keccakIntList(keccak(#parseByteStackRaw("Permit(address holder,address spender,uint256 nonce,uint256 expiry,bool allowed)")) ABI_hodler ABI_ombudsman ABI_n ABI_ttl ABI_may)), ABI_v, ABI_r, ABI_s))
  andBool ((ABI_ttl ==Int 0 orBool TIME <=Int ABI_ttl)
  andBool ((VCallValue ==Int 0)
  andBool ((ABI_n ==Int Nonce)
  andBool ((VCallDepth <Int 1024)))))))))))))))))))))))

  andBool #lookup(ACCT_ID_STORAGE, #Dai.nonces[ABI_hodler]) ==Int Nonce
  andBool #lookup(ACCT_ID_STORAGE, #Dai.DOMAIN_SEPARATOR) ==Int Domain_separator
  andBool #lookup(ACCT_ID_STORAGE, #Dai.allowance[ABI_hodler][ABI_ombudsman]) ==Int Allowed
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Dai.nonces[ABI_hodler]) ==Int Junk_0
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Dai.DOMAIN_SEPARATOR) ==Int Junk_1
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Dai.allowance[ABI_hodler][ABI_ombudsman]) ==Int Junk_2
  andBool #Dai.nonces[ABI_hodler] =/=Int #Dai.DOMAIN_SEPARATOR
  andBool #Dai.nonces[ABI_hodler] =/=Int #Dai.allowance[ABI_hodler][ABI_ombudsman]
  andBool #Dai.DOMAIN_SEPARATOR =/=Int #Dai.allowance[ABI_hodler][ABI_ombudsman] 

endmodule
