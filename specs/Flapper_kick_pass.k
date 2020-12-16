requires "verification.k"

module 5637CBC8D2CECC22A85844DAFA6021079F3867457226D8E3A98552D382C6A31F
  imports VERIFICATION

// Flapper_kick
claim [Flapper.kick.pass]:
  <k> #execute ~> CONTINUATION => #halt ~> CONTINUATION </k>
  <exit-code> 1 </exit-code>
  <mode> NORMAL </mode>
  <schedule> ISTANBUL </schedule>
  <ethereum>
    <evm>
      <output> _ => #buf(32, 1 +Int Kicks) </output>
      <statusCode> _ => EVMC_SUCCESS </statusCode>
      <endPC> _ => ?_ </endPC>
      <callStack> VCallStack </callStack>
      <interimStates> _ </interimStates>
      <touchedAccounts> _ => ?_ </touchedAccounts>
      <callState>
        <program> Flapper_bin_runtime </program>
        <jumpDests> #computeValidJumpDests(Flapper_bin_runtime) </jumpDests>
        <id> ACCT_ID </id>
        <caller> CALLER_ID </caller>
        <callData> #abiCallData("kick", #uint256(ABI_lot), #uint256(ABI_bid)) ++ CD => ?_ </callData>
        <callValue> VCallValue </callValue>
        <wordStack> .WordStack => ?_ </wordStack>
        <localMem> .Memory => ?_ </localMem>
        <pc> 0 => ?_ </pc>
        <gas> #gas(VGas) => #gas ( ( ( ( ( ( ( ( ( VGas -Int Csstore( ISTANBUL , ( Kicks +Int 1 ) , Kicks , Junk_3 ) ) -Int Csstore( ISTANBUL , ABI_bid , Bid , Junk_4 ) ) -Int Csstore( ISTANBUL , ABI_lot , Lot , Junk_5 ) ) -Int Csstore( ISTANBUL , CALLER_ID |Int 115792089237316195423570985007226406215939081747436879206741300988257197096960 &Int #lookup( ACCT_ID_STORAGE , ( hash2 ( ( Kicks +Int 1 ) , 1 ) +Int 2 ) ) , #lookup( ACCT_ID_STORAGE , ( hash2 ( ( Kicks +Int 1 ) , 1 ) +Int 2 ) ) , Junk_6 ) ) -Int Csstore( ISTANBUL , #WordPackAddrUInt48UInt48 ( CALLER_ID , Old_tic , ( TIME +Int Tau ) ) , CALLER_ID |Int 115792089237316195423570985007226406215939081747436879206741300988257197096960 &Int #lookup( ACCT_ID_STORAGE , ( hash2 ( ( Kicks +Int 1 ) , 1 ) +Int 2 ) ) , Junk_6 ) ) -Int Csstore( ISTANBUL , ( Dai_c -Int ABI_lot ) , Dai_c , Junk_9 ) ) -Int Csstore( ISTANBUL , ( Dai_v +Int ABI_lot ) , Dai_v , Junk_10 ) ) +Int -18905 ) ) </gas>
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
          <storage> ACCT_ID_STORAGE => ACCT_ID_STORAGE [ #Flapper.kicks <- 1 +Int Kicks ] [ #Flapper.bids[1 +Int Kicks].bid <- ABI_bid ] [ #Flapper.bids[1 +Int Kicks].lot <- ABI_lot ] [ #Flapper.bids[1 +Int Kicks].guy_tic_end <- #WordPackAddrUInt48UInt48(CALLER_ID, Old_tic, TIME +Int Tau) ] </storage>
          <origStorage> ACCT_ID_ORIG_STORAGE </origStorage>
          <nonce> Nonce_Flapper => ?_ </nonce>
        </account>
        <account>
          <acctID> Vat </acctID>
          <balance> Vat_balance </balance>
          <code> Vat_bin_runtime </code>
          <storage> Vat_STORAGE => Vat_STORAGE [ #Vat.dai[CALLER_ID] <- Dai_c -Int ABI_lot ] [ #Vat.dai[ACCT_ID] <- Dai_v +Int ABI_lot ] </storage>
          <origStorage> Vat_ORIG_STORAGE </origStorage>
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

  andBool (#rangeUInt(256, ABI_lot)
  andBool (#rangeUInt(256, ABI_bid)
  andBool (#rangeUInt(256, May)
  andBool (#rangeAddress(Vat)
  andBool (#rangeUInt(256, Kicks)
  andBool (#rangeUInt(48, Ttl)
  andBool (#rangeUInt(48, Tau)
  andBool (#rangeUInt(256, Bid)
  andBool (#rangeUInt(256, Lot)
  andBool (#rangeAddress(Old_guy)
  andBool (#rangeUInt(48, Old_tic)
  andBool (#rangeUInt(48, Old_end)
  andBool (#rangeUInt(256, CanMove)
  andBool (#rangeUInt(256, Dai_v)
  andBool (#rangeUInt(256, Dai_c)
  andBool (#rangeUInt(256, Live)
  andBool (#rangeUInt(256, Vat_balance)
  andBool ((#sizeByteArray(CD) <=Int 1250000000)
  andBool ((#notPrecompileAddress(Vat))
  andBool ((#notPrecompileAddress(Old_guy))
  andBool ((ACCT_ID =/=Int Vat)
  andBool ((CALLER_ID =/=Int ACCT_ID)
  andBool ((#rangeUInt(48, TIME))
  andBool ((Vat =/=Int 0)
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
  andBool (#rangeUInt(256, Junk_10)
  andBool ((((May ==Int 1)))
  andBool ((((Live ==Int 1)))
  andBool ((((CanMove ==Int 1)))
  andBool ((((VCallValue ==Int 0)))
  andBool ((((VCallDepth <Int 1024)))
  andBool (((#rangeUInt(256, Kicks +Int 1)))
  andBool (((#rangeUInt(256, Dai_v +Int ABI_lot)))
  andBool (((#rangeUInt(256, Dai_c -Int ABI_lot)))
  andBool ((#rangeUInt(48, TIME +Int Tau))))))))))))))))))))))))))))))))))))))))))))))

  andBool #lookup(ACCT_ID_STORAGE, #Flapper.wards[CALLER_ID]) ==Int May
  andBool #lookup(ACCT_ID_STORAGE, #Flapper.vat) ==Int Vat
  andBool #lookup(ACCT_ID_STORAGE, #Flapper.ttl_tau) ==Int #WordPackUInt48UInt48(Ttl, Tau)
  andBool #lookup(ACCT_ID_STORAGE, #Flapper.kicks) ==Int Kicks
  andBool #lookup(ACCT_ID_STORAGE, #Flapper.bids[1 +Int Kicks].bid) ==Int Bid
  andBool #lookup(ACCT_ID_STORAGE, #Flapper.bids[1 +Int Kicks].lot) ==Int Lot
  andBool #lookup(ACCT_ID_STORAGE, #Flapper.bids[1 +Int Kicks].guy_tic_end) ==Int #WordPackAddrUInt48UInt48(Old_guy, Old_tic, Old_end)
  andBool #lookup(ACCT_ID_STORAGE, #Flapper.live) ==Int Live
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Flapper.wards[CALLER_ID]) ==Int Junk_0
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Flapper.vat) ==Int Junk_1
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Flapper.ttl_tau) ==Int Junk_2
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Flapper.kicks) ==Int Junk_3
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Flapper.bids[1 +Int Kicks].bid) ==Int Junk_4
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Flapper.bids[1 +Int Kicks].lot) ==Int Junk_5
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Flapper.bids[1 +Int Kicks].guy_tic_end) ==Int Junk_6
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Flapper.live) ==Int Junk_7
  andBool #Flapper.wards[CALLER_ID] =/=Int #Flapper.vat
  andBool #Flapper.wards[CALLER_ID] =/=Int #Flapper.ttl_tau
  andBool #Flapper.wards[CALLER_ID] =/=Int #Flapper.kicks
  andBool #Flapper.wards[CALLER_ID] =/=Int #Flapper.bids[1 +Int Kicks].bid
  andBool #Flapper.wards[CALLER_ID] =/=Int #Flapper.bids[1 +Int Kicks].lot
  andBool #Flapper.wards[CALLER_ID] =/=Int #Flapper.bids[1 +Int Kicks].guy_tic_end
  andBool #Flapper.wards[CALLER_ID] =/=Int #Flapper.live
  andBool #Flapper.vat =/=Int #Flapper.ttl_tau
  andBool #Flapper.vat =/=Int #Flapper.kicks
  andBool #Flapper.vat =/=Int #Flapper.bids[1 +Int Kicks].bid
  andBool #Flapper.vat =/=Int #Flapper.bids[1 +Int Kicks].lot
  andBool #Flapper.vat =/=Int #Flapper.bids[1 +Int Kicks].guy_tic_end
  andBool #Flapper.vat =/=Int #Flapper.live
  andBool #Flapper.ttl_tau =/=Int #Flapper.kicks
  andBool #Flapper.ttl_tau =/=Int #Flapper.bids[1 +Int Kicks].bid
  andBool #Flapper.ttl_tau =/=Int #Flapper.bids[1 +Int Kicks].lot
  andBool #Flapper.ttl_tau =/=Int #Flapper.bids[1 +Int Kicks].guy_tic_end
  andBool #Flapper.ttl_tau =/=Int #Flapper.live
  andBool #Flapper.kicks =/=Int #Flapper.bids[1 +Int Kicks].bid
  andBool #Flapper.kicks =/=Int #Flapper.bids[1 +Int Kicks].lot
  andBool #Flapper.kicks =/=Int #Flapper.bids[1 +Int Kicks].guy_tic_end
  andBool #Flapper.kicks =/=Int #Flapper.live
  andBool #Flapper.bids[1 +Int Kicks].bid =/=Int #Flapper.bids[1 +Int Kicks].lot
  andBool #Flapper.bids[1 +Int Kicks].bid =/=Int #Flapper.bids[1 +Int Kicks].guy_tic_end
  andBool #Flapper.bids[1 +Int Kicks].bid =/=Int #Flapper.live
  andBool #Flapper.bids[1 +Int Kicks].lot =/=Int #Flapper.bids[1 +Int Kicks].guy_tic_end
  andBool #Flapper.bids[1 +Int Kicks].lot =/=Int #Flapper.live
  andBool #Flapper.bids[1 +Int Kicks].guy_tic_end =/=Int #Flapper.live
  andBool #lookup(Vat_STORAGE, #Vat.can[CALLER_ID][ACCT_ID]) ==Int CanMove
  andBool #lookup(Vat_STORAGE, #Vat.dai[CALLER_ID]) ==Int Dai_c
  andBool #lookup(Vat_STORAGE, #Vat.dai[ACCT_ID]) ==Int Dai_v
  andBool #lookup(Vat_ORIG_STORAGE, #Vat.can[CALLER_ID][ACCT_ID]) ==Int Junk_8
  andBool #lookup(Vat_ORIG_STORAGE, #Vat.dai[CALLER_ID]) ==Int Junk_9
  andBool #lookup(Vat_ORIG_STORAGE, #Vat.dai[ACCT_ID]) ==Int Junk_10
  andBool #Vat.can[CALLER_ID][ACCT_ID] =/=Int #Vat.dai[CALLER_ID]
  andBool #Vat.can[CALLER_ID][ACCT_ID] =/=Int #Vat.dai[ACCT_ID]
  andBool #Vat.dai[CALLER_ID] =/=Int #Vat.dai[ACCT_ID] 

// Vat_move-diff
claim [Vat.move-diff.pass]:
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
        <callData> #abiCallData("move", #address(ABI_src), #address(ABI_dst), #uint256(ABI_rad)) ++ CD => ?_ </callData>
        <callValue> VCallValue </callValue>
        <wordStack> .WordStack => ?_ </wordStack>
        <localMem> .Memory => ?_ </localMem>
        <pc> 0 => ?_ </pc>
        <gas> #gas(VGas) => #gas ( ( ( ( VGas -Int Csstore( ISTANBUL , ( Dai_src -Int ABI_rad ) , Dai_src , Junk_1 ) ) -Int Csstore( ISTANBUL , ( Dai_dst +Int ABI_rad ) , Dai_dst , Junk_2 ) ) +Int -7943 ) ) </gas>
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
          <storage> ACCT_ID_STORAGE => ACCT_ID_STORAGE [ #Vat.dai[ABI_src] <- Dai_src -Int ABI_rad ] [ #Vat.dai[ABI_dst] <- Dai_dst +Int ABI_rad ] </storage>
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

  andBool (#rangeAddress(ABI_src)
  andBool (#rangeAddress(ABI_dst)
  andBool (#rangeUInt(256, ABI_rad)
  andBool (#rangeUInt(256, Dai_dst)
  andBool (#rangeUInt(256, Dai_src)
  andBool (#rangeUInt(256, May)
  andBool ((#sizeByteArray(CD) <=Int 1250000000)
  andBool ((ABI_src =/=Int ABI_dst)
  andBool (#rangeUInt(256, Junk_0)
  andBool (#rangeUInt(256, Junk_1)
  andBool (#rangeUInt(256, Junk_2)
  andBool ((((May ==Int 1 orBool ABI_src ==Int CALLER_ID)))
  andBool (((VCallValue ==Int 0))
  andBool ((#rangeUInt(256, Dai_src -Int ABI_rad))
  andBool ((#rangeUInt(256, Dai_dst +Int ABI_rad)))))))))))))))))

  andBool #lookup(ACCT_ID_STORAGE, #Vat.can[ABI_src][CALLER_ID]) ==Int May
  andBool #lookup(ACCT_ID_STORAGE, #Vat.dai[ABI_src]) ==Int Dai_src
  andBool #lookup(ACCT_ID_STORAGE, #Vat.dai[ABI_dst]) ==Int Dai_dst
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vat.can[ABI_src][CALLER_ID]) ==Int Junk_0
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vat.dai[ABI_src]) ==Int Junk_1
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Vat.dai[ABI_dst]) ==Int Junk_2
  andBool #Vat.can[ABI_src][CALLER_ID] =/=Int #Vat.dai[ABI_src]
  andBool #Vat.can[ABI_src][CALLER_ID] =/=Int #Vat.dai[ABI_dst]
  andBool #Vat.dai[ABI_src] =/=Int #Vat.dai[ABI_dst] 
[trusted, matching(infGas)]


// Flapper_addu48u48
claim [Flapper.addu48u48.pass]:
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
        <gas> #gas(VGas) => #gas ( ( VGas +Int -66 ) ) </gas>
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

 
[trusted, matching(infGas)]


endmodule
