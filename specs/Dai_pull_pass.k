requires "verification.k"

module 9D0034A6C6FC2575ECD32D814E464677895A72B881E5A008341F039432BC88CC
  imports VERIFICATION

// Dai_pull
claim [Dai.pull.pass]:
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
        <callData> #abiCallData("pull", #address(ABI_src), #uint256(ABI_wad)) ++ CD => ?_ </callData>
        <callValue> VCallValue </callValue>
        <wordStack> .WordStack => ?_ </wordStack>
        <localMem> .Memory => ?_ </localMem>
        <pc> 0 => ?_ </pc>
        <gas> #gas(VGas) => #if ( #lookup( ACCT_ID_STORAGE , hash2 ( CALLER_ID , hash2 ( ABI_src , 3 ) ) ) ==Int maxUInt256 andBool ( Allowed ==Int maxUInt256 andBool ( ABI_wad <=Int maxUInt256 orBool ABI_src ==Int CALLER_ID ) ) )
          #then   #gas ( ( ( ( VGas -Int Csstore( ISTANBUL , ( SrcBal -Int ABI_wad ) , SrcBal , Junk_1 ) ) -Int Csstore( ISTANBUL , ( DstBal +Int ABI_wad ) , DstBal , Junk_2 ) ) +Int -6404 ) )
          #else   #gas ( ( ( ( ( VGas -Int Csstore( ISTANBUL , ( Allowed -Int ABI_wad ) , Allowed , Junk_0 ) ) -Int Csstore( ISTANBUL , ( SrcBal -Int ABI_wad ) , SrcBal , Junk_1 ) ) -Int Csstore( ISTANBUL , ( DstBal +Int ABI_wad ) , DstBal , Junk_2 ) ) +Int -8661 ) )
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
          <code> Dai_bin_runtime </code>
          <storage> ACCT_ID_STORAGE => ACCT_ID_STORAGE [ #Dai.allowance[ABI_src][CALLER_ID] <- #if (ABI_src ==Int CALLER_ID orBool Allowed ==Int maxUInt256) #then Allowed #else Allowed -Int ABI_wad #fi ] [ #Dai.balanceOf[ABI_src] <- SrcBal  -Int ABI_wad ] [ #Dai.balanceOf[CALLER_ID] <- DstBal  +Int ABI_wad ] </storage>
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

  andBool (#rangeAddress(ABI_src)
  andBool (#rangeUInt(256, ABI_wad)
  andBool (#rangeUInt(256, SrcBal)
  andBool (#rangeUInt(256, DstBal)
  andBool (#rangeUInt(256, Allowed)
  andBool ((#sizeByteArray(CD) <=Int 1250000000)
  andBool ((ABI_src =/=Int CALLER_ID)
  andBool (#rangeUInt(256, Junk_0)
  andBool (#rangeUInt(256, Junk_1)
  andBool (#rangeUInt(256, Junk_2)
  andBool (((#rangeUInt(256, SrcBal -Int ABI_wad)))
  andBool (((#rangeUInt(256, DstBal +Int ABI_wad)))
  andBool ((ABI_wad <=Int Allowed orBool ABI_src ==Int CALLER_ID)
  andBool ((VCallValue ==Int 0)))))))))))))))

  andBool #lookup(ACCT_ID_STORAGE, #Dai.allowance[ABI_src][CALLER_ID]) ==Int Allowed
  andBool #lookup(ACCT_ID_STORAGE, #Dai.balanceOf[ABI_src]) ==Int SrcBal
  andBool #lookup(ACCT_ID_STORAGE, #Dai.balanceOf[CALLER_ID]) ==Int DstBal
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Dai.allowance[ABI_src][CALLER_ID]) ==Int Junk_0
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Dai.balanceOf[ABI_src]) ==Int Junk_1
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Dai.balanceOf[CALLER_ID]) ==Int Junk_2
  andBool #Dai.allowance[ABI_src][CALLER_ID] =/=Int #Dai.balanceOf[ABI_src]
  andBool #Dai.allowance[ABI_src][CALLER_ID] =/=Int #Dai.balanceOf[CALLER_ID]
  andBool #Dai.balanceOf[ABI_src] =/=Int #Dai.balanceOf[CALLER_ID] 

// Dai_transferFrom-diff
claim [Dai.transferFrom-diff.pass]:
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
        <program> Dai_bin_runtime </program>
        <jumpDests> #computeValidJumpDests(Dai_bin_runtime) </jumpDests>
        <id> ACCT_ID </id>
        <caller> CALLER_ID </caller>
        <callData> #abiCallData("transferFrom", #address(ABI_src), #address(ABI_dst), #uint256(ABI_wad)) ++ CD => ?_ </callData>
        <callValue> VCallValue </callValue>
        <wordStack> .WordStack => ?_ </wordStack>
        <localMem> .Memory => ?_ </localMem>
        <pc> 0 => ?_ </pc>
        <gas> #gas(VGas) => #if ( ABI_src ==Int CALLER_ID andBool ( CALLER_ID =/=Int ABI_dst andBool ( hash2 ( CALLER_ID , hash2 ( CALLER_ID , 3 ) ) =/=Int hash2 ( CALLER_ID , 2 ) andBool ( hash2 ( CALLER_ID , hash2 ( CALLER_ID , 3 ) ) =/=Int hash2 ( ABI_dst , 2 ) andBool ( hash2 ( CALLER_ID , 2 ) =/=Int hash2 ( ABI_dst , 2 ) andBool ( #lookup( ACCT_ID_STORAGE , hash2 ( CALLER_ID , hash2 ( CALLER_ID , 3 ) ) ) ==Int Allowed andBool ( #lookup( ACCT_ID_ORIG_STORAGE , hash2 ( CALLER_ID , hash2 ( CALLER_ID , 3 ) ) ) ==Int Junk_0 andBool ( #lookup( ACCT_ID_ORIG_STORAGE , hash2 ( CALLER_ID , 2 ) ) ==Int Junk_1 andBool #lookup( ACCT_ID_STORAGE , hash2 ( CALLER_ID , 2 ) ) ==Int SrcBal ) ) ) ) ) ) ) )
          #then   #gas ( ( ( ( VGas -Int Csstore( ISTANBUL , ( SrcBal -Int ABI_wad ) , SrcBal , Junk_1 ) ) -Int Csstore( ISTANBUL , ( DstBal +Int ABI_wad ) , DstBal , Junk_2 ) ) +Int -5425 ) )
          #else   #if ( #lookup( ACCT_ID_STORAGE , hash2 ( CALLER_ID , hash2 ( ABI_src , 3 ) ) ) ==Int maxUInt256 andBool ( Allowed ==Int maxUInt256 andBool ( ABI_wad <=Int maxUInt256 orBool ABI_src ==Int CALLER_ID ) ) )
            #then   #gas ( ( ( ( VGas -Int Csstore( ISTANBUL , ( SrcBal -Int ABI_wad ) , SrcBal , Junk_1 ) ) -Int Csstore( ISTANBUL , ( DstBal +Int ABI_wad ) , DstBal , Junk_2 ) ) +Int -6418 ) )
            #else   #gas ( ( ( ( ( VGas -Int Csstore( ISTANBUL , ( Allowed -Int ABI_wad ) , Allowed , Junk_0 ) ) -Int Csstore( ISTANBUL , ( SrcBal -Int ABI_wad ) , SrcBal , Junk_1 ) ) -Int Csstore( ISTANBUL , ( DstBal +Int ABI_wad ) , DstBal , Junk_2 ) ) +Int -8675 ) )
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
          <code> Dai_bin_runtime </code>
          <storage> ACCT_ID_STORAGE => ACCT_ID_STORAGE [ #Dai.allowance[ABI_src][CALLER_ID] <- #if (ABI_src ==Int CALLER_ID orBool Allowed ==Int maxUInt256) #then Allowed #else Allowed -Int ABI_wad #fi ] [ #Dai.balanceOf[ABI_src] <- SrcBal  -Int ABI_wad ] [ #Dai.balanceOf[ABI_dst] <- DstBal  +Int ABI_wad ] </storage>
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

  andBool (#rangeAddress(ABI_src)
  andBool (#rangeAddress(ABI_dst)
  andBool (#rangeUInt(256, ABI_wad)
  andBool (#rangeUInt(256, SrcBal)
  andBool (#rangeUInt(256, DstBal)
  andBool (#rangeUInt(256, Allowed)
  andBool ((#sizeByteArray(CD) <=Int 1250000000)
  andBool ((ABI_src =/=Int ABI_dst)
  andBool (#rangeUInt(256, Junk_0)
  andBool (#rangeUInt(256, Junk_1)
  andBool (#rangeUInt(256, Junk_2)
  andBool (((#rangeUInt(256, SrcBal -Int ABI_wad)))
  andBool (((#rangeUInt(256, DstBal +Int ABI_wad)))
  andBool ((ABI_wad <=Int Allowed orBool ABI_src ==Int CALLER_ID)
  andBool ((VCallValue ==Int 0))))))))))))))))

  andBool #lookup(ACCT_ID_STORAGE, #Dai.allowance[ABI_src][CALLER_ID]) ==Int Allowed
  andBool #lookup(ACCT_ID_STORAGE, #Dai.balanceOf[ABI_src]) ==Int SrcBal
  andBool #lookup(ACCT_ID_STORAGE, #Dai.balanceOf[ABI_dst]) ==Int DstBal
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Dai.allowance[ABI_src][CALLER_ID]) ==Int Junk_0
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Dai.balanceOf[ABI_src]) ==Int Junk_1
  andBool #lookup(ACCT_ID_ORIG_STORAGE, #Dai.balanceOf[ABI_dst]) ==Int Junk_2
  andBool #Dai.allowance[ABI_src][CALLER_ID] =/=Int #Dai.balanceOf[ABI_src]
  andBool #Dai.allowance[ABI_src][CALLER_ID] =/=Int #Dai.balanceOf[ABI_dst]
  andBool #Dai.balanceOf[ABI_src] =/=Int #Dai.balanceOf[ABI_dst] 
[trusted, matching(infGas)]


endmodule
