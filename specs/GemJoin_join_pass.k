requires "verification.k"

module BEEFD229DF6B17765E3E353292B7E6F80698D39F532C768819A0EDF039DE4593
  imports VERIFICATION

// GemJoin_join
claim [GemJoin.join.pass]:
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
        <program> GemJoin_bin_runtime </program>
        <jumpDests> #computeValidJumpDests(GemJoin_bin_runtime) </jumpDests>
        <id> ACCT_ID </id>
        <caller> CALLER_ID </caller>
        <callData> #abiCallData("join", #address(ABI_usr), #uint256(ABI_wad)) ++ CD => ?_ </callData>
        <callValue> VCallValue </callValue>
        <wordStack> .WordStack => ?_ </wordStack>
        <localMem> .Memory => ?_ </localMem>
        <pc> 0 => ?_ </pc>
        <gas> #gas(VGas) => #if ABI_wad <=Int 0
          #then   #if Allowed ==Int maxUInt256
            #then   #gas ( ( ( ( ( VGas -Int Csstore( ISTANBUL , ( Vat_bal +Int ABI_wad ) , Vat_bal , Junk_5 ) ) -Int Csstore( ISTANBUL , ( Bal_usr -Int ABI_wad ) , Bal_usr , Junk_7 ) ) -Int Csstore( ISTANBUL , ( Bal_adapter +Int ABI_wad ) , Bal_adapter , Junk_8 ) ) +Int -25515 ) )
            #else   #gas ( ( ( ( ( ( VGas -Int Csstore( ISTANBUL , ( Vat_bal +Int ABI_wad ) , Vat_bal , Junk_5 ) ) -Int Csstore( ISTANBUL , ( Allowed -Int ABI_wad ) , Allowed , Junk_6 ) ) -Int Csstore( ISTANBUL , ( Bal_usr -Int ABI_wad ) , Bal_usr , Junk_7 ) ) -Int Csstore( ISTANBUL , ( Bal_adapter +Int ABI_wad ) , Bal_adapter , Junk_8 ) ) +Int -27772 ) )
          #fi
          #else   #if Allowed ==Int maxUInt256
            #then   #gas ( ( ( ( ( VGas -Int Csstore( ISTANBUL , ( Vat_bal +Int ABI_wad ) , Vat_bal , Junk_5 ) ) -Int Csstore( ISTANBUL , ( Bal_usr -Int ABI_wad ) , Bal_usr , Junk_7 ) ) -Int Csstore( ISTANBUL , ( Bal_adapter +Int ABI_wad ) , Bal_adapter , Junk_8 ) ) +Int -25529 ) )
            #else   #gas ( ( ( ( ( ( VGas -Int Csstore( ISTANBUL , ( Vat_bal +Int ABI_wad ) , Vat_bal , Junk_5 ) ) -Int Csstore( ISTANBUL , ( Allowed -Int ABI_wad ) , Allowed , Junk_6 ) ) -Int Csstore( ISTANBUL , ( Bal_usr -Int ABI_wad ) , Bal_usr , Junk_7 ) ) -Int Csstore( ISTANBUL , ( Bal_adapter +Int ABI_wad ) , Bal_adapter , Junk_8 ) ) +Int -27786 ) )
          #fi
        #fi </gas>
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
      SetItem(Vat)
      SetItem(DSToken)
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
          <code> GemJoin_bin_runtime </code>
          <storage> ACCT_ID_STORAGE => ACCT_ID_STORAGE  </storage>
          <origStorage> ACCT_ID_ORIG_STORAGE </origStorage>
          <nonce> Nonce_GemJoin => ?_ </nonce>
        </account>
        <account>
          <acctID> Vat </acctID>
          <balance> Vat_balance </balance>
          <code> Vat_bin_runtime </code>
          <storage> Vat_STORAGE => Vat_STORAGE [ #Vat.gem[Ilk][ABI_usr] <- Vat_bal +Int ABI_wad ] </storage>
          <origStorage> Vat_ORIG_STORAGE </origStorage>
          <nonce> Nonce_Vat => ?_ </nonce>
        </account>
        <account>
          <acctID> DSToken </acctID>
          <balance> DSToken_balance </balance>
          <code> DSToken_bin_runtime </code>
          <storage> DSToken_STORAGE => DSToken_STORAGE [ #DSToken.allowance[CALLER_ID][ACCT_ID] <- #if Allowed ==Int maxUInt256 #then Allowed #else Allowed -Int ABI_wad #fi ] [ #DSToken.balances[CALLER_ID] <- Bal_usr     -Int ABI_wad ] [ #DSToken.balances[ACCT_ID] <- Bal_adapter +Int ABI_wad ] </storage>
          <origStorage> DSToken_ORIG_STORAGE </origStorage>
          <nonce> Nonce_DSToken => ?_ </nonce>
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

  andBool (#rangeAddress(ABI_usr)
  andBool (#rangeUInt(256, ABI_wad)
  andBool (#rangeAddress(Vat)
  andBool (#rangeBytes(32, Ilk)
  andBool (#rangeAddress(DSToken)
  andBool (#rangeUInt(256, Live)
  andBool (#rangeUInt(256, May)
  andBool (#rangeUInt(256, Vat_bal)
  andBool (#rangeUInt(256, Bal_usr)
  andBool (#rangeUInt(256, Bal_adapter)
  andBool (#rangeAddress(Owner)
  andBool (#rangeBool(Stopped)
  andBool (#rangeUInt(256, Allowed)
  andBool (#rangeUInt(256, Vat_balance)
  andBool (#rangeUInt(256, DSToken_balance)
  andBool ((#sizeByteArray(CD) <=Int 1250000000)
  andBool ((#notPrecompileAddress(Vat))
  andBool ((#notPrecompileAddress(DSToken))
  andBool ((#notPrecompileAddress(Owner))
  andBool ((ACCT_ID =/=Int Vat)
  andBool ((ACCT_ID =/=Int DSToken)
  andBool ((CALLER_ID =/=Int ACCT_ID)
  andBool ((Vat =/=Int 0)
  andBool ((DSToken =/=Int 0)
  andBool (#rangeUInt(256, Junk_0)
  andBool (#rangeUInt(256, Junk_1)
  andBool (#rangeUInt(256, Junk_2)
  andBool (#rangeUInt(256, Junk_3)
  andBool (#rangeUInt(256, Junk_4)
  andBool (#rangeUInt(256, Junk_5)
  andBool (#rangeUInt(256, Junk_6)
  andBool (#rangeUInt(256, Junk_7)
  andBool (#rangeUInt(256, Junk_8)
  andBool (#rangeUInt(256, Junk_9)
  andBool (((VCallDepth <Int 1024))
  andBool (((VCallValue ==Int 0))
  andBool (((Live ==Int 1))
  andBool (((ABI_wad <=Int Allowed))
  andBool (((Stopped ==Int 0))
  andBool (((May ==Int 1))
  andBool (((ABI_wad <=Int maxSInt256))
  andBool ((#rangeUInt(256, Vat_bal +Int ABI_wad))
  andBool ((#rangeUInt(256, Bal_usr     -Int ABI_wad))
  andBool ((#rangeUInt(256, Bal_adapter +Int ABI_wad))))))))))))))))))))))))))))))))))))))))))))))

  andBool #lookup(ACCT_ID_STORAGE, #GemJoin.vat) ==Int Vat
  andBool #lookup(ACCT_ID_STORAGE, #GemJoin.ilk) ==Int Ilk
  andBool #lookup(ACCT_ID_STORAGE, #GemJoin.gem) ==Int DSToken
  andBool #lookup(ACCT_ID_STORAGE, #GemJoin.live) ==Int Live
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #GemJoin.vat) ==Int Junk_0
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #GemJoin.ilk) ==Int Junk_1
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #GemJoin.gem) ==Int Junk_2
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #GemJoin.live) ==Int Junk_3
  andBool #GemJoin.vat =/=Int #GemJoin.ilk
  andBool #GemJoin.vat =/=Int #GemJoin.gem
  andBool #GemJoin.vat =/=Int #GemJoin.live
  andBool #GemJoin.ilk =/=Int #GemJoin.gem
  andBool #GemJoin.ilk =/=Int #GemJoin.live
  andBool #GemJoin.gem =/=Int #GemJoin.live
  andBool #lookup(Vat_STORAGE, #Vat.wards[ACCT_ID]) ==Int May
  andBool #lookup(Vat_STORAGE, #Vat.gem[Ilk][ABI_usr]) ==Int Vat_bal
  andBool #lookup(Vat_ORIG_STORAGE, #Vat.wards[ACCT_ID]) ==Int Junk_4
  andBool #lookup(Vat_ORIG_STORAGE, #Vat.gem[Ilk][ABI_usr]) ==Int Junk_5
  andBool #Vat.wards[ACCT_ID] =/=Int #Vat.gem[Ilk][ABI_usr]
  andBool #lookup(DSToken_STORAGE, #DSToken.allowance[CALLER_ID][ACCT_ID]) ==Int Allowed
  andBool #lookup(DSToken_STORAGE, #DSToken.balances[CALLER_ID]) ==Int Bal_usr
  andBool #lookup(DSToken_STORAGE, #DSToken.balances[ACCT_ID]) ==Int Bal_adapter
  andBool #lookup(DSToken_STORAGE, #DSToken.owner_stopped) ==Int #WordPackAddrUInt8(Owner, Stopped)
  andBool #lookup(DSToken_ORIG_STORAGE, #DSToken.allowance[CALLER_ID][ACCT_ID]) ==Int Junk_6
  andBool #lookup(DSToken_ORIG_STORAGE, #DSToken.balances[CALLER_ID]) ==Int Junk_7
  andBool #lookup(DSToken_ORIG_STORAGE, #DSToken.balances[ACCT_ID]) ==Int Junk_8
  andBool #lookup(DSToken_ORIG_STORAGE, #DSToken.owner_stopped) ==Int Junk_9
  andBool #DSToken.allowance[CALLER_ID][ACCT_ID] =/=Int #DSToken.balances[CALLER_ID]
  andBool #DSToken.allowance[CALLER_ID][ACCT_ID] =/=Int #DSToken.balances[ACCT_ID]
  andBool #DSToken.allowance[CALLER_ID][ACCT_ID] =/=Int #DSToken.owner_stopped
  andBool #DSToken.balances[CALLER_ID] =/=Int #DSToken.balances[ACCT_ID]
  andBool #DSToken.balances[CALLER_ID] =/=Int #DSToken.owner_stopped
  andBool #DSToken.balances[ACCT_ID] =/=Int #DSToken.owner_stopped 

// Vat_slip
claim [Vat.slip.pass]:
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
        <program> Vat_bin_runtime </program>
        <jumpDests> #computeValidJumpDests(Vat_bin_runtime) </jumpDests>
        <id> ACCT_ID </id>
        <caller> CALLER_ID </caller>
        <callData> #abiCallData("slip", #bytes32(ABI_ilk), #address(ABI_usr), #int256(ABI_wad)) ++ CD => ?_ </callData>
        <callValue> VCallValue </callValue>
        <wordStack> .WordStack => ?_ </wordStack>
        <localMem> .Memory => ?_ </localMem>
        <pc> 0 => ?_ </pc>
        <gas> #gas(VGas) => #if ( ABI_wad <Int 0 andBool ( minSInt256 <=Int ABI_wad andBool ( ABI_wad <=Int maxSInt256 andBool 0 <=Int ( Gem +Int ABI_wad ) ) ) )
          #then   #gas ( ( ( VGas -Int Csstore( ISTANBUL , ( Gem +Int ABI_wad ) , Gem , Junk_1 ) ) +Int -6884 ) )
          #else   #if ABI_wad <=Int 0
            #then   #gas ( ( ( VGas -Int Csstore( ISTANBUL , ( Gem +Int ABI_wad ) , Gem , Junk_1 ) ) +Int -6870 ) )
            #else   #gas ( ( ( VGas -Int Csstore( ISTANBUL , ( Gem +Int ABI_wad ) , Gem , Junk_1 ) ) +Int -6884 ) )
          #fi
        #fi </gas>
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
          <code> Vat_bin_runtime </code>
          <storage> ACCT_ID_STORAGE => ACCT_ID_STORAGE [ #Vat.gem[ABI_ilk][ABI_usr] <- Gem +Int ABI_wad ] </storage>
          <origStorage> ACCT_ID_ORIG_STORAGE </origStorage>
          <nonce> Nonce_Vat => ?_ </nonce>
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

  andBool (#rangeBytes(32, ABI_ilk)
  andBool (#rangeAddress(ABI_usr)
  andBool (#rangeSInt(256, ABI_wad)
  andBool (#rangeUInt(256, May)
  andBool (#rangeUInt(256, Gem)
  andBool (#sizeByteArray(CD) <=Int 1250000000
  andBool (#rangeUInt(256, Junk_0)
  andBool (#rangeUInt(256, Junk_1)
  andBool (((May ==Int 1))
  andBool (((VCallValue ==Int 0))
  andBool ((#rangeUInt(256, Gem +Int ABI_wad)))))))))))))

  andBool #lookup(ACCT_ID_STORAGE, #Vat.wards[CALLER_ID]) ==Int May
  andBool #lookup(ACCT_ID_STORAGE, #Vat.gem[ABI_ilk][ABI_usr]) ==Int Gem
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vat.wards[CALLER_ID]) ==Int Junk_0
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vat.gem[ABI_ilk][ABI_usr]) ==Int Junk_1
  andBool #Vat.wards[CALLER_ID] =/=Int #Vat.gem[ABI_ilk][ABI_usr] 
[trusted, matching(infGas)]


// DSToken_transferFrom
claim [DSToken.transferFrom.pass]:
  <k> #execute ~> CONTINUATION => #halt ~> CONTINUATION </k>
  <exit-code> 1 </exit-code>
  <mode> NORMAL </mode>
  <schedule> ISTANBUL </schedule>
  <ethereum>
    <evm>
      <output> _ => #buf(32, 1) </output>
      <statusCode> _ => EVMC_SUCCESS </statusCode>
      <endPC> _ => ?_ </endPC>
      <callStack> VCallStack </callStack>
      <interimStates> _ </interimStates>
      <touchedAccounts> _ => ?_ </touchedAccounts>
      <callState>
        <program> DSToken_bin_runtime </program>
        <jumpDests> #computeValidJumpDests(DSToken_bin_runtime) </jumpDests>
        <id> ACCT_ID </id>
        <caller> CALLER_ID </caller>
        <callData> #abiCallData("transferFrom", #address(ABI_src), #address(ABI_dst), #uint256(ABI_wad)) ++ CD => ?_ </callData>
        <callValue> VCallValue </callValue>
        <wordStack> .WordStack => ?_ </wordStack>
        <localMem> .Memory => ?_ </localMem>
        <pc> 0 => ?_ </pc>
        <gas> #gas(VGas) => #if CALLER_ID ==Int ABI_src
          #then   #gas ( ( ( ( VGas -Int Csstore( ISTANBUL , ( Gem_s -Int ABI_wad ) , Gem_s , Junk_1 ) ) -Int Csstore( ISTANBUL , ( Gem_d +Int ABI_wad ) , Gem_d , Junk_2 ) ) +Int -6375 ) )
          #else   #if Allowance ==Int maxUInt256
            #then   #gas ( ( ( ( VGas -Int Csstore( ISTANBUL , ( Gem_s -Int ABI_wad ) , Gem_s , Junk_1 ) ) -Int Csstore( ISTANBUL , ( Gem_d +Int ABI_wad ) , Gem_d , Junk_2 ) ) +Int -7368 ) )
            #else   #gas ( ( ( ( ( VGas -Int Csstore( ISTANBUL , ( Allowance -Int ABI_wad ) , Allowance , Junk_0 ) ) -Int Csstore( ISTANBUL , ( Gem_s -Int ABI_wad ) , Gem_s , Junk_1 ) ) -Int Csstore( ISTANBUL , ( Gem_d +Int ABI_wad ) , Gem_d , Junk_2 ) ) +Int -9625 ) )
          #fi
        #fi </gas>
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
          <code> DSToken_bin_runtime </code>
          <storage> ACCT_ID_STORAGE => ACCT_ID_STORAGE [ #DSToken.allowance[ABI_src][CALLER_ID] <- #if (ABI_src ==Int CALLER_ID orBool Allowance ==Int maxUInt256) #then Allowance #else Allowance -Int ABI_wad #fi ] [ #DSToken.balances[ABI_src] <- Gem_s -Int ABI_wad ] [ #DSToken.balances[ABI_dst] <- Gem_d +Int ABI_wad ] </storage>
          <origStorage> ACCT_ID_ORIG_STORAGE </origStorage>
          <nonce> Nonce_DSToken => ?_ </nonce>
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

  andBool (#rangeAddress(ABI_src)
  andBool (#rangeAddress(ABI_dst)
  andBool (#rangeUInt(256, ABI_wad)
  andBool (#rangeUInt(256, Gem_s)
  andBool (#rangeUInt(256, Gem_d)
  andBool (#rangeUInt(256, Allowance)
  andBool (#rangeAddress(Owner)
  andBool (#rangeBool(Stopped)
  andBool ((#sizeByteArray(CD) <=Int 1250000000)
  andBool ((#notPrecompileAddress(Owner))
  andBool ((ABI_src =/=Int ABI_dst)
  andBool (#rangeUInt(256, Junk_0)
  andBool (#rangeUInt(256, Junk_1)
  andBool (#rangeUInt(256, Junk_2)
  andBool (#rangeUInt(256, Junk_3)
  andBool (((#rangeUInt(256, Gem_s -Int ABI_wad)))
  andBool (((#rangeUInt(256, Gem_d +Int ABI_wad)))
  andBool (((Allowance ==Int maxUInt256 orBool ABI_src ==Int CALLER_ID) orBool (ABI_wad <=Int Allowance))
  andBool ((VCallValue ==Int 0)
  andBool ((Stopped ==Int 0)))))))))))))))))))))

  andBool #lookup(ACCT_ID_STORAGE, #DSToken.allowance[ABI_src][CALLER_ID]) ==Int Allowance
  andBool #lookup(ACCT_ID_STORAGE, #DSToken.balances[ABI_src]) ==Int Gem_s
  andBool #lookup(ACCT_ID_STORAGE, #DSToken.balances[ABI_dst]) ==Int Gem_d
  andBool #lookup(ACCT_ID_STORAGE, #DSToken.owner_stopped) ==Int #WordPackAddrUInt8(Owner, Stopped)
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #DSToken.allowance[ABI_src][CALLER_ID]) ==Int Junk_0
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #DSToken.balances[ABI_src]) ==Int Junk_1
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #DSToken.balances[ABI_dst]) ==Int Junk_2
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #DSToken.owner_stopped) ==Int Junk_3
  andBool #DSToken.allowance[ABI_src][CALLER_ID] =/=Int #DSToken.balances[ABI_src]
  andBool #DSToken.allowance[ABI_src][CALLER_ID] =/=Int #DSToken.balances[ABI_dst]
  andBool #DSToken.allowance[ABI_src][CALLER_ID] =/=Int #DSToken.owner_stopped
  andBool #DSToken.balances[ABI_src] =/=Int #DSToken.balances[ABI_dst]
  andBool #DSToken.balances[ABI_src] =/=Int #DSToken.owner_stopped
  andBool #DSToken.balances[ABI_dst] =/=Int #DSToken.owner_stopped 
[trusted, matching(infGas)]


endmodule
