requires "verification.k"

module 2402613162A8475A345ED10324C5D7B4C288599A53EFB73383BD4137FA3E9052
  imports VERIFICATION

// Flopper_deal
claim [Flopper.deal.pass]:
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
        <program> Flopper_bin_runtime </program>
        <jumpDests> #computeValidJumpDests(Flopper_bin_runtime) </jumpDests>
        <id> ACCT_ID </id>
        <caller> CALLER_ID </caller>
        <callData> #abiCallData("deal", #uint256(ABI_id)) ++ CD => ?_ </callData>
        <callValue> VCallValue </callValue>
        <wordStack> .WordStack => ?_ </wordStack>
        <localMem> .Memory => ?_ </localMem>
        <pc> 0 => ?_ </pc>
        <gas> #gas(VGas) => #if Tic <Int TIME
          #then   #gas ( ( ( ( ( ( ( ( ( VGas -Int Csstore( ISTANBUL , ( Gem_g +Int Lot ) , Gem_g , Junk_5 ) ) -Int Csstore( ISTANBUL , ( Supply +Int Lot ) , Supply , Junk_6 ) ) -Int Csstore( ISTANBUL , 0 , Bid , Junk_2 ) ) -Int Csstore( ISTANBUL , 0 , Lot , Junk_3 ) ) -Int Csstore( ISTANBUL , 115792089237316195423570985007226406215939081747436879206741300988257197096960 &Int #lookup( ACCT_ID_STORAGE , ( hash2 ( ABI_id , 1 ) +Int 2 ) ) , #lookup( ACCT_ID_STORAGE , ( hash2 ( ABI_id , 1 ) +Int 2 ) ) , Junk_4 ) ) -Int Csstore( ISTANBUL , 115792089237315784047431654707177369110974345328014318355491175612947292487680 &Int #lookup( ACCT_ID_STORAGE , ( hash2 ( ABI_id , 1 ) +Int 2 ) ) , 115792089237316195423570985007226406215939081747436879206741300988257197096960 &Int #lookup( ACCT_ID_STORAGE , ( hash2 ( ABI_id , 1 ) +Int 2 ) ) , Junk_4 ) ) -Int Csstore( ISTANBUL , 0 , 115792089237315784047431654707177369110974345328014318355491175612947292487680 &Int #lookup( ACCT_ID_STORAGE , ( hash2 ( ABI_id , 1 ) +Int 2 ) ) , Junk_4 ) ) +Int -20081 ) )
          #else   #gas ( ( ( ( ( ( ( ( ( VGas -Int Csstore( ISTANBUL , ( Gem_g +Int Lot ) , Gem_g , Junk_5 ) ) -Int Csstore( ISTANBUL , ( Supply +Int Lot ) , Supply , Junk_6 ) ) -Int Csstore( ISTANBUL , 0 , Bid , Junk_2 ) ) -Int Csstore( ISTANBUL , 0 , Lot , Junk_3 ) ) -Int Csstore( ISTANBUL , 115792089237316195423570985007226406215939081747436879206741300988257197096960 &Int #lookup( ACCT_ID_STORAGE , ( hash2 ( ABI_id , 1 ) +Int 2 ) ) , #lookup( ACCT_ID_STORAGE , ( hash2 ( ABI_id , 1 ) +Int 2 ) ) , Junk_4 ) ) -Int Csstore( ISTANBUL , 115792089237315784047431654707177369110974345328014318355491175612947292487680 &Int #lookup( ACCT_ID_STORAGE , ( hash2 ( ABI_id , 1 ) +Int 2 ) ) , 115792089237316195423570985007226406215939081747436879206741300988257197096960 &Int #lookup( ACCT_ID_STORAGE , ( hash2 ( ABI_id , 1 ) +Int 2 ) ) , Junk_4 ) ) -Int Csstore( ISTANBUL , 0 , 115792089237315784047431654707177369110974345328014318355491175612947292487680 &Int #lookup( ACCT_ID_STORAGE , ( hash2 ( ABI_id , 1 ) +Int 2 ) ) , Junk_4 ) ) +Int -21067 ) )
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
          <code> Flopper_bin_runtime </code>
          <storage> ACCT_ID_STORAGE => ACCT_ID_STORAGE [ #Flopper.bids[ABI_id].bid <- 0 ] [ #Flopper.bids[ABI_id].lot <- 0 ] [ #Flopper.bids[ABI_id].guy_tic_end <- 0 ] </storage>
          <origStorage> ACCT_ID_ORIG_STORAGE </origStorage>
          <nonce> Nonce_Flopper => ?_ </nonce>
        </account>
        <account>
          <acctID> DSToken </acctID>
          <balance> DSToken_balance </balance>
          <code> DSToken_bin_runtime </code>
          <storage> DSToken_STORAGE => DSToken_STORAGE [ #DSToken.balances[Guy] <- Gem_g  +Int Lot ] [ #DSToken.supply <- Supply +Int Lot ] </storage>
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
  andBool (#rangeUInt(256, Live)
  andBool (#rangeUInt(256, Bid)
  andBool (#rangeUInt(256, Lot)
  andBool (#rangeAddress(Guy)
  andBool (#rangeUInt(48, Tic)
  andBool (#rangeUInt(48, End)
  andBool (#rangeAddress(DSToken)
  andBool (#rangeUInt(256, Gem_g)
  andBool (#rangeBool(Stopped)
  andBool (#rangeUInt(256, Supply)
  andBool (#rangeAddress(Owner)
  andBool (#rangeUInt(256, DSToken_balance)
  andBool ((#sizeByteArray(CD) <=Int 1250000000)
  andBool ((#notPrecompileAddress(Guy))
  andBool ((#notPrecompileAddress(DSToken))
  andBool ((#notPrecompileAddress(Owner))
  andBool ((ACCT_ID =/=Int DSToken)
  andBool ((Owner ==Int ACCT_ID)
  andBool ((DSToken =/=Int 0)
  andBool (#rangeUInt(256, Junk_0)
  andBool (#rangeUInt(256, Junk_1)
  andBool (#rangeUInt(256, Junk_2)
  andBool (#rangeUInt(256, Junk_3)
  andBool (#rangeUInt(256, Junk_4)
  andBool (#rangeUInt(256, Junk_5)
  andBool (#rangeUInt(256, Junk_6)
  andBool (#rangeUInt(256, Junk_7)
  andBool (((Live ==Int 1))
  andBool ((((Tic =/=Int 0) andBool ((Tic <Int TIME) orBool (End <Int TIME))))
  andBool (((Stopped ==Int 0))
  andBool (((VCallValue ==Int 0))
  andBool (((VCallDepth <Int 1024))
  andBool ((#rangeUInt(256, Gem_g  +Int Lot))
  andBool ((#rangeUInt(256, Supply +Int Lot)))))))))))))))))))))))))))))))))))))

  andBool #lookup(ACCT_ID_STORAGE, #Flopper.gem) ==Int DSToken
  andBool #lookup(ACCT_ID_STORAGE, #Flopper.live) ==Int Live
  andBool #lookup(ACCT_ID_STORAGE, #Flopper.bids[ABI_id].bid) ==Int Bid
  andBool #lookup(ACCT_ID_STORAGE, #Flopper.bids[ABI_id].lot) ==Int Lot
  andBool #lookup(ACCT_ID_STORAGE, #Flopper.bids[ABI_id].guy_tic_end) ==Int #WordPackAddrUInt48UInt48(Guy, Tic, End)
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Flopper.gem) ==Int Junk_0
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Flopper.live) ==Int Junk_1
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Flopper.bids[ABI_id].bid) ==Int Junk_2
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Flopper.bids[ABI_id].lot) ==Int Junk_3
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Flopper.bids[ABI_id].guy_tic_end) ==Int Junk_4
  andBool #Flopper.gem =/=Int #Flopper.live
  andBool #Flopper.gem =/=Int #Flopper.bids[ABI_id].bid
  andBool #Flopper.gem =/=Int #Flopper.bids[ABI_id].lot
  andBool #Flopper.gem =/=Int #Flopper.bids[ABI_id].guy_tic_end
  andBool #Flopper.live =/=Int #Flopper.bids[ABI_id].bid
  andBool #Flopper.live =/=Int #Flopper.bids[ABI_id].lot
  andBool #Flopper.live =/=Int #Flopper.bids[ABI_id].guy_tic_end
  andBool #Flopper.bids[ABI_id].bid =/=Int #Flopper.bids[ABI_id].lot
  andBool #Flopper.bids[ABI_id].bid =/=Int #Flopper.bids[ABI_id].guy_tic_end
  andBool #Flopper.bids[ABI_id].lot =/=Int #Flopper.bids[ABI_id].guy_tic_end
  andBool #lookup(DSToken_STORAGE, #DSToken.balances[Guy]) ==Int Gem_g
  andBool #lookup(DSToken_STORAGE, #DSToken.supply) ==Int Supply
  andBool #lookup(DSToken_STORAGE, #DSToken.owner_stopped) ==Int #WordPackAddrUInt8(Owner, Stopped)
  andBool #lookup(DSToken_ORIG_STORAGE, #DSToken.balances[Guy]) ==Int Junk_5
  andBool #lookup(DSToken_ORIG_STORAGE, #DSToken.supply) ==Int Junk_6
  andBool #lookup(DSToken_ORIG_STORAGE, #DSToken.owner_stopped) ==Int Junk_7
  andBool #DSToken.balances[Guy] =/=Int #DSToken.supply
  andBool #DSToken.balances[Guy] =/=Int #DSToken.owner_stopped
  andBool #DSToken.supply =/=Int #DSToken.owner_stopped 

// DSToken_mint
claim [DSToken.mint.pass]:
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
        <callData> #abiCallData("mint", #address(ABI_dst), #uint256(ABI_wad)) ++ CD => ?_ </callData>
        <callValue> VCallValue </callValue>
        <wordStack> .WordStack => ?_ </wordStack>
        <localMem> .Memory => ?_ </localMem>
        <pc> 0 => ?_ </pc>
        <gas> #gas(VGas) => #gas ( ( ( ( VGas -Int Csstore( ISTANBUL , ( Gem_d +Int ABI_wad ) , Gem_d , Junk_0 ) ) -Int Csstore( ISTANBUL , ( Supply +Int ABI_wad ) , Supply , Junk_1 ) ) +Int -5628 ) ) </gas>
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
          <storage> ACCT_ID_STORAGE => ACCT_ID_STORAGE [ #DSToken.balances[ABI_dst] <- Gem_d  +Int ABI_wad ] [ #DSToken.supply <- Supply +Int ABI_wad ] </storage>
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

  andBool (#rangeAddress(ABI_dst)
  andBool (#rangeUInt(256, ABI_wad)
  andBool (#rangeAddress(Owner)
  andBool (#rangeUInt(256, Gem_d)
  andBool (#rangeUInt(256, Supply)
  andBool (#rangeBool(Stopped)
  andBool ((#sizeByteArray(CD) <=Int 1250000000)
  andBool ((#notPrecompileAddress(Owner))
  andBool ((Owner ==Int CALLER_ID)
  andBool ((ACCT_ID =/=Int CALLER_ID)
  andBool (#rangeUInt(256, Junk_0)
  andBool (#rangeUInt(256, Junk_1)
  andBool (#rangeUInt(256, Junk_2)
  andBool (((#rangeUInt(256, Gem_d +Int ABI_wad)))
  andBool (((#rangeUInt(256, Supply +Int ABI_wad)))
  andBool ((Stopped ==Int 0)
  andBool ((VCallValue ==Int 0))))))))))))))))))

  andBool #lookup(ACCT_ID_STORAGE, #DSToken.balances[ABI_dst]) ==Int Gem_d
  andBool #lookup(ACCT_ID_STORAGE, #DSToken.supply) ==Int Supply
  andBool #lookup(ACCT_ID_STORAGE, #DSToken.owner_stopped) ==Int #WordPackAddrUInt8(Owner, Stopped)
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #DSToken.balances[ABI_dst]) ==Int Junk_0
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #DSToken.supply) ==Int Junk_1
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #DSToken.owner_stopped) ==Int Junk_2
  andBool #DSToken.balances[ABI_dst] =/=Int #DSToken.supply
  andBool #DSToken.balances[ABI_dst] =/=Int #DSToken.owner_stopped
  andBool #DSToken.supply =/=Int #DSToken.owner_stopped 
[trusted, matching(infGas)]


endmodule
