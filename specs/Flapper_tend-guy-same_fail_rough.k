requires "verification.k"

module E196F842203DB0174FC3B67544145398726FE1B4298780E1A35121F1E5F5F0B0
  imports VERIFICATION

// Flapper_tend-guy-same
rule [Flapper.tend-guy-same.fail.rough]:
  <k> #execute ~> CONTINUATION => #halt ~> CONTINUATION </k>
  <exit-code> 1 </exit-code>
  <mode> NORMAL </mode>
  <schedule> ISTANBUL </schedule>
  <ethereum>
    <evm>
      <output> _ => ?_ </output>
      <statusCode> _ => ?FAILURE:EndStatusCode </statusCode>
      <endPC> _ => ?_ </endPC>
      <callStack> VCallStack </callStack>
      <interimStates> _ </interimStates>
      <touchedAccounts> _ => ?_ </touchedAccounts>
      <callState>
        <program> Flapper_bin_runtime </program>
        <jumpDests> #computeValidJumpDests(Flapper_bin_runtime) </jumpDests>
        <id> ACCT_ID </id>
        <caller> CALLER_ID </caller>
        <callData> #abiCallData("tend", #uint256(ABI_id), #uint256(ABI_lot), #uint256(ABI_bid)) ++ CD => ?_ </callData>
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
          <code> Flapper_bin_runtime </code>
          <storage> ACCT_ID_STORAGE => ?_ACCT_ID_STORAGE </storage>
          <origStorage> ACCT_ID_ORIG_STORAGE </origStorage>
          <nonce> Nonce_Flapper => ?_ </nonce>
        </account>
        <account>
          <acctID> DSToken </acctID>
          <balance> DSToken_balance </balance>
          <code> DSToken_bin_runtime </code>
          <storage> DSToken_STORAGE => ?_DSToken_STORAGE </storage>
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

  andBool (#rangeUInt(256, ABI_id)
  andBool (#rangeUInt(256, ABI_lot)
  andBool (#rangeUInt(256, ABI_bid)
  andBool (#rangeAddress(DSToken)
  andBool (#rangeUInt(256, Live)
  andBool (#rangeUInt(48, Ttl)
  andBool (#rangeUInt(48, Tau)
  andBool (#rangeUInt(256, Beg)
  andBool (#rangeUInt(256, Bid)
  andBool (#rangeUInt(256, Lot)
  andBool (#rangeAddress(Guy)
  andBool (#rangeUInt(48, Tic)
  andBool (#rangeUInt(48, End)
  andBool (#rangeUInt(256, Allowed)
  andBool (#rangeUInt(256, Gem_a)
  andBool (#rangeUInt(256, Gem_u)
  andBool (#rangeAddress(Owner)
  andBool (#rangeBool(Stopped)
  andBool (#rangeUInt(256, DSToken_balance)
  andBool ((#sizeByteArray(CD) <=Int 1250000000)
  andBool ((#notPrecompileAddress(DSToken))
  andBool ((#notPrecompileAddress(Guy))
  andBool ((#notPrecompileAddress(Owner))
  andBool ((ACCT_ID =/=Int DSToken)
  andBool ((#rangeUInt(48, TIME))
  andBool ((CALLER_ID =/=Int ACCT_ID)
  andBool ((CALLER_ID ==Int Guy)
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
  andBool (#rangeUInt(256, Junk_10))))))))))))))))))))))))))))))))))))))))

  andBool #lookup(ACCT_ID_STORAGE, #Flapper.gem) ==Int DSToken
  andBool #lookup(ACCT_ID_STORAGE, #Flapper.live) ==Int Live
  andBool #lookup(ACCT_ID_STORAGE, #Flapper.ttl_tau) ==Int #WordPackUInt48UInt48(Ttl, Tau)
  andBool #lookup(ACCT_ID_STORAGE, #Flapper.beg) ==Int Beg
  andBool #lookup(ACCT_ID_STORAGE, #Flapper.bids[ABI_id].bid) ==Int Bid
  andBool #lookup(ACCT_ID_STORAGE, #Flapper.bids[ABI_id].lot) ==Int Lot
  andBool #lookup(ACCT_ID_STORAGE, #Flapper.bids[ABI_id].guy_tic_end) ==Int #WordPackAddrUInt48UInt48(Guy, Tic, End)
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Flapper.gem) ==Int Junk_0
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Flapper.live) ==Int Junk_1
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Flapper.ttl_tau) ==Int Junk_2
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Flapper.beg) ==Int Junk_3
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Flapper.bids[ABI_id].bid) ==Int Junk_4
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Flapper.bids[ABI_id].lot) ==Int Junk_5
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Flapper.bids[ABI_id].guy_tic_end) ==Int Junk_6
  andBool #Flapper.gem =/=Int #Flapper.live
  andBool #Flapper.gem =/=Int #Flapper.ttl_tau
  andBool #Flapper.gem =/=Int #Flapper.beg
  andBool #Flapper.gem =/=Int #Flapper.bids[ABI_id].bid
  andBool #Flapper.gem =/=Int #Flapper.bids[ABI_id].lot
  andBool #Flapper.gem =/=Int #Flapper.bids[ABI_id].guy_tic_end
  andBool #Flapper.live =/=Int #Flapper.ttl_tau
  andBool #Flapper.live =/=Int #Flapper.beg
  andBool #Flapper.live =/=Int #Flapper.bids[ABI_id].bid
  andBool #Flapper.live =/=Int #Flapper.bids[ABI_id].lot
  andBool #Flapper.live =/=Int #Flapper.bids[ABI_id].guy_tic_end
  andBool #Flapper.ttl_tau =/=Int #Flapper.beg
  andBool #Flapper.ttl_tau =/=Int #Flapper.bids[ABI_id].bid
  andBool #Flapper.ttl_tau =/=Int #Flapper.bids[ABI_id].lot
  andBool #Flapper.ttl_tau =/=Int #Flapper.bids[ABI_id].guy_tic_end
  andBool #Flapper.beg =/=Int #Flapper.bids[ABI_id].bid
  andBool #Flapper.beg =/=Int #Flapper.bids[ABI_id].lot
  andBool #Flapper.beg =/=Int #Flapper.bids[ABI_id].guy_tic_end
  andBool #Flapper.bids[ABI_id].bid =/=Int #Flapper.bids[ABI_id].lot
  andBool #Flapper.bids[ABI_id].bid =/=Int #Flapper.bids[ABI_id].guy_tic_end
  andBool #Flapper.bids[ABI_id].lot =/=Int #Flapper.bids[ABI_id].guy_tic_end
  andBool #lookup(DSToken_STORAGE, #DSToken.allowance[CALLER_ID][ACCT_ID]) ==Int Allowed
  andBool #lookup(DSToken_STORAGE, #DSToken.balances[CALLER_ID]) ==Int Gem_u
  andBool #lookup(DSToken_STORAGE, #DSToken.balances[ACCT_ID]) ==Int Gem_a
  andBool #lookup(DSToken_STORAGE, #DSToken.owner_stopped) ==Int #WordPackAddrUInt8(Owner, Stopped)
  andBool #lookup(DSToken_ORIG_STORAGE, #DSToken.allowance[CALLER_ID][ACCT_ID]) ==Int Junk_7
  andBool #lookup(DSToken_ORIG_STORAGE, #DSToken.balances[CALLER_ID]) ==Int Junk_8
  andBool #lookup(DSToken_ORIG_STORAGE, #DSToken.balances[ACCT_ID]) ==Int Junk_9
  andBool #lookup(DSToken_ORIG_STORAGE, #DSToken.owner_stopped) ==Int Junk_10
  andBool #DSToken.allowance[CALLER_ID][ACCT_ID] =/=Int #DSToken.balances[CALLER_ID]
  andBool #DSToken.allowance[CALLER_ID][ACCT_ID] =/=Int #DSToken.balances[ACCT_ID]
  andBool #DSToken.allowance[CALLER_ID][ACCT_ID] =/=Int #DSToken.owner_stopped
  andBool #DSToken.balances[CALLER_ID] =/=Int #DSToken.balances[ACCT_ID]
  andBool #DSToken.balances[CALLER_ID] =/=Int #DSToken.owner_stopped
  andBool #DSToken.balances[ACCT_ID] =/=Int #DSToken.owner_stopped
  andBool notBool (
    (((VCallValue:Int ==Int 0))
    andBool (((VCallDepth:Int <Int 1024))
    andBool (((Guy:Int =/=Int 0))
    andBool (((Stopped:Int ==Int 0))
    andBool ((((Allowed:Int ==Int maxUInt256) orBool ((ABI_bid:Int -Int Bid:Int) <=Int Allowed:Int)))
    andBool (((Live:Int ==Int 1))
    andBool (((Tic:Int >Int TIME:Int orBool Tic:Int ==Int 0))
    andBool (((End:Int >Int TIME:Int))
    andBool (((TIME:Int +Int Ttl:Int <=Int maxUInt48))
    andBool (((ABI_lot:Int ==Int Lot:Int))
    andBool (((ABI_bid:Int >Int Bid:Int))
    andBool (((ABI_bid:Int *Int #Wad <=Int maxUInt256))
    andBool (((ABI_bid:Int *Int #Wad >=Int Beg:Int *Int Bid:Int))
    andBool ((#rangeUInt(256, Gem_u:Int -Int (ABI_bid:Int -Int Bid:Int)))
    andBool ((#rangeUInt(256, Gem_a:Int +Int (ABI_bid:Int -Int Bid:Int))))))))))))))))))
  ) 
ensures
?FAILURE =/=K EVMC_SUCCESS

// Flapper_addu48u48
rule [Flapper.addu48u48.pass]:
  <k> #execute ~> CONTINUATION => #execute ~> CONTINUATION </k>
  <exit-code> 1 </exit-code>
  <mode> NORMAL </mode>
  <schedule> ISTANBUL </schedule>
  <ethereum>
    <evm>
      <output> VOutput => VOutput </output>
      <statusCode> _ => ?_ </statusCode>
      <endPC> _ => ?_ </endPC>
      <callStack> VCallStack </callStack>
      <interimStates> _ </interimStates>
      <touchedAccounts> _ => ?_ </touchedAccounts>
      <callState>
        <program> Flapper_bin_runtime </program>
        <jumpDests> #computeValidJumpDests(Flapper_bin_runtime) </jumpDests>
        <id> ACCT_ID </id>
        <caller> CALLER_ID </caller>
        <callData> _ => ?_ </callData>
        <callValue> VCallValue </callValue>
        <wordStack> ABI_y : ABI_x : JMPTO : WS  =>  JMPTO : ABI_x +Int ABI_y : WS </wordStack>
        <localMem> _ </localMem>
        <pc> 8945 => 8986 </pc>
        <gas> #gas(VGas) => #gas ( ( VGas +Int 66 ) ) </gas>
        <memoryUsed> VMemoryUsed </memoryUsed>
        <callGas> _ => ?_ </callGas>
        <static> _ </static>
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
          <code> Flapper_bin_runtime </code>
          <storage> ACCT_ID_STORAGE => ACCT_ID_STORAGE  </storage>
          <origStorage> ACCT_ID_ORIG_STORAGE </origStorage>
          <nonce> Nonce_Flapper => ?_ </nonce>
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

  andBool (#rangeUInt(48, ABI_x)
  andBool (#rangeUInt(48, ABI_y)
  andBool ((#sizeWordStack(WS) <=Int 100)
  andBool (#rangeUInt(256, VMemoryUsed)
  andBool ((#rangeUInt(48, ABI_x +Int ABI_y)))))))

 
[trusted]


// Flapper_muluu
rule [Flapper.muluu.pass]:
  <k> #execute ~> CONTINUATION => #execute ~> CONTINUATION </k>
  <exit-code> 1 </exit-code>
  <mode> NORMAL </mode>
  <schedule> ISTANBUL </schedule>
  <ethereum>
    <evm>
      <output> VOutput => VOutput </output>
      <statusCode> _ => ?_ </statusCode>
      <endPC> _ => ?_ </endPC>
      <callStack> VCallStack </callStack>
      <interimStates> _ </interimStates>
      <touchedAccounts> _ => ?_ </touchedAccounts>
      <callState>
        <program> Flapper_bin_runtime </program>
        <jumpDests> #computeValidJumpDests(Flapper_bin_runtime) </jumpDests>
        <id> ACCT_ID </id>
        <caller> CALLER_ID </caller>
        <callData> _ => ?_ </callData>
        <callValue> VCallValue </callValue>
        <wordStack> ABI_y : ABI_x : JMPTO : WS  =>  JMPTO : ABI_x *Int ABI_y : WS </wordStack>
        <localMem> _ </localMem>
        <pc> 8901 => 8944 </pc>
        <gas> #gas(VGas) => #gas ( ( VGas +Int #if ABI_y ==Int minUInt8
          #then   54
          #else   106
        #fi ) ) </gas>
        <memoryUsed> VMemoryUsed </memoryUsed>
        <callGas> _ => ?_ </callGas>
        <static> _ </static>
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
          <code> Flapper_bin_runtime </code>
          <storage> ACCT_ID_STORAGE => ACCT_ID_STORAGE  </storage>
          <origStorage> ACCT_ID_ORIG_STORAGE </origStorage>
          <nonce> Nonce_Flapper => ?_ </nonce>
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

  andBool (#rangeUInt(256, ABI_x)
  andBool (#rangeUInt(256, ABI_y)
  andBool ((#sizeWordStack(WS) <=Int 1000)
  andBool (#rangeUInt(256, VMemoryUsed)
  andBool ((#rangeUInt(256, ABI_x *Int ABI_y)))))))

 
[trusted]


// DSToken_move
rule [DSToken.move.pass]:
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
        <program> DSToken_bin_runtime </program>
        <jumpDests> #computeValidJumpDests(DSToken_bin_runtime) </jumpDests>
        <id> ACCT_ID </id>
        <caller> CALLER_ID </caller>
        <callData> #abiCallData("move", #address(ABI_src), #address(ABI_dst), #uint256(ABI_wad)) ++ CD => ?_ </callData>
        <callValue> VCallValue </callValue>
        <wordStack> .WordStack => ?_ </wordStack>
        <localMem> .Memory => ?_ </localMem>
        <pc> 0 => ?_ </pc>
        <gas> #gas(VGas) => #gas ( ( VGas +Int ( Csstore( ISTANBUL , ( Gem_s -Int ABI_wad ) , Gem_s , Junk_1 ) +Int ( Csstore( ISTANBUL , ( Gem_d +Int ABI_wad ) , Gem_d , Junk_2 ) +Int #if #lookup( ACCT_ID_STORAGE , hash2 ( CALLER_ID , hash2 ( ABI_src , 2 ) ) ) ==Int maxUInt256
          #then   7281
          #else   ( Csstore( ISTANBUL , ( Allowance -Int ABI_wad ) , Allowance , Junk_0 ) +Int 9538 )
        #fi ) ) ) ) </gas>
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
  andBool ((ABI_src =/=Int CALLER_ID)
  andBool (#rangeUInt(256, Junk_0)
  andBool (#rangeUInt(256, Junk_1)
  andBool (#rangeUInt(256, Junk_2)
  andBool (#rangeUInt(256, Junk_3)
  andBool (((#rangeUInt(256, Gem_s -Int ABI_wad)))
  andBool (((#rangeUInt(256, Gem_d +Int ABI_wad)))
  andBool (((Allowance ==Int maxUInt256) orBool (ABI_wad <=Int Allowance))
  andBool ((VCallValue ==Int 0)
  andBool ((Stopped ==Int 0))))))))))))))))))))))

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
[trusted]


endmodule
