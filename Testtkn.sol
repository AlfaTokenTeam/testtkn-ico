pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Testtkn is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Testtkn(address _owner)  UpgradeableToken(_owner) {
    name = "Testtkn";
    symbol = "tkn";
    totalSupply = 100000000000000000000000000;
    decimals = 18;

    balances[_owner] = totalSupply;
  }
}